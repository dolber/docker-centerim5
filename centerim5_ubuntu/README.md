# centerim5 automated builds

### Supported tags and respective `Dockerfile` links:

* alpine / latest [Dockerfile](https://github.com/dolber/docker-centerim5/blob/master/centerim5_alpine/Dockerfile)
* debian - [Dockerfile](https://github.com/dolber/docker-centerim5/blob/master/centerim5_debian/Dockerfile)
* ubuntu - [Dockerfile](https://github.com/dolber/docker-centerim5/blob/master/centerim5_ubuntu/Dockerfile)

### Getting started

Need to create config folder 

`mkdir -p $HOME/.centerim5`

and run docker images via command

`docker run --rm -it -v $HOME/.centerim5:/root/.centerim5 dolber/centerim5:ubuntu`

