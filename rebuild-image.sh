#!/bin/bash

docker build -t furensic-homepage .
docker run -p 3000:3000 -v $(pwd):/usr/src/app furensic-homepage