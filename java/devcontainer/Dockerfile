# [Choice] Java version: 11, 15
ARG VARIANT="15"

# Powerline
FROM golang:1.17-bullseye as powerline
RUN go install github.com/justjanne/powerline-go@latest

# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.154.0/containers/java/.devcontainer/base.Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/java:0-${VARIANT} as devcontainer

ARG HOME='/home/vscode'

# [Option] Install Maven
ARG INSTALL_MAVEN="false"
ARG MAVEN_VERSION=""
# [Option] Install Gradle
ARG INSTALL_GRADLE="false"
ARG GRADLE_VERSION=""
# [Option] Install Node.js
ARG INSTALL_NODE="true"
ARG NODE_VERSION="lts/*"

RUN if [ "${INSTALL_MAVEN}" = "true" ]; then su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install maven \"${MAVEN_VERSION}\""; fi \
    && if [ "${INSTALL_GRADLE}" = "true" ]; then su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install gradle \"${GRADLE_VERSION}\""; fi

RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "source /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends golang-go
COPY --from=powerline /go/bin/powerline-go $HOME/go/bin/powerline-go

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
