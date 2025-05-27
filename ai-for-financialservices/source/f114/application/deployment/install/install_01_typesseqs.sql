prompt --application/deployment/install/install_01_typesseqs
begin
--   Manifest
--     INSTALL: INSTALL-01_TypesSeqs
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(9027583599158753)
,p_install_id=>wwv_flow_imp.id(85574615571926073)
,p_name=>'01_TypesSeqs'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   CREATE SEQUENCE  "EMP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 16966 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "DEPT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "COMMON_USER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1061 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'',
'',
'create or replace TYPE banktransfer_q_payload AS OBJECT ( message VARCHAR2(4000) )',
'/',
'create or replace TYPE orders_q_payload AS OBJECT ( message VARCHAR2(4000) ) ',
'/',
'create or replace TYPE passenger_q_payload AS OBJECT ( message VARCHAR2(4000) ) ',
'/',
'',
'',
'',
'',
'',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9027687831158749)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'COMMON_USER_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9027816845158747)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DEPT_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9028080014158746)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'EMP_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9028252567158745)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TYPE'
,p_object_name=>'BANKTRANSFER_Q_PAYLOAD'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9028440322158744)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TYPE'
,p_object_name=>'ORDERS_Q_PAYLOAD'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(9028607545158743)
,p_script_id=>wwv_flow_imp.id(9027583599158753)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TYPE'
,p_object_name=>'PASSENGER_Q_PAYLOAD'
);
wwv_flow_imp.component_end;
end;
/
