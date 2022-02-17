# Compiling BOUT++

Now, you have the necessary libraries and tools, the process of building the BOUT++ software can begin.

## Clone Source Repository

Switch to a directory that you can clone repositories to. In the terminal, the default home directory will be sufficient.

To switch to the home directory:

`cd`

Clone the following repository with this command:

`git clone https://github.com/boutproject/BOUT-dev.git`

This will clone the BOUT-dev source repository to the BOUT-dev directory.

Running `ls` should return something like:

```bash
archer2 BOUT-dev cirrus  docker  index.md  jupyterinstall.jupyterlab-workspace  jupyterlab  work
```

### Working Versions

> Put note here about current working and compiling versions.

It may be useful to experiment with the last known working release.

At time of production of this tutorial - v4.4.0

To switch to this version, switch to the repo directory: `cd BOUT-dev`

Checkout the tag for v4.4.0

`git checkout tags/v4.4.0`

You can try with any version in the repository but unreleased/development versions may have issues during compilation or have feature changes.

## Compile with the Examples

You can now compile BOUT++ in the JupyterLab, ensure you are in the repository directory using:

`cd ~/BOUT-dev`

For this tutorial we will build with the examples on to allow us to test:

`cmake . -B build -DCMAKE_CXX_FLAGS=-std=c++14 -DBOUT_DOWNLOAD_NETCDF_CXX4=ON -DBOUT_BUILD_EXAMPLES=on`{{execute}}

This will run Cmake and create the configuration and build processes.

After the prior command completes, the BOUT++ libraries can be created.

We will build the BOUT++ libraries using in the terminal:

`cmake --build build`

At this point, it may be useful to listen to a few words from users of BOUT++ and what they are doing with it - add video links here.

## Next Step

[Running Examples](step3.md)

## Previous Step

[Installing Pre-requisites](step1.md)
