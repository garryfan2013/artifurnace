Artifurnace
===========

Artifurnace is a project to make building and use of the Apache Greenplum Database codebase easier

###Motivation###

The goal of the project is to create daily packages of the Apache Greenplum Database for use on multiple platforms in tarball, packages and as Docker containers. A secondary goal is to lauch a container and run a test suite against the compiled code.

###Changelog###

20160104 Adding ubuntu 1404 (LTS) and 1510 docker builds. Happy New Year

###Current State###

Currently work is being done via CentOS Docker containers executing inside of Jenkins and will expand to other platforms ( Ubuntu, SUSE ) once satisfaction is achieved with the current build environment.

To run a current build you will need a Jenkins environment that can use Docker containers.

Create a new Freestyle project and add the artifurnce git repo.

The Build step should have a single Execute shell step with the following two commands:

```
cd ${WORKSPACE}/centos6/
./run_build_container.sh
```

The build will then execute a Docker container to build and package the GPDB binaries. 

If the build process finishes it will drop a tarball and rpm in ${WORKSPACE}/centos6/output/ directory

###Notes###

Current builds are being rolled out to http://gpdbbins.s3-website-us-east-1.amazonaws.com/ on a daily+ basis

###Contributors###

Scott Kahler 
  - email: scott.kahler@gmail.com 
  - twitter: boogabee

###License###

MIT

### How you can help ###

Funds to help maintain infrastructure and bandwith

Artifurnace is also powered by victrolas and board games
 
