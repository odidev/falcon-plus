#!/bin/sh

apk add --no-cache ca-certificates git bash \
&& make all \
&& make pack4docker \
&& tar -zxf odidev-v*.tar.gz -C build \
&& rm odidev-v*.tar.gz