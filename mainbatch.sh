#!/bin/bash
#set job execution parameter
start_time = $(date +"%s")
pipeline - date "+%Y-%M-%D_%H:%M:%S"
logdt = date "+%Y-%M-%D_%H:%M:%S"
logname = "tdd$logdt.log"
country = $1

#setting env value based on the environment
if ["hostname" == $(hostname)]; then
    echo "running in dev server"
    env = "dev"
    basepath = basepath
    if[! $user == "devid"]; then
      echo "you are running the devid"
      exit 1
      fi
elif ["hostname" == $(hostname)]; then
    echo "running in dev server"
    env = "dev"
    basepath = basepath
    if[! $user == "devid"]; then
      echo "you are running the devid"
      exit 1
      fi
elif ["hostname" == $(hostname)]; then
    echo "running in dev server"
    env = "dev"
    basepath = basepath
    if[! $user == "devid"]; then
      echo "you are running the devid"
      exit 1
      fi
fi

if["$#" -ne 1]; then
  echo "filed is mandatory"
  exit 1
fi

sparkui_port = "portnumber"
inputconfig = "$base_path/incoming/${country}_table.csv"
bv_config = "$base_path/business_validation/file.csv"
code_path = $basepath/code
log_path = $basepath/logs

