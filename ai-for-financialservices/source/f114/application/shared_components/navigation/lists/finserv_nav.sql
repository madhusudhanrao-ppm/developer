prompt --application/shared_components/navigation/lists/finserv_nav
begin
--   Manifest
--     LIST: FinServ Nav
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(71714507687943573)
,p_name=>'FinServ Nav'
,p_list_status=>'PUBLIC'
,p_version_scn=>42208362020131
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(97390510307261130)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(113550567943045877)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Real-time Fraud Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(112983105794555126)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Money Laundering'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(100384769757918735)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Anomaly Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(112983105794555126)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(113635305187719997)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Money Mules'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(112983105794555126)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(100244281648042153)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'Customer Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(99623227656348047)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Facial Recognition'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(100244281648042153)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9287164466400001)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'AI Search'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(113794507395077039)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transaction Search'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(9287164466400001)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9364280657478025)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Customer Search'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(9287164466400001)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9310804242763329)
,p_list_item_display_sequence=>19
,p_list_item_link_text=>'Manage Vectors'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(9287164466400001)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85575184966929663)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(98769116760569059)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'Manage Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_parent_list_item_id=>wwv_flow_imp.id(85575184966929663)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(102301570171743972)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(85575184966929663)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(115426732001101734)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Manage Content'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(85575184966929663)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
