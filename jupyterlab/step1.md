# Installing Pre-Requisites

This should enable you to install the pre-requisites in a basic Linux container.

## What to Install

You will need to install the following tools and libraries:

1. Git
1. GNU Compiler Toolset
1. OpenMPI
1. FFTW3
1. NetCDF
1. LAPack
1. CMake

These tools will allow the compilation and running of BOUT++ simulation.

## The Commands

While the tools have nice names and seem singular, the installation names of them can sometimes seem very weird.

### Update the Container APT Repository

Run the following command in your terminal:

```console
sudo apt-get update
```

This will update the repository manager to the latest information available to it from the main repository locations.

### Installing the Compilers, Source Control and Build System

Run the following command in your terminal:

```console
sudo apt-get -y install build-essential git nano cmake
```

This will install the GNU Compiler set, Git source control tools, CMake build system and Nano as an editor.

### Installing the OpenMPI

Run the following command in your terminal:

```console
DEBIAN_FRONTEND="noninteractive" TZ="Europe/London" sudo apt-get -y --no-install-recommends install libopenmpi-dev openmpi-bin openmpi-common
```

This will install the OpenMPI libraries and tools required by BOUT++.

### Installing the FFTW3, NetCDF and LAPack

Run the following command in your terminal:

```console
sudo apt-get -y install libfftw3-dev libnetcdf-dev libnetcdf-cxx-legacy-dev netcdf-bin liblapack-dev
```

This will install the libraries which will be used by BOUT++.

## Next Step

[Compiling BOUT++](step2.md)

## Previous Step

[Introduction]{intro.md}
