# Oregon Summer School

This is a small environment for downloading all of the various lectures and course notes for the Oregon Summer School in Programming Languages. It covers the years 2012-2014.

This uses a Docker container to best replicate the environment in which the tool seems to work. It assumes that you have Docker already installed on your machine.

## Usage

In order to download the lectures and associated notes, you will need to run:

```
$ ./devenv
```

That should create the Dockerfile, create the Docker image necessary to download the lectures, and start a container inside the current directory (which is assumed to live under your home directory.

Next, while in the container, simply run:

```
$ ./bin/download-all
```

That will download all of the lectures and notes. You can also use `bin/genlectures` (which responds to a `-h` flag) to generate lectures for individual courses and not all courses.

## Notes

Needless to say, Oregon owns the copyright on most of these files (and some appear to have gone missing from the Oregon servers), so don't pass around the output of this tool -- and by using it, you completely absolve me of any responsibility.
