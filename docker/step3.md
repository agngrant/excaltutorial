To run the image in a container for compiling the BOUT++, we will first need to clone the git repository for BOUT++.

## Clone Repository

Switch to a directory that you can clone repositories to. In the terminal to the right, the default home directory will be sufficient.

`cd`{{execute}}

Clone the following repository with this command:

`git clone https://github.com/boutproject/BOUT-dev.git`{{execute}}

This should clone the BOUT-dev repository to the BOUT-dev directory.

Running `ls`{{execute}} should return something like:

```bash
BOUT-dev
Dockerfile
```

### Working Versions

Put note here about current working and compiling versions.

It may be useful to run the last known working release.

At time of production - v4.4.0

To do this, change to the repo directory: `cd BOUT-dev`{{execute}}

Checkout the tag for v4.4.0

`git checkout tags/v4.4.0`{{execute}}

You can try with any version in the repository but unreleased/development versions may have issues during compilation or have feature changes.

## Running a Container based on the Image

We will create and run a container based on the `bout` image, we created in the last lesson step:

`docker run -it -v "/root/BOUT-dev:/root/BOUT-dev" bout:latest`{{execute}}

### Gotcha

If you are running this on your own system, then you will need to change /root to the path of the directory you cloned the repository to.

## Check its worked

You should now be in a terminal running in the container you just started.

To change to the root home directory in the container, run `cd`{{execute}}

Running `ls`{{execute}} should show something similar to the following:

```bash
bout@cd6d3efb5167:~$ ls
BOUT-dev
bout@cd6d3efb5167:~$ 
```
