#!/usr/bin/env bash

[ -d ebin ] || mkdir -pv ebin
erl -pz $(find ../deps/ranch -name "ebin") -pz $(find ../deps/lager/ -name "ebin") -make
cp -av app/*.app ebin
