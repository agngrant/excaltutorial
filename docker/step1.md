This is used to define the steps used to create a docker image which can be run as a container.

## Create the Dockerfile

`touch Dockerfile`{{execute}}

## Open the Dockerfile in an Editor

Open the Dockerfile in an editor you are familiar with - this could be Vi or Nano or something else. Shortcuts are provided for Vi and Nano here.

`vi Dockerfile`{{execute}}

`nano Dockerfile`{{execute}}

## Populating the Dockerfile

The example will use Ubuntu 20.04 as a base Linux image here - however you can modify these to what ever distribution you are comfortable with - however you should note that this may change the libraries that you need to install.

Copy or type the following into the blank Dockerfile in the editor.

```
FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install git nano
RUN DEBIAN_FRONTEND="noninteractive" TZ="Europe/London" apt-get -y --no-install-recommends install libopenmpi-dev openmpi-bin openmpi-common
RUN apt-get -y install libfftw3-dev libnetcdf-dev libnetcdf-cxx-legacy-dev netcdf-bin
RUN apt-get -y install liblapack-dev
RUN apt-get -y install cmake
```{{copy}}

Save your Dockerfile now and exit the editor.

You are ready to move on.

## Notes

If you want to check at any point that your files are present use the `ls` command.

`ls`{{execute}}

It should give output similar to this

```bash
$ ls
Dockerfile
$ 
```
