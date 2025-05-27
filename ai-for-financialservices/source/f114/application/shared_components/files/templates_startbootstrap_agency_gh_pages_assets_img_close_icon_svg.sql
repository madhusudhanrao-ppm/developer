prompt --application/shared_components/files/templates_startbootstrap_agency_gh_pages_assets_img_close_icon_svg
begin
--   Manifest
--     APP STATIC FILES: 114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '3C7376672069643D224C617965725F312220646174612D6E616D653D224C6179657220312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203537392E3734203537392E373422';
wwv_flow_imp.g_varchar2_table(2) := '3E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A6E6F6E653B7374726F6B653A233030303B7374726F6B652D6D697465726C696D69743A31303B7374726F6B652D77696474683A3670783B7D3C2F7374796C653E3C2F646566733E3C6C69';
wwv_flow_imp.g_varchar2_table(3) := '6E6520636C6173733D22636C732D31222078313D22322E3132222079313D22322E3132222078323D223537372E3632222079323D223537372E3632222F3E3C6C696E6520636C6173733D22636C732D31222078313D22322E3132222079313D223537372E';
wwv_flow_imp.g_varchar2_table(4) := '3632222078323D223537372E3632222079323D22322E3132222F3E3C2F7376673E';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(15956989795863821)
,p_file_name=>'templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
