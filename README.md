# Archlinux with OpenSSH

This build creates an OpenSSH container based on Archlinux.

## Features

 * Easy to use password-less root access :P
 * Fig specification

## Installation
  Download a prebuilt image from the registry.
  ```
  docker pull lucacesari/openssh
  ```

  Build it by hand.
  ```
  docker build -t="lucacesari/openssh" github.com/lucacesari/docker-openssh
  ```

## Usage
  * Start the container.
  ```
  docker run -d -p 22:22 lucacesari/openssh
  ```

  * Connect to the container w/o password.
  ```
  ssh root@localhost -p 22
  ```
