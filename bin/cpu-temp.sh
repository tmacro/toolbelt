#!/bin/sh

sensors | awk '/Package id 0:/{ print $4 }' | tr -d '+' | cut -c 1-2,5-
