[![Build Status](https://travis-ci.org/polyaxon/polyaxon-docker.svg?branch=master)](https://travis-ci.org/polyaxon/polyaxon-docker)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg)](https://gitter.im/polyaxon/polyaxon)

# Polyaxon-Docker

Dockerfiles and configuration scripts for the Docker Hub Official polyaxon images.

The files are organized in the following way: `python-version/tf-version/env[cpu,gpu]/`.

## Scripts

 * `build.sh py-version tf-version cpu|gpu` : builds all necessary images. 
 e.g. `build.sh 2 121 cpu` will build `polyaxon/base:2`, `polyaxon/base:api-2`, `polyaxon/polyaxon:cpu-2-121`, and `polyaxon/polyaxon:api-cpu-2-121`   
 * `push.sh py-version tf-version cpu|gpu` : pushes all the created images form build.sh step.


## License

[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpolyaxon%2Fpolyaxon-docker.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fpolyaxon%2Fpolyaxon-docker?ref=badge_large)
