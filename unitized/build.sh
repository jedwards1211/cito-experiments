#!/usr/bin/env bash

rm -rf build
mkdir build
for lang in c cpp cs java js py swift; do
  mkdir build/${lang}
  cito -o build/${lang}/unitized.${lang} src/*.ci
done