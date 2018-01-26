#! /bin/bash

old_path=`pwd`
cd $FENCER_PATH/mail

sed -i "s/^user/user $SECRET_MAIL_USER/g" .msmtprc
sed -i "s/^from/from $SECRET_MAIL_USER/g" .msmtprc
cp .msmtprc ~/
cp .muttrc ~/
chmod 600 ~/.msmtprc

CC_ADDRESSES=$(sed "s/^/-c /g" send_to.txt | xargs)
SUBJECT=$(sed "s/^/-s /g" subject.txt)
ATTACHMENTS=$(sed "s/^/-a /g" attachments.txt | xargs)

echo "" | mutt $SUBJECT $CC_ADDRESSES $ATTACHMENTS -i content.txt $SECRET_MAIL_USER

cd $old_path
