#! /bin/bash
echo $(hostname)

if ["hostname" == $(hostname)]; then
  configpath = "configpath"
  staging = "staging_database."
  main_db = "main_database."
  dashboard = "hostname"
  upstream = "hostname or ip"
  export_path = "export_path"
  archive_path = "archieve_path"
  notload = "notloaded_path"
  outgoing = "outgoing path"
  mapping_doc = "mapping path"
  program = "program"
elif ["hostname" == $(hostname)]; then
  configpath = "configpath"
  staging = "staging_database."
  main_db = "main_database."
  dashboard = "hostname"
  upstream = "hostname or ip"
  export_path = "export_path"
  archive_path = "archieve_path"
  notload = "notloaded_path"
  outgoing = "outgoing path"
  mapping_doc = "mapping path"
  program = "program"
elif ["hostname" == $(hostname)]; then
  configpath = "configpath"
  staging = "staging_database."
  main_db = "main_database."
  dashboard = "hostname"
  upstream = "hostname or ip"
  export_path = "export_path"
  archive_path = "archieve_path"
  notload = "notloaded_path"
  outgoing = "outgoing path"
  mapping_doc = "mapping path"
  program = "program"
fi

#set spark and python environment
spark_major_version = 2.3
pyspark_python = python3715
spark_yarn_mode = true

if ["dev" == $env] || ["SIT" == $env] then
  path = "/usr/lib64/qt-3.3/bin"
audittbl = "${main_db} audit table"
consoltbl = "${stg_db} consol table"

export export_path
export achieve_path
export notloading
export outgoing

echo $export_path
echo $achieve_path
echo $notloading
echo $outgoing
