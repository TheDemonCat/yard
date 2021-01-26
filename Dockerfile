ARG VERSION=latest
FROM demoncat/oscript:$VERSION

USER root

RUN opm install yard

USER user

ENTRYPOINT [ "yard" ]
CMD [ "--help" ]