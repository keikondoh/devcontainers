FROM mcr.microsoft.com/devcontainers/java:1-17

RUN apt-get update && apt-get install -y libxext6 libxrender1 libxtst6 libxi6 fontconfig
# RUN apt-get install -y fontconfig
RUN apt-get install -y fonts-ipafont
RUN apt-get install -y bat
RUN ln -s /usr/bin/batcat /usr/local/bin/bat