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

