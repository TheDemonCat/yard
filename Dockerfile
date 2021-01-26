ARG VERSION=latest
FROM demoncat/oscript:$VERSION

USER root

RUN apt-get update && apt-get install -y p7zip-full \
  && rm -rf /var/lib/apt/lists/*
  
COPY . /tmp/yard

RUN   cd /tmp/yard  \
    && opm install yard \
    cd ../ \
    rm -rf /tmp/yard

USER user

ENTRYPOINT [ "yard" ]
CMD [ "--help" ]