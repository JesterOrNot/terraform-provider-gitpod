FROM gitpod/workspace-full
ENV TRIGGER_REBUILD=1
USER gitpod
COPY . /tmp
WORKDIR /tmp
RUN ./deps.sh
