--Installation steps:
--sqlplus mdtech/Mdtech9591@orcl
--SQL> prompt, type "@install.sql "
--Pre-req of this script is to load all the stagging tables (ext_file) and load json package (json_v1_0_5\json_v1_0_5\install.sql)
spool install.log
--@create_common_tables.sql
@americav_ddl_drop.sql
--@general_ddl_drop.sql
--
--@general_ddl_create.sql
@americav_ddl_create.sql
--@productImgExtTable.sql
--@stateTaxExtTable.sql
--------------------
@americav_types.typ.sql
@modify_ddl.sql
@create_seq.sql
@americav.trg.sql
------------------------------------------
@common.pkg.sql
@send_mail.pkg.sql
@mail.pkg.sql
@pl_fpdf.pkg.sql
@web_services.pkg.sql
@history.pkg.sql
@americav_view.sql
--------------------------------
@americav_data_load.pkg.sql
@mbr_inq.pkg.sql
@common_dml.pkg.sql
@purchase_inq.pkg.sql
@purchase_trans.pkg.sql
@mbr_trans.pkg.sql
@return_json.pkg.sql
@loc_trans.pkg.sql
@common_inq.pkg.sql
@common_trans.pkg.sql
@americav_mail.pkg.sql
-----------------------------
--@load_location.sql
@load_americav_data.sql
spool off