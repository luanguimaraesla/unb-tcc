FROM debian:stretch

COPY . /code
WORKDIR /code
RUN apt-get update && \
    apt-get install -y pandoc && \
    apt-get install -y texlive-latex-base && \
    apt-get install -y texlive-fonts-recommended

CMD pandoc -s -o fencer-doc.pdf src/**/*.md;
