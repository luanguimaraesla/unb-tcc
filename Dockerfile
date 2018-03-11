FROM debian:buster-slim

ENV PANDOCKER_PATH /code

RUN apt-get update && \
    apt-get install -y \
    texlive-latex-base \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-font-utils \
    mutt \
    msmtp \
    openssl \
    ca-certificates

# Pandoc dependecies
RUN apt-get install -y haskell-platform && \
    cabal update && \
    cabal install pandoc --enable-tests && \
    cabal install pandoc-citeproc && \
    cabal install pandoc-crossref

# Include here the latex language packages,
# it is configured to ABNTEX2 (Brazilian)
RUN apt-get install -y \
    texlive-publishers \
    texlive-lang-portuguese && \
    apt-get clean -y


WORKDIR /code
COPY . /code

CMD ./compile.sh
