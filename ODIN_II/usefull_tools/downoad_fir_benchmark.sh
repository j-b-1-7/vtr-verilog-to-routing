#!/bin/bash

FIR_BM_URL="http://kastner.ucsd.edu/wp-content/uploads/2014/03/admin/FIRSourceFiles.zip"
FIR_BM=$(basename ${FIR_BM_URL})

OUTPUT_DIRECTORY="./"
OUTPUT="FIR_Benchamrk"

function help() {
    printf "\n\
        Usage for $0 :\n\
            -o|--output               *output directory for download
    "
}

function parse_args() {
    while [ "_$1" != "_" ]; do
        case $1 in
            -h|--help)
                help
                exit 0;
                ;;

            -o|--output)
                if [ "_$2" == "_" ]; then
                    echo "You must pass in a valid string to -o|--output"
                    exit -1
                elif [ ! -d $2 ]; then
                    echo "$2 is not a valid directory for -o|--output"
                    exit -1
                fi
                shift
                OUTPUT_DIRECTORY=$2
                ;;
            *)
                echo "Invalid argument passed to this script $2"
                exit -1
                ;;
        esac
    shift
    done
}

###
# parse the arguments
parse_args $@

###
# setup the directories
mkdir OUTPUT_DIRECTORY;

###
# download the zip file
wget FIR_BM_URL

###
# verify checksum ??? if exist

###
# unzip
unzip -d OUTPUT_DIRECTORY {OUTPUT}

###
# verify that output are the expected ones

###
# exit succesfully