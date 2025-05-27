prompt --application/deployment/install/install_04_dp
begin
--   Manifest
--     INSTALL: INSTALL-04_DP
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
 p_id=>wwv_flow_imp.id(9057052609069969)
,p_install_id=>wwv_flow_imp.id(85574615571926073)
,p_name=>'04_DP'
,p_sequence=>220
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --AICHAT: 71/10000 rows exported, APEX$DATA$PKG/AICHAT$295348',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AICHAT'', p_delete_after_install => false );',
'    --ANNUAL_DEATH_CAUSE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ANNUAL_DEATH_CAUSE'', p_delete_after_install => false );',
'    --APPUSERS: 3/10000 rows exported, APEX$DATA$PKG/APPUSERS$154405',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APPUSERS'', p_delete_after_install => false );',
'    --APPUSERS_OLD: 1/10000 rows exported, APEX$DATA$PKG/APPUSERS_OLD$285274',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APPUSERS_OLD'', p_delete_after_install => false );',
'    --AQ$_FUNDSTRANSFER_QUEUE_TABLE_H: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AQ$_FUNDSTRANSFER_QUEUE_TABLE_H'', p_delete_after_install => false );',
'    --AUDIO_STORAGE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AUDIO_STORAGE'', p_delete_after_install => false );',
'    --AUDIO_T: 4/10000 rows exported, APEX$DATA$PKG/AUDIO_T$542850',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AUDIO_T'', p_delete_after_install => false );',
'    --BANK_ACCOUNTS: 1000/10000 rows exported, APEX$DATA$PKG/BANK_ACCOUNTS$155475',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_ACCOUNTS'', p_delete_after_install => false );',
'    --BANK_CUSTOMERS: 3581/10000 rows exported, APEX$DATA$PKG/BANK_CUSTOMERS$240998',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_CUSTOMERS'', p_delete_after_install => false );',
'    --BANK_CUSTOMERS_BENEFICIARIES: 14/10000 rows exported, APEX$DATA$PKG/BANK_CUSTOMERS_BENEFICIA$415285',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_CUSTOMERS_BENEFICIARIES'', p_delete_after_install => false );',
'    --BANK_LEDGER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_LEDGER'', p_delete_after_install => false );',
'    --BANK_TRANSFERS: 10/10000 rows exported, APEX$DATA$PKG/BANK_TRANSFERS$89118',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_TRANSFERS'', p_delete_after_install => false );',
'    --CC_FD: 72/10000 rows exported, APEX$DATA$PKG/CC_FD$416360',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CC_FD'', p_delete_after_install => false );',
'    --CNDEMO_DOCUMENT_AI_DOCS: 120/10000 rows exported, APEX$DATA$PKG/CNDEMO_DOCUMENT_AI_DOCS$356878',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CNDEMO_DOCUMENT_AI_DOCS'', p_delete_after_install => false );',
'    --CNDEMO_DOCUMENT_AI_FIELDS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CNDEMO_DOCUMENT_AI_FIELDS'', p_delete_after_install => false );',
'    --COMMON_ROLE: 6/10000 rows exported, APEX$DATA$PKG/COMMON_ROLE$550443',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COMMON_ROLE'', p_delete_after_install => false );',
'    --COMMON_USERS: 20/10000 rows exported, APEX$DATA$PKG/COMMON_USERS$20024',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COMMON_USERS'', p_delete_after_install => false );',
'    --CUSTOMERS: 3563/10000 rows exported, APEX$DATA$PKG/CUSTOMERS$408445',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CUSTOMERS'', p_delete_after_install => false );',
'    --FD_ANM: 10/10000 rows exported, APEX$DATA$PKG/FD_ANM$633769',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_ANM'', p_delete_after_install => false );',
'    --FD_BANK_NAMES: 8/10000 rows exported, APEX$DATA$PKG/FD_BANK_NAMES$579875',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BANK_NAMES'', p_delete_after_install => false );',
'    --FD_BANK_TRANSACTIONS: 169/10000 rows exported, APEX$DATA$PKG/FD_BANK_TRANSACTIONS$917126',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BANK_TRANSACTIONS'', p_delete_after_install => false );',
'    --FD_BUSINESS_RULES: 3/10000 rows exported, APEX$DATA$PKG/FD_BUSINESS_RULES$78700',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BUSINESS_RULES'', p_delete_after_install => false );',
'    --FD_TRANSACTIONS_LOG: 21/10000 rows exported, APEX$DATA$PKG/FD_TRANSACTIONS_LOG$761291',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_TRANSACTIONS_LOG'', p_delete_after_install => false );',
'    --FD_TX_HISTORIC_DATA: 25/10000 rows exported, APEX$DATA$PKG/FD_TX_HISTORIC_DATA$446441',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_TX_HISTORIC_DATA'', p_delete_after_install => false );',
'    --FINBANK_ACCOUNTS: 50/10000 rows exported, APEX$DATA$PKG/FINBANK_ACCOUNTS$616597',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FINBANK_ACCOUNTS'', p_delete_after_install => false );',
'    --FSCUSTOMERS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FSCUSTOMERS'', p_delete_after_install => false );',
'    --FUNDSTRANSFER_QUEUE_TABLE: 1/10000 rows exported, APEX$DATA$PKG/FUNDSTRANSFER_QUEUE_TABL$983177',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FUNDSTRANSFER_QUEUE_TABLE'', p_delete_after_install => false );',
'    --HLTERM: 2/10000 rows exported, APEX$DATA$PKG/HLTERM$899199',
'    apex_data_install.load_supporting_object_data(p_table_name => ''HLTERM'', p_delete_after_install => false );',
'    --HOSPITALS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''HOSPITALS'', p_delete_after_install => false );',
'    --MACHINE_LEARNING_CONFIGS: 8/10000 rows exported, APEX$DATA$PKG/MACHINE_LEARNING_CONFIGS$864043',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MACHINE_LEARNING_CONFIGS'', p_delete_after_install => false );',
'    --MSGLOGS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MSGLOGS'', p_delete_after_install => false );',
'    --MYAUDIODATA: 4/10000 rows exported, APEX$DATA$PKG/MYAUDIODATA$891592',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MYAUDIODATA'', p_delete_after_install => false );',
'    --MY_BOOKS: 5/10000 rows exported, APEX$DATA$PKG/MY_BOOKS$75981',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_BOOKS'', p_delete_after_install => false );',
'    --PASSENGER_LIST: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PASSENGER_LIST'', p_delete_after_install => false );',
'    --PATIENTS: 22/10000 rows exported, APEX$DATA$PKG/PATIENTS$898388',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PATIENTS'', p_delete_after_install => false );',
'    --PIZZASHOPS: 3487/10000 rows exported, APEX$DATA$PKG/PIZZASHOPS$333685',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZASHOPS'', p_delete_after_install => false );',
'    --PIZZA_DELIVERY_MODE: 10/10000 rows exported, APEX$DATA$PKG/PIZZA_DELIVERY_MODE$929426',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_DELIVERY_MODE'', p_delete_after_install => false );',
'    --PIZZA_ORDER: 19/10000 rows exported, APEX$DATA$PKG/PIZZA_ORDER$132001',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_ORDER'', p_delete_after_install => false );',
'    --PIZZA_ORDER_DETAILS: 29/10000 rows exported, APEX$DATA$PKG/PIZZA_ORDER_DETAILS$83104',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_ORDER_DETAILS'', p_delete_after_install => false );',
'    --RELATED_LABELS: 36/10000 rows exported, APEX$DATA$PKG/RELATED_LABELS$315113',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RELATED_LABELS'', p_delete_after_install => false );',
'    --RETAIL_SHOPPING: 10000/10000 rows exported, APEX$DATA$PKG/RETAIL_SHOPPING$636951',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RETAIL_SHOPPING'', p_delete_after_install => false );',
'    --RETAIL_SHOPPING_FD: 60/10000 rows exported, APEX$DATA$PKG/RETAIL_SHOPPING_FD$73523',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RETAIL_SHOPPING_FD'', p_delete_after_install => false );',
'    --SQLS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SQLS'', p_delete_after_install => false );',
'    --TECHNOLOGIES: 58/10000 rows exported, APEX$DATA$PKG/TECHNOLOGIES$569311',
'    apex_data_install.load_supporting_object_data(p_table_name => ''TECHNOLOGIES'', p_delete_after_install => false );',
'    --UNESCO_SITES: 1113/10000 rows exported, APEX$DATA$PKG/UNESCO_SITES$303523',
'    apex_data_install.load_supporting_object_data(p_table_name => ''UNESCO_SITES'', p_delete_after_install => false );',
'    --USER_PROFILE_BC: 17/10000 rows exported, APEX$DATA$PKG/USER_PROFILE_BC$328083',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_PROFILE_BC'', p_delete_after_install => false );',
'    --US_HOSPITALS: 7563/10000 rows exported, APEX$DATA$PKG/US_HOSPITALS$936822',
'    apex_data_install.load_supporting_object_data(p_table_name => ''US_HOSPITALS'', p_delete_after_install => false );',
'    --VECTOR_STORE: 535/10000 rows exported, APEX$DATA$PKG/VECTOR_STORE$166934',
'    apex_data_install.load_supporting_object_data(p_table_name => ''VECTOR_STORE'', p_delete_after_install => false );',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
