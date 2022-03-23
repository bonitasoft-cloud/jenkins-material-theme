
# Build with docker

To generate a Jenkins package of the theme, please follow the procedure below

## Start node docker image

```sh
docker run --rm -v $(pwd):/app --workdir /app -it node bash
```

## Install openjdk11

```sh
apt update && apt install -y openjdk-11-jdk
```

## Install grunt

```sh
npm install -g grunt-cli
```

## Download maven
```sh
wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
tar -xzvf apache-maven-3.8.4-bin.tar.gz
```

## Build

```sh
export PATH=$PATH:/app/apache-maven-3.8.4/bin/
./build_plugin.sh