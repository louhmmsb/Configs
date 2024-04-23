#!/usr/bin/env bash

newVolume=$(bc <<< "scale=2;$1/100")
playerctl --player=spotify volume $newVolume
