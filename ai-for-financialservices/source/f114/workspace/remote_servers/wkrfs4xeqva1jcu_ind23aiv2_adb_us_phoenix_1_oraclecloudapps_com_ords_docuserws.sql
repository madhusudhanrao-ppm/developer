prompt --workspace/remote_servers/wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws
begin
--   Manifest
--     REMOTE SERVER: wkrfs4xeqva1jcu-ind23aiv2-adb-us-phoenix-1-oraclecloudapps-com-ords-docuserws
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(12042698497797074)
,p_name=>'wkrfs4xeqva1jcu-ind23aiv2-adb-us-phoenix-1-oraclecloudapps-com-ords-docuserws'
,p_static_id=>'wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'https://wkrfs4xeqva1jcu-ind23aiv2.adb.us-phoenix-1.oraclecloudapps.com/ords/docuserws/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('wkrfs4xeqva1jcu_ind23aiv2_adb_us_phoenix_1_oraclecloudapps_com_ords_docuserws'),'')
);
wwv_flow_imp.component_end;
end;
/
