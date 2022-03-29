#!/usr/bin/env bash
if [ "$#" -ne 1 ]; then
	echo "Usage: watch.sh <name of file>"
	exit
fi
docker run --user $(id -u):$(id -g) --rm -it -v "$PWD":/documents/ asciidoctor/docker-asciidoctor sh -c "while true; do inotifywait -qe modify "$1"; asciidoctor "$1"; done"
