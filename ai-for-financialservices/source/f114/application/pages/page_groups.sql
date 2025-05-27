prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(71363697730149761)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(71563793811151230)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
