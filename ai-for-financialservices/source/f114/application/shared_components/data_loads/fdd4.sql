prompt --application/shared_components/data_loads/fdd4
begin
--   Manifest
--     DATA LOAD: fdd4
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
 p_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'fdd4'
,p_format=>'CSV'
,p_encoding=>'utf-8'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97092630666457979)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97092860186457979)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'INV_NO'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'INV_NO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97093180546457979)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'GENDER'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'GENDER'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97093539976457980)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'AGE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'AGE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97093746438457980)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CATEGORY'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'CATEGORY'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97094067209457980)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'QTY'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'QTY'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97094374151457980)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'PRICE'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'PRICE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97094711190457980)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'TOTAL_PAY'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'TOTAL_PAY'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97094949630457981)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'METHOD'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'METHOD'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97095255248457981)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'TEST_TIMESTAMP'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH LOCAL TIME ZONE'
,p_selector_type=>'NAME'
,p_selector=>'TEST_TIMESTAMPX'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97095557747457981)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MALL'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'MALL'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97095929991457981)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUST_ID'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'CUST_ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97096235906457981)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUST_FIRST_NAME'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'CUST_FIRST_NAME'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97096474253457982)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUST_LAST_NAME'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'CUST_LAST_NAME'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97096806808457982)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CREDIT_CARD_NO'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'CREDIT_CARD_NO'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97097127347457982)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'TRANS_STATUS'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>20
,p_selector_type=>'NAME'
,p_selector=>'TRANS_STATUS'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97097360306457982)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUST_CITY'
,p_sequence=>17
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'CUST_CITY'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97097725341457982)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUST_STATE_PROVINCE'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'CUST_STATE_PROVINCE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97097967429457983)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'TRANSACTION_STATUS'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'TRANSACTION_STATUS'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97098283125457983)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'COMMENTS'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>500
,p_selector_type=>'NAME'
,p_selector=>'COMMENTS'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97098592886457983)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'COUNTRY_ID'
,p_sequence=>21
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'COUNTRY_ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97098901418457983)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'TX_TIMESTAMP'
,p_sequence=>22
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP'
,p_selector_type=>'NAME'
,p_selector=>'TX_TIMESTAMP'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97099187476457983)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_ID'
,p_sequence=>23
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97099467757457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_CITY'
,p_sequence=>24
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_CITY'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97099839343457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_REGION'
,p_sequence=>25
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_REGION'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97100053398457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_STATE'
,p_sequence=>26
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_STATE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97100370078457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_PLACE'
,p_sequence=>27
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>100
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_PLACE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97100666112457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'LONGITUDE'
,p_sequence=>28
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'LONGITUDE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97101008977457984)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'LATITUDE'
,p_sequence=>29
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'LATITUDE'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97101258069457985)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_PLACE_ID'
,p_sequence=>30
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_PLACE_ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97101618631457985)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'CUSTOMER_FULLNAME'
,p_sequence=>31
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'CUSTOMER_FULLNAME'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(97101927965457985)
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_name=>'MERCHANT_FULLNAME'
,p_sequence=>32
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>50
,p_selector_type=>'NAME'
,p_selector=>'MERCHANT_FULLNAME'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(97102133679457985)
,p_name=>'fdd4'
,p_static_id=>'fdd4'
,p_target_type=>'TABLE'
,p_table_name=>'RETAIL_SHOPPING_FD'
,p_data_profile_id=>wwv_flow_imp.id(97092337925457978)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
