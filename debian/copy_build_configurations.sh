#!/bin/bash

source $VARIABLE
source $UTILS


TENANCY_HOME=$(pwd)/..


make_configuration_dir()
{
	# Create project bin directory (/home/local/tenancy/bin)
	make_dirs $PROJECT_BIN_DIR

	# Create project bin directory (/home/local/tenancy/lib)
	make_dirs $PROJECT_LIB_DIR

	# Create project init directory (/home/local/tenancy/bin/init)
	make_dirs $PROJECT_INIT_DIR

	# Create module login directory (/home/local/tenancy/bin/login)
	make_dirs $PROJECT_LOGIN_DIR
}

copy_configuration_files()
{
	# Copy 'login' to '/home/local/tenancy/bin/login'
	copy_files $PROJECT_LOGIN_MODULE_DIR/bin/release/x86_64/login $PROJECT_LOGIN_DIR/login

	# Copy 'libcpptopython.so' to '/home/local/tenancy/lib'
	copy_files $PROJECT_CPP_TO_PYTHON_MODULE_DIR/bin/release/x86_64/libcpptopython.so $PROJECT_LIB_DIR/libcpptopython.so

	# Copy 'init.sh' to '/home/local/tenancy/bin/init'
	copy_files $PROJECT_SCRIPT_INIT_DIR/init.sh $PROJECT_INIT_DIR/init.sh

	# Copy 'init.sql' to '/home/local/tenancy/bin/init'
	copy_files $PROJECT_SCRIPT_INIT_DIR/init.sql $PROJECT_INIT_DIR/init.sql

	# Copy 'db_helper.py' to '/home/local/tenancy/bin/login'
	copy_files $PROJECT_PYTHON_SRC_DIR/db_helper.py $PROJECT_LOGIN_DIR/db_helper.py	
}

make_configuration_dir
copy_configuration_files


