Before we can compile the BOUT++ code, we need to create a Docker image which we can run.

## Run Build Command

Run the following command to start the build image process:

`docker build . -t bout`{{execute}}

The process for the build will take anywhere from 3 to 20 minutes depending on network conditions.

## Check Image registered with Docker

Check your image has been created and tagged with the tag bout.

`docker images`{{execute}}

This should display an output with your image contained in a list similar to this:

```bash
$ docker images
REPOSITORY         TAG       IMAGE ID       CREATED              SIZE
bout               latest    98804a227678   About a minute ago   688MB
ubuntu             20.04     d13c942271d6   6 days ago           72.8MB
redis              latest    b8477f2e393b   3 months ago         113MB
mongo              latest    c1a14d3979c5   3 months ago         691MB
mariadb            10        b7220a722ce2   3 months ago         409MB
mariadb            latest    b7220a722ce2   3 months ago         409MB
ubuntu             latest    597ce1600cf4   3 months ago         72.8MB
postgres           12        fe603fe275ba   3 months ago         371MB
postgres           latest    6ce504119cc8   3 months ago         374MB
mysql              8         2fe463762680   3 months ago         514MB
mysql              latest    2fe463762680   3 months ago         514MB
alpine             latest    14119a10abf4   4 months ago         5.59MB
weaveworks/scope   1.11.4    a082d48f0b39   2 years ago          78.5MB
```

Now that you have built the image - it is time to move on to running the image.
