FROM jupyter/minimal-notebook:latest
# Replace `latest` with an image tag from to ensure reproducible builds:
# https://hub.docker.com/r/jupyter/minimal-notebook/tags/
# Inspect the Dockerfile at:
# https://github.com/jupyter/docker-stacks/tree/HEAD/minimal-notebook/Dockerfile

ADD jupyterlab $HOME/jupyterlab
ADD docker $HOME/docker
ADD archer2 $HOME/archer2
ADD cirrus $HOME/cirrus
ADD index.md $HOME/index.md
ADD jupyterinstall.jupyterlab-workspace $HOME/jupyterinstall.jupyterlab-workspace
USER root
#COPY excalibur.jupyterlab-workspace $HOME/.jupyter/lab/workspaces/excalibur-884c.jupyterlab-workspace
# RUN apt-get update
# RUN apt-get -y install ca-certificates curl gnupg lsb-release
# RUN apt-get -y install build-essential
# RUN apt-get -y install git nano
# RUN DEBIAN_FRONTEND="noninteractive" TZ="Europe/London" apt-get -y --no-install-recommends install libopenmpi-dev openmpi-bin openmpi-common
# RUN apt-get -y install libfftw3-dev libnetcdf-dev libnetcdf-cxx-legacy-dev netcdf-bin
# RUN apt-get -y install liblapack-dev
# RUN apt-get -y install cmake
RUN sudo chown -R $NB_UID:$NB_GID /home/$NB_USER/
RUN usermod -aG sudo $NB_USER
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# if the parent image will not launch a jupyterhub singleuser server.
# The JupyterHub "Docker stacks" do not need to be overridden.
# Set either here or in `singleuser.cmd` in your values.yaml
# CMD ["jupyterhub-singleuser"]
