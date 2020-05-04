FROM gitpod/workspace-full

USER gitpod

COPY . /tmp

WORKDIR /tmp

RUN ./deps.sh
