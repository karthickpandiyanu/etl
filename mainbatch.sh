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

#echo "PID of data_ingestion is $$"
pip_value = $country-$$-$start_time
#echo "country code: $country"
#echo "pid value to hive db: "$pid_value"
#echo "config file to load: $input_config"

#Load environment variables
load_environement_variables(){
source $base_path/code/properties.sh
echo "Environment variables loaded to memory"
echo "PID of data ingestion_elt process is: $$"
echo "country code: $country"
echo "pid value to hive db: $pid_value"
echo "config file to load: $input_config"
}

config_update = false
echo $PATH

Update_c_table(){
    config_up_st_time -= data "+%Y-%m-%d_%H:%M:%S"
    SPARK_MAJOR_VERSION=2.3
    PYSPARK_PYTHON = Python3715
    SPARK_YARN_MODE = true
    $spark_home/spark-submit --master local 
                             --name Updatectable
                             --conf spark.ui.port=$spark_ui_port
                             --conf spark.executor.instance=1
                             --conf spark.executor.memory=2g
                             --conf spark.driver.mermory=4g
                             --queue $spark_queue_name
                             --py-files $code_path/$audit_code $code_path/$complete_batch_script $country $env

    if [$? -ne 0]; then
    exit 1
    fi 
    exit 0
    }
does_complete_job_ran= false
load_env_variable 2>&1
load_to_isrreport 2>&1
complete_batch 2>&1
                             
}



