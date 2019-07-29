#!/bin/bash

pushd ~/explorer 

screen -dmS reindex /usr/bin/nodejs scripts/sync.js index reindex

popd
