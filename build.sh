#!/usr/bin/env bash
pandoc --metadata pagetitle="Eddie Campbell" --standalone index.md -o html/index.html
pandoc --metadata pagetitle="CV" --standalone cv.md -o html/cv.html

