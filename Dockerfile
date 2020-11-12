FROM alpine:3

RUN apk --no-cache add wget openjdk11

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

WORKDIR /opt
ENV STRUCTURIZR_CLI_VERSION=1.4.5
ENV STRUCTURIZR_CLI_URL="https://github.com/structurizr/cli/releases/download/v$STRUCTURIZR_CLI_VERSION/structurizr-cli-$STRUCTURIZR_CLI_VERSION.zip"
RUN wget -qO - $STRUCTURIZR_CLI_URL | jar xvf /dev/stdin
RUN mv "structurizr-cli-$STRUCTURIZR_CLI_VERSION.jar" structurizr-cli.jar

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
