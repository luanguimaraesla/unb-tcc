FROM debian:stretch

ENV FENCER_PATH /code

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

CMD pandoc -s -o fencer-doc.pdf src/**/*.md;
