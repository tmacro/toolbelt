#!/bin/sh

sensors | awk '/Package id 0:/{ print $4 }' | tr -d '+'
