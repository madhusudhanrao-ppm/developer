prompt --application/shared_components/security/app_access_control/bank_officer_role
begin
--   Manifest
--     ACL ROLE: Bank Officer Role
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(12340392145870201)
,p_static_id=>'BANK_OFFICER_ROLE'
,p_name=>'Bank Officer Role'
,p_version_scn=>42294622714199
);
wwv_flow_imp.component_end;
end;
/
