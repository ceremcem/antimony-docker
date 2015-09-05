# Antimony docker

This project allows you to run
[Antimony (0.9.0c)](https://github.com/mkeeter/antimony) inside a Docker container.
See chapter `Details` for more information how everything is set up.

It's a quick way to get up and running with Antimony without having to install
a lot of libraries on your main host.

## Use it

```bash
git clone https://github.com/rzetterberg/antimony-docker
cd antimony-docker

# Builds the container and the project
./build.sh

# Starts the container and antimony within
./run.sh
```

## Details

This is a really simple project that has two scripts, one for setting up a
Docker container and one for running the app inside the Docker container.

How the container is built is configured in the `Dockerfile` which is based
on the official `Debian Jessie` image.

(More details on how everything works under the hood will come.)
