#!/bin/sh

sensors | awk '/AMD AMDSI/{ print $2 }' | tr -d '+' | cut -c 1-2,5-
#sensors | awk '/Package id 0:/{ print $4 }' | tr -d '+' | cut -c 1-2,5-
