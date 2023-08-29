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
  path = "/usr/lib64/qt/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin/:/opt/puppetlabs/bin:/ctrlfw"
elif ["prd" == $env]; then
  path = "/usr/lib64/qt/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin/:/opt/puppetlabs/bin:/ctrlfw"
fi

#hive tables
j_status_tbl = "${main_db}tablename"
b_status_tbl = "${main_db}tablename"
config_tbl = "${stg_tbl}tablename"
exception = "${main_tbl}tablename"
input = "${stg_tbl}tablename"

#main script variable
sparkhome = /usr/hdp/current/spark2-client/bin
configname = config table.csv
bvalid = bvalid.csv
audit = audit.py
configu = configu.py
updatescp = updatesc.py
config_file = "column1, column2"

#pstg to stg
pst_stg_script = tablestg.py
pst_stg_var = var.py
pstg_stg_query = pstg_query.py
export pst_stg_script
export pst_stg_var
export pstg_stg_query

#stg to datamodel flow
stg_dm = dm.py
dm_var = var.py
dm_query = dm.py
export stg_dm
export dm_var
export dm_query

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
