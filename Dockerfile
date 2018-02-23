FROM debian:stretch

ENV PANDOCKER_PATH /code

RUN apt-get update && \
    apt-get install -y \
    pandoc \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-extra \
    mutt \
    msmtp \
    openssl \
    ca-certificates

WORKDIR /code
COPY . /code

CMD ./compile.sh
