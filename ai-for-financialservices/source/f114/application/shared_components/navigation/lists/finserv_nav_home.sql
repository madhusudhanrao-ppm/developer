prompt --application/shared_components/navigation/lists/finserv_nav_home
begin
--   Manifest
--     LIST: FinServ Nav Home
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
 p_id=>wwv_flow_imp.id(9493931172865529)
,p_name=>'FinServ Nav Home'
,p_list_status=>'PUBLIC'
,p_version_scn=>44680749214797
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9494905406865561)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'- Bankers'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'bankers'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND ',
'(role_id = 1 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9495339985865563)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Fraud Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fraud'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9496100297865565)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>'Money Laundering'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'moneylaund'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9496596482865567)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'Money Mules'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'moneymule'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9495768253865564)
,p_list_item_display_sequence=>34
,p_list_item_link_text=>'Anomaly Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'anmdetect'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9496923014865568)
,p_list_item_display_sequence=>46
,p_list_item_link_text=>'Customer Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'custanalysis'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9977406817481390)
,p_list_item_display_sequence=>67
,p_list_item_link_text=>'AI Search'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'aisearch'
,p_parent_list_item_id=>wwv_flow_imp.id(9506854641875745)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9497709342865571)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transaction Search'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'transactionsearch'
,p_parent_list_item_id=>wwv_flow_imp.id(9977406817481390)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9494169159865554)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Customer Search'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'customersearch'
,p_parent_list_item_id=>wwv_flow_imp.id(9977406817481390)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'- Bank Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankcustomers'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from common_users where upper(email) = upper(v(''APP_USER''))  ',
'AND ',
'(role_id = 2 OR role_id = 6);',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11272334469868609)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'Open Bank Account'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankaccount'
,p_parent_list_item_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16004967144027455)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Update My Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'updateprofile'
,p_parent_list_item_id=>wwv_flow_imp.id(11272334469868609)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17648561759209835)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'Apply for Card'
,p_list_item_link_target=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'applyforcard'
,p_parent_list_item_id=>wwv_flow_imp.id(11272334469868609)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23102237967749010)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Application History'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'applicationhistory'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND role_id = 2;'
,p_parent_list_item_id=>wwv_flow_imp.id(11272334469868609)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9768644639860644)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Online Shopping'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'shopping'
,p_parent_list_item_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17629556802594277)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Make Payment'
,p_list_item_link_target=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'makepayment'
,p_parent_list_item_id=>wwv_flow_imp.id(9768644639860644)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12712805685316121)
,p_list_item_display_sequence=>39
,p_list_item_link_text=>'Funds Transfer'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fundtransfer'
,p_parent_list_item_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14337355158110825)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Generate Bank Statement'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankstatement'
,p_parent_list_item_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23335888412361622)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Home Loan EMI'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'loanemi'
,p_parent_list_item_id=>wwv_flow_imp.id(9506507305875743)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16229439630136082)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'- ATM'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'atm'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from common_users where upper(email) = upper(v(''APP_USER'')) AND   ',
'(role_id = 2 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9501341806865589)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Cash Withdrawal'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'cashwithdrawal'
,p_parent_list_item_id=>wwv_flow_imp.id(16229439630136082)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9494529543865560)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Cheque Deposit'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'chequedeposit'
,p_parent_list_item_id=>wwv_flow_imp.id(16229439630136082)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11547088844637239)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'- My Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'mytasks'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND ',
'(role_id = 1 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13687638718151909)
,p_list_item_display_sequence=>68
,p_list_item_link_text=>'- Workflow Console'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'wfconsole'
,p_parent_list_item_id=>wwv_flow_imp.id(11547088844637239)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_display_sequence=>69
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'administration'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'return (APEX_UTIL.CURRENT_USER_IN_GROUP(p_group_name=>''BANKER_GROUP''));',
'',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9498533501865574)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Manage Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25946675080938263)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Data Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9498932767865575)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11984852285020585)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'Bank Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(23858708522461735)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Data Exporter'
,p_list_item_link_target=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(9498131087865573)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22349646219711244)
,p_list_item_display_sequence=>88
,p_list_item_link_text=>'References'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'references'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
