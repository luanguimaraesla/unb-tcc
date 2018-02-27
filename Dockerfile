FROM debian:buster-slim

ENV PANDOCKER_PATH /code

RUN apt-get update && \
    apt-get install -y \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-extra \
    mutt \
    msmtp \
    openssl \
    ca-certificates

# Include here the latex language packages
RUN apt-get install -y texlive-lang-portuguese

# Pandoc dependecies
RUN apt-get install -y haskell-platform && \
    cabal update && \
    cabal install pandoc --enable-tests && \
    cabal install pandoc-citeproc && \
    cabal install pandoc-crossref

WORKDIR /code
COPY . /code

CMD ./compile.sh
