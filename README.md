# Oregon Summer School (2012-2015)

This is a small environment for downloading all of the various lectures and course notes for the Oregon Summer School in Programming Languages. It covers the years 2012-2015. In addition to downloading the video lectures, it will install ffmpeg inside a Docker container and merge the individual videos from the Oregon State website into full lectures. It will download any pdf files linked to in the original download page and create script files for opening your browser to those pages.

Please note that this tool uses a Docker container to best replicate the environment in which the tool seems to work. It assumes that you have Docker already installed on your machine and that you're working in a UNIX-like environment, which defines things like the environment variables `$HOME`, `$USERNAME`, and `$SHELL`, as well as the command line tool `id`.

## Usage

In order to download the lectures and associated notes, you will need to run:

```
$ ./devenv
```

That should create the Dockerfile, create the Docker image necessary to download the lectures, and start a container inside the current directory (which is assumed to live somewhere under your home directory, so as to mount it properly for your user inside the container).

Running the above should put you inside a shell inside the container. Next, now that you're in the container, simply run:

```
$ ./bin/download-all
```

That will download all of the lectures and notes. You can also use `./bin/genlectures` (which is the actual tool) to generate lectures for individual years and individual courses. Please keep in mind that Oregon seems to rate-limit you to 2 HTTP connections at a time, and these files are huge (gigabytes when this tool stitches them together), so the download can take literally days....

## Notes

Needless to say, Oregon owns the copyright on most of these files (and some appear to have gone missing from the Oregon servers), so don't pass around the output of this tool unless you get their permission first, at least out of courtesy. I'm doing this to make learning about programming languages easier for everybody, which is what I think they're trying to do, too.
