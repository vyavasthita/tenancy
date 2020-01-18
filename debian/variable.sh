#!/bin/bash

# Deployment path
PACKAGE_DIR=package
APP_NAME=learning_and_develop
DEBIAN_PACKAGE=$PACKAGE_DIR/$APP_NAME
DEPLOY_ROOT_DIR=$DEBIAN_PACKAGE/home/aspect
PROJECT_DIR=$DEPLOY_ROOT_DIR/$APP_NAME
PROJECT_BIN_DIR=$PROJECT_DIR/bin
PROJECT_INIT_DIR=$PROJECT_BIN_DIR/init
PROJECT_LOGIN_DIR=$PROJECT_BIN_DIR/login
PROJECT_DEBIAN=$PACKAGE_DIR/$APP_NAME/DEBIAN
PROJECT_CONTROL=$PROJECT_DEBIAN/control


# Build source path
PROJECT_SCRIPT_DIR=scripts
PROJECT_SCRIPT_INIT_DIR=$PROJECT_SCRIPT_DIR/init
PROJECT_SRC_DIR=src
PROJECT_SRC_LOGIN_DIR=$PROJECT_SRC_DIR/login