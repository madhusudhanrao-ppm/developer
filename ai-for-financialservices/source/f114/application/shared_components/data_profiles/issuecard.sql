prompt --application/shared_components/data_profiles/issuecard
begin
--   Manifest
--     DATA PROFILE: IssueCard
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(12042875412797079)
,p_name=>'IssueCard'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12043007812797095)
,p_data_profile_id=>wwv_flow_imp.id(12042875412797079)
,p_name=>'cust_id'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12043320955797099)
,p_data_profile_id=>wwv_flow_imp.id(12042875412797079)
,p_name=>'customer_name'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp.component_end;
end;
/
