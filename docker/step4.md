
## Compile with the Examples

You can now compile BOUT++ in the container, first change to the repository directory using:

`cd BOUT-dev`{{execute}}

For this tutorial we will build with the examples on to allow us to test:

`cmake . -B build -DCMAKE_CXX_FLAGS=-std=c++14 -DBOUT_DOWNLOAD_NETCDF_CXX4=ON -DBOUT_BUILD_EXAMPLES=on`{{execute}}

This will run cmake and create the configuration and build processes.

Now we will build the BOUT++ libraries using

`cmake --build build`{{execute}}

At this point, it may be useful to listen to a few words from users of BOUT++ and what they are doing with it - add video links here.
