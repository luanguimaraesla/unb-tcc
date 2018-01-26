#! /bin/bash

old_path=`pwd`
cd $FENCER_PATH/mail

cp .muttrc ~/

if [ ! -f ~/.msmtprc ]; then
  sed -i "s/^user$/user $SECRET_MAIL_USER/g" .msmtprc
  sed -i "s/^from$/from $SECRET_MAIL_USER/g" .msmtprc
  cp .msmtprc ~/
  chmod 600 ~/.msmtprc
fi

CC_ADDRESSES=$(sed "s/^/-c /g" send_to.txt | xargs)
SUBJECT=$(sed "s/^/-s /g" subject.txt)
ATTACHMENTS=$(sed "s/^/-a /g" attachments.txt | xargs)

echo "" | mutt -i content.txt $SUBJECT $CC_ADDRESSES $ATTACHMENTS -- $SECRET_MAIL_USER

cd $old_path
