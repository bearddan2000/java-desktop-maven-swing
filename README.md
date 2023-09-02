# java-desktop-maven-swing

## Description
This is a POC project to demonstrate a
java swing application running inside a
docker container. Built with multistage
docker file with maven.

## Tech stack
- mave
- java
  - jre 11
  - swing

## Docker stack
- alpine:edge
- maven:3-openjdk-17

## To run
`sudo ./install.sh -u`

## To see help
`sudo ./install.sh -h`
