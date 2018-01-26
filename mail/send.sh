#! /bin/bash

old_path=`pwd`
cd $FENCER_PATH/mail

if [ -f ~/.muttrc ]; then
  mv {~/,/tmp/}.muttrc
fi
cp .muttrc ~/

DELETE_MSMTPRC=false
if [ ! -f ~/.msmtprc ]; then
  cp .msmtprc ~/
  sed -i "s/^user$/user $SECRET_MAIL_USER/g" ~/.msmtprc
  sed -i "s/^from$/from $SECRET_MAIL_USER/g" ~/.msmtprc
  chmod 600 ~/.msmtprc
  DELETE_MSMTPRC=true
fi

CC_ADDRESSES=$(sed "s/^/-c /g" send_to.txt | xargs)
SUBJECT=$(cat subject.txt)
ATTACHMENTS=$(sed "s/^/-a /g" attachments.txt | xargs)

echo "" | mutt -i content.txt -s "$SUBJECT" $CC_ADDRESSES $ATTACHMENTS -- $SECRET_MAIL_USER

if [ -f /tmp/.muttrc ]; then
  mv {/tmp/,~/}.muttrc
fi

if $DELETE_MSMTPRC; then
  rm -rf ~/.msmtprc
fi

cd $old_path
