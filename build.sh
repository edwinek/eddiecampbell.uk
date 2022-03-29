#!/usr/bin/env bash
docker run --user $(id -u):$(id -g) --rm -it -v "$PWD":/documents/ asciidoctor/docker-asciidoctor sh -c "asciidoctor *.adoc"
mv *.html html/
