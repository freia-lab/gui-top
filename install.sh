#!/bin/bash

OPI_VERSION=0.2.0

OPIS_HOME=/opt/epics/OPIS
OPI_DIR=/opt/epics/opi/bob
LINK_DIR=../../OPIS
MODULE_NAME=gui-top
OPI_DIRNAME=0GUI

mkdir -p $OPIS_HOME/$MODULE_NAME
rsync -va --delete --no-o --no-g --no-p --chmod=ug=rwX --exclude 'README.md' --exclude '*~' ./opi/ $OPIS_HOME/$MODULE_NAME/$OPI_VERSION/
cd $OPI_DIR; rm -f $OPI_DIRNAME; ln -s $LINK_DIR/$MODULE_NAME/$OPI_VERSION/ $OPI_DIRNAME
