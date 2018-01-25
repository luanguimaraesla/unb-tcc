FROM debian:stretch

RUN apt-get update && \
    apt-get install -y \
    pandoc \
    texlive-latex-base \
    texlive-fonts-recommended \
    mutt

WORKDIR /code
COPY . /code

CMD pandoc -s -o fencer-doc.pdf src/**/*.md;
