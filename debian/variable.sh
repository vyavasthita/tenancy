#!/bin/bash

# Deployment path
PACKAGE_DIR=package
APP_NAME=tenancy
DEBIAN_PACKAGE=$PACKAGE_DIR/$APP_NAME
DEPLOY_ROOT_DIR=$DEBIAN_PACKAGE/home/local
DEPLOY_ETC_INIT_D_DIR=$DEBIAN_PACKAGE/etc/init.d
DEPLOY_ETC_INIT_DIR=$DEBIAN_PACKAGE/etc/init
DEPLOY_ETC_LD_SO_CONF_D_DIR=$DEBIAN_PACKAGE/etc/ld.so.conf.d
PROJECT_DIR=$DEPLOY_ROOT_DIR/$APP_NAME
PROJECT_BIN_DIR=$PROJECT_DIR/bin
PROJECT_LIB_DIR=$PROJECT_DIR/lib
PROJECT_INIT_DIR=$PROJECT_BIN_DIR/init
PROJECT_LOGIN_DIR=$PROJECT_BIN_DIR/login
PROJECT_DEBIAN=$PACKAGE_DIR/$APP_NAME/DEBIAN
PROJECT_CONTROL=$PROJECT_DEBIAN/control
PROJECT_PRE_INSTALL=$PROJECT_DEBIAN/preinst
PROJECT_POST_INSTALL=$PROJECT_DEBIAN/postinst

# Build source path
PROJECT_SCRIPT_DIR=scripts
PROJECT_SCRIPT_INIT_DIR=$PROJECT_SCRIPT_DIR/init
PROJECT_SRC_DIR=src
PROJECT_CPP_SRC_DIR=src/cpp/src
PROJECT_CPP_LIB_DIR=src/cpp/lib
PROJECT_PYTHON_SRC_DIR=src/python/src
PROJECT_LOGIN_MODULE_DIR=$PROJECT_CPP_SRC_DIR/login
PROJECT_CPP_TO_PYTHON_MODULE_DIR=$PROJECT_CPP_LIB_DIR/CppToPython/src
PROJECT_START_UP_DIR=$PROJECT_SCRIPT_DIR/system


# System path
SYSTEM_INIT_D=/etc/init.d
