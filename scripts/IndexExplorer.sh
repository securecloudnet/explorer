#!/bin/bash

pushd ~/explorer 

screen -dmS index /usr/bin/nodejs scripts/sync.js index update

popd
