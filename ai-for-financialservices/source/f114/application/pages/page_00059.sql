prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_page.create_page(
 p_id=>59
,p_name=>'Pending Accounts'
,p_alias=>'PENDING-ACCOUNTS'
,p_step_title=>'Pending Accounts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(9493931172865529)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11291716566299316)
,p_name=>'Pending Accounts'
,p_template=>wwv_flow_imp.id(71175863779149507)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from BANK_CUSTOMERS where account_type = ''Savings Bank'''
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71214066555149528)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11292115616299324)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11292587243299327)
,p_query_column_id=>2
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11292962323299329)
,p_query_column_id=>3
,p_column_alias=>'CUST_YEAR_OF_BIRTH'
,p_column_display_sequence=>3
,p_column_heading=>'Cust Year Of Birth'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11293354307299330)
,p_query_column_id=>4
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Marital Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11293770742299332)
,p_query_column_id=>5
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>5
,p_column_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11294152563299333)
,p_query_column_id=>6
,p_column_alias=>'CUST_POSTAL_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'Cust Postal Code'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11294502530299335)
,p_query_column_id=>7
,p_column_alias=>'CITY'
,p_column_display_sequence=>7
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11294957928299336)
,p_query_column_id=>8
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>8
,p_column_heading=>'State Province'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11295751736299339)
,p_query_column_id=>10
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>10
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11296199011299340)
,p_query_column_id=>11
,p_column_alias=>'CUST_INCOME_LEVEL'
,p_column_display_sequence=>11
,p_column_heading=>'Cust Income Level'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11296587159299342)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>12
,p_column_heading=>'Credit Limit'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11297385205299345)
,p_query_column_id=>14
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>14
,p_column_heading=>'Customer Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11298434787299349)
,p_query_column_id=>17
,p_column_alias=>'DOB'
,p_column_display_sequence=>17
,p_column_heading=>'Dob'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11299242441299352)
,p_query_column_id=>19
,p_column_alias=>'ACCOUNT_NUMBER'
,p_column_display_sequence=>19
,p_column_heading=>'Account Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11299682452299353)
,p_query_column_id=>20
,p_column_alias=>'ACCOUNT_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Account Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11300052450299355)
,p_query_column_id=>21
,p_column_alias=>'REFERENCE_RELATION'
,p_column_display_sequence=>21
,p_column_heading=>'Reference Relation'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11300476153299356)
,p_query_column_id=>22
,p_column_alias=>'REFERENCE_NAME'
,p_column_display_sequence=>22
,p_column_heading=>'Reference Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11300831256299358)
,p_query_column_id=>23
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>23
,p_column_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11301244570299359)
,p_query_column_id=>24
,p_column_alias=>'CITIZENSHIP'
,p_column_display_sequence=>24
,p_column_heading=>'Citizenship'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11301606833299361)
,p_query_column_id=>25
,p_column_alias=>'OCCUPATION_TYPE'
,p_column_display_sequence=>25
,p_column_heading=>'Occupation Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11302045318299362)
,p_query_column_id=>26
,p_column_alias=>'INCOME_SOURCE'
,p_column_display_sequence=>26
,p_column_heading=>'Income Source'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11302884325299365)
,p_query_column_id=>28
,p_column_alias=>'EDUCATIONAL_QUALIFICATION'
,p_column_display_sequence=>28
,p_column_heading=>'Educational Qualification'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303295098299366)
,p_query_column_id=>29
,p_column_alias=>'CURRENT_BALANCE'
,p_column_display_sequence=>29
,p_column_heading=>'Current Balance'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303675160299368)
,p_query_column_id=>30
,p_column_alias=>'ACCOUNT_STATUS'
,p_column_display_sequence=>30
,p_column_heading=>'Account Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11304001272299369)
,p_query_column_id=>31
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>31
,p_column_heading=>'Bank Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11328665034301516)
,p_button_sequence=>40
,p_button_name=>'Invoke_Process'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit for Approval'
,p_button_css_classes=>'u-warning-bg'
,p_icon_css_classes=>'fa-workflow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11471229088601609)
,p_button_sequence=>50
,p_button_name=>'ClearData'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cleardata'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-ai-sparkle-eraser'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11472098652601617)
,p_button_sequence=>80
,p_button_name=>'Create_Task_Test'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Create Task Test'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11285414956089403)
,p_name=>'P59_ACCOUNT_NUMBER'
,p_item_sequence=>10
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11328579638301515)
,p_name=>'P59_CUSTOMER_NAME'
,p_item_sequence=>20
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11471075202601607)
,p_name=>'P59_CUST_ID'
,p_item_sequence=>30
,p_prompt=>'Cust Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11471392813601610)
,p_name=>'del'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11471229088601609)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11471477475601611)
,p_event_id=>wwv_flow_imp.id(11471392813601610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   delete from BANK_CUSTOMERS where account_type = ''Savings Bank'';',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11471512917601612)
,p_event_id=>wwv_flow_imp.id(11471392813601610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11291716566299316)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11472144023601618)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11472098652601617)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11472258471601619)
,p_event_id=>wwv_flow_imp.id(11472144023601618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'    l_req_id varchar2(100) := :P59_CUST_ID;',
'    l_req_item varchar2(100) := ''Some requisition item requiring approval'';',
'    l_req_amount number := 2499.42;',
'    l_task_id number;',
'    l_cust_name varchar2(100) := :P59_CUSTOMER_NAME;',
'    l_account_no varchar2(100) := :P59_ACCOUNT_NUMBER;',
'    l_user varchar2(100) := v(''APP_USER'');',
'     ',
'',
'BEGIN ',
'     l_task_id := apex_approval.create_task(',
'                 p_application_id => 114,',
'                 p_task_def_static_id => ''NEW_CUSTOMER_ONBOARDING'',',
'                 p_subject => ''New Customer Approval for Customer '' || l_cust_name || '' Account No: '' || l_account_no,',
'                 p_initiator => l_user,',
'                 p_parameters => apex_approval.t_task_parameters(',
'                     1 => apex_approval.t_task_parameter(static_id => ''P_ACCOUNT_NUMBER'', string_value => sysdate),',
'                     2 => apex_approval.t_task_parameter(static_id => ''P_CUSTOMER_NAME'', string_value => l_req_amount)),',
'                 p_detail_pk => l_req_id);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11472318772601620)
,p_event_id=>wwv_flow_imp.id(11472144023601618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Success'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Success'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11330925398301539)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CREATE_TASK'
,p_process_name=>'Submit for Approval'
,p_attribute_01=>wwv_flow_imp.id(11487462619277977)
,p_attribute_05=>'P59_CUST_ID'
,p_attribute_10=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11328665034301516)
,p_internal_uid=>11330925398301539
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(11471111780601608)
,p_page_id=>59
,p_task_def_param_id=>wwv_flow_imp.id(11543045619315946)
,p_page_process_id=>wwv_flow_imp.id(11330925398301539)
,p_value_type=>'ITEM'
,p_value=>'P59_CUST_ID'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(11552929885822192)
,p_page_id=>59
,p_task_def_param_id=>wwv_flow_imp.id(11552588783822188)
,p_page_process_id=>wwv_flow_imp.id(11330925398301539)
,p_value_type=>'ITEM'
,p_value=>'P59_CUSTOMER_NAME'
);
wwv_flow_imp.component_end;
end;
/
