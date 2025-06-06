prompt --application/shared_components/logic/application_processes/render_document
begin
--   Manifest
--     APPLICATION PROCESS: RENDER_DOCUMENT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(99613305508892657)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RENDER_DOCUMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  cndemo_document_ai_pk.render_document (x_document_id => V(''P20_DOCUMENT_ID''));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
