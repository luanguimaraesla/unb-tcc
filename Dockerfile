FROM debian:stretch

ENV PANDOCKER_PATH /code

RUN apt-get update && \
    apt-get install -y \
    pandoc \
    texlive-latex-base \
    texlive-fonts-recommended \
    mutt \
    msmtp \
    openssl \
    ca-certificates

WORKDIR /code
COPY . /code

CMD pandoc -s -o doc.pdf `sed 's/$/.md/g;s/^/src\//g' src/sections.conf | xargs`;
