# Docker DevEnv

## Aim

Create a Docker Development Environment Base Image. Everything required to development for a particular language should live inside a container with volumes mapped to the host OS for persistence. 

## Packages currently in base image
* curl 
* wget
* htop
* git

## Run
When starting container, map a directory to persist work and ssh keys for source control.

```
ben@TheNewPretty:~$ docker run --rm -ti -v /Users/ben.hall/SourceCode/:/home/ben/SourceCode -v ~/.ssh/:/home/ben/.ssh benhall/base-devenv
ben@72a4785f0e70:~$ ls -la
  total 8
  drwxr-xr-x 4 root root  4096 Jan 14 10:50 .
  drwxr-xr-x 3 root root  4096 Jan 14 10:50 ..
  drwx------ 1 ben  staff  272 Dec  8 11:42 .ssh
  drwxr-xr-x 1 ben  staff  918 Jan 14 10:30 SourceCode
```
