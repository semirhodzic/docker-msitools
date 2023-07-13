# docker-msitools  :whale:

Welcome to the docker-msitools repository! :wave: This place hosts the Docker configuration files needed to create a container that's been streamlined for generating Windows MSI packages. It works with any system that supports Docker, including macOS and Linux. 

## Docker Hub

With Docker installed, you can start by pulling the Docker image.

``` sh
docker pull hodzicsemir/docker-msitools:latest
```

## Creating the MSI Package

``` sh
docker run --rm -e INPUT_FILE=Product.wxs -e OUTPUT_FILE=output.msi -v "$(pwd)":/app hodzicsemir/docker-msitools
```

## Demo

A small sample configuration is provided in [`./example`](./example). To build
the `sample.msi`, run the following commands:

``` sh
cd example
docker run --rm -e INPUT_FILE=Product.wxs -e OUTPUT_FILE=sample.msi -v "$(pwd)":/app hodzicsemir/docker-msitools
```

The `sample.msi` will now be in the `example` directory.

## Notes

*docker-msitools* is using [msitools](https://gitlab.gnome.org/GNOME/msitools). 

*msitools* is using Wixl which lacks many features compared to WiX.