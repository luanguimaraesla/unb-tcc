#! /bin/bash

sed -i "s/^user/user $SECRET_USER_MAIL/g" mail/.msmtprc
sed -i "s/^from/from $SECRET_USER_MAIL/g" mail/.msmtprc
cp mail/.msmtprc ~/
cp mail/.muttrc ~/
chmod 600 ~/.msmtprc

CC_ADDRESSES=$(sed "s/^/-c /g" mail/send_to.txt | xargs)
SUBJECT=$(sed "s/^/-s /g" mail/subject.txt)
ATTACHMENTS=$(sed "s/^/-a /g" mail/attachments.txt | xargs)

mutt $SUBJECT $CC_ADDRESSES $ATTACHMENTS -i mail/content $SECRET_USER_MAIL
