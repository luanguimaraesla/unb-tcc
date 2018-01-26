#! /bin/bash

old_path=`pwd`

echo "[INFO] Enter $FENCER_PATH/mail directory"
cd $FENCER_PATH/mail

echo
echo "[INFO] Configuring mutt"
echo
echo "[INFO] Check ~/.muttrc file exists"

if [ -f ~/.muttrc ]; then
  echo "[INFO] Moving current ~/.muttrc to /tmp"
  mv {~/,/tmp/}.muttrc
else
  echo "[INFO] ~/.muttrc doesn't exist"
fi
echo "[INFO] Creating new ~/.muttrc file" 
cp .muttrc ~/

echo
echo "[INFO] Configuring msmtp"
echo
echo "[INFO] Checking ~/.msmtprc exists"

DELETE_MSMTPRC=false
if [ ! -f ~/.msmtprc ]; then
  echo "[WARNING] ~/.msmtprc doesn't exist"
  echo "[INFO] Creating new ~/.msmtprc file"
  cp .msmtprc ~/
  echo "[INFO] Setting up msmtp user information"
  sed -i "s/^user$/user $SECRET_MAIL_USER/g" ~/.msmtprc
  sed -i "s/^from$/from $SECRET_MAIL_USER/g" ~/.msmtprc
  chmod 600 ~/.msmtprc
  DELETE_MSMTPRC=true
else
  echo "[INFO] ~/.msmtprc already exists"
fi

echo
echo "[INFO] Creating email arguments"
echo

CC_ADDRESSES=$(sed "s/^/-c /g" send_to.txt | xargs)
SUBJECT=$(cat subject.txt)
ATTACHMENTS=$(sed "s/^/-a /g" attachments.txt | xargs)

echo "[MUTT] Send to: $(cat send_to.txt | xargs)"
echo "[MUTT] Subject: $SUBJECT"
echo "[MUTT] Attachments: $(cat attachments.txt | xargs)"
echo
echo "[INFO] Checking attachments"

ALL_ATTACHMENTS=true
while read line; do
  if [ -f $line ]; then
    echo "[SUCCESS] $line exists"
  else
    echo "[ERROR] $line doesn't exist"
    ALL_ATTACHMENTS=false
  fi
done < attachments.txt

if $ALL_ATTACHMENTS; then
  echo "[INFO] All attachments exist"
else
  echo "[RECOVER] Trying to generate the document using pandoc"
  cd ..
  pandoc -s -o fencer-doc.pdf src/**/*.md
  cd mail/

  echo
  echo "[INFO] Checking attachments again"

  ALL_ATTACHMENTS=true
  while read line; do
    if [ -f $line ]; then
      echo "[SUCCESS] $line exists"
    else
      echo "[ERROR] $line doesn't exist"
      ALL_ATTACHMENTS=false
    fi
  done < attachments.txt
fi


if $ALL_ATTACHMENTS; then
  echo "[INFO] Sending email"
  echo "" | mutt -i content.txt -s "$SUBJECT" $CC_ADDRESSES $ATTACHMENTS -- $SECRET_MAIL_USER
else
  echo "[ERROR] Skipping sending emails. Check your attachments generation locally"
fi

if [ -f /tmp/.muttrc ]; then
  echo
  echo "[INFO] Restoring mutt configuration"
  mv {/tmp/,~/}.muttrc
fi

if $DELETE_MSMTPRC; then
  echo "[INFO] Restoring msmtprc configuration"
  rm -rf ~/.msmtprc
fi

echo "[INFO] Change to older dir"
cd $old_path
