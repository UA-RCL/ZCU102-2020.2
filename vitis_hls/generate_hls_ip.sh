#!/bin/bash

# Apparently these are good options to set according to stackoverflow
set -o errexit -o pipefail -o noclobber -o nounset

# Check if getopt is available
! getopt --test > /dev/null
if [[ ${PIPESTATUS[0]} -ne 4 ]]; then
  echo "enhanced getopt is unsupported on this platform..."
  exit 1
fi

# Specify the opts the script accepts (build/clean)
LONGOPTS=build,clean,help
OPTS=bch

# Parse the options
! PARSED=$(getopt --longoptions=${LONGOPTS} --options=${OPTS} --name "$0" -- "$@")
if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
  exit 1
fi

# Do this weird thing the person on stackoverflow said to do
eval set -- "$PARSED"

# Set default values for our arguments
build=y
clean=n

# Define a help function for people who ask
print_usage() {
  echo "Usage: ${0} [-c|--clean] [-b|--build] [-h|--help]"
}

# Actually do something about the arguments we received
while true; do
  case "$1" in
    -b|--build)
      build=y
      shift 1
      ;;
    -c|--clean)
      clean=y
      shift 1
      ;;
    -h|--help)
      print_usage
      shift 1
      exit 0
      ;;
    --)
      shift 1
      break
      ;;
    *)
      >&2 echo "Whoops getopt should have stopped you from using an unknown argument"
      exit 1
      ;;
  esac
done

# If the user asked for a clean folder, we'll give them one
if [[ "${clean}" == "y" ]]; then
  if [ -d ./export ]; then
    rm -rf ./export
  fi

  if [ -d ./mmult ]; then
    rm -rf ./mmult
  fi

  if [ -e ./.vitis_hls.log ]; then
    rm ./.vitis_hls.log
  fi

  exit 0
fi

# If the user asked for an mmult project to be built, we'll give them one
if [[ "${build}" == "y" ]]; then
  vitis_hls ./matrix_multiply.tcl -l .vitis_hls.log

  # vitis hls was apparently successful if this file exists
  if [ -e mmult_export.zip ]; then
    if [ -d export ]; then
      rm -rf ./export
      mkdir export
    fi

    unzip -q mmult_export.zip -d ./export/
    rm mmult_export.zip
  fi

  exit 0
fi
