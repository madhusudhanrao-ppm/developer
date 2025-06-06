prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>'Task Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Task Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(71073389059149428)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11338959565640678)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>60
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_result clob;',
'begin',
'    select to_clob(replace(replace(replace(''',
'            <div class="a-CardView has-title has-badge">',
'              <div class="a-CardView-header">',
'                <div class="a-CardView-headerBody">',
'                  <h3 class="a-CardView-title">#SUBJECT#</h3>',
'                </div>',
'                <div class="a-CardView-badge #BADGE_CSS_CLASSES#" title="#BADGE_TEXT#">',
'                  <span class="a-CardView-badgeValue">#BADGE_TEXT#</span>',
'                </div>',
'              </div>',
'            </div>'',',
'           ''#SUBJECT#''          , subject          ),',
'           ''#BADGE_TEXT#''       , badge_text       ),',
'           ''#BADGE_CSS_CLASSES#'', badge_css_classes) )',
'      into l_result',
'      from table ( apex_approval.get_tasks (',
'                       p_context => ''SINGLE_TASK'',',
'                       p_task_id => :P61_TASK_ID ) );',
'',
'    return l_result;',
'exception',
'    when no_data_found then',
'        return l_result;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11339358526640683)
,p_name=>'Overview'
,p_template=>wwv_flow_imp.id(71175863779149507)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_def_name        as category,',
'       created_on           as initiated,',
'       initiator            as initiator,',
'       actual_owner         as owner,',
'       priority_level       as priority,',
'       due_on               as due,',
'       outcome',
'  from table ( apex_approval.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P61_TASK_ID ) )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P61_TASK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71217128214149530)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11339722804640688)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>10
,p_column_heading=>'Category'
,p_use_as_row_header=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11340103372640691)
,p_query_column_id=>2
,p_column_alias=>'INITIATED'
,p_column_display_sequence=>20
,p_column_heading=>'Initiated'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11340586951640693)
,p_query_column_id=>3
,p_column_alias=>'INITIATOR'
,p_column_display_sequence=>30
,p_column_heading=>'Initiator'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11340917453640695)
,p_query_column_id=>4
,p_column_alias=>'OWNER'
,p_column_display_sequence=>40
,p_column_heading=>'Owner'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11341374615640697)
,p_query_column_id=>5
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>50
,p_column_heading=>'Priority'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11341776593640699)
,p_query_column_id=>6
,p_column_alias=>'DUE'
,p_column_display_sequence=>60
,p_column_heading=>'Due'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11342194252640700)
,p_query_column_id=>7
,p_column_alias=>'OUTCOME'
,p_column_display_sequence=>70
,p_column_heading=>'Outcome'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11342502794640702)
,p_name=>'Details'
,p_template=>wwv_flow_imp.id(71137973846149486)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_label,',
'       param_value',
'  from apex_task_parameters',
' where task_id = :P61_TASK_ID',
'   and is_visible = ''Y'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P61_TASK_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71219060949149531)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11342911057640703)
,p_query_column_id=>1
,p_column_alias=>'PARAM_LABEL'
,p_column_display_sequence=>10
,p_column_heading=>'Param Label'
,p_use_as_row_header=>'Y'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11343381345640705)
,p_query_column_id=>2
,p_column_alias=>'PARAM_VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Param Value'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11357922419640776)
,p_plug_name=>'Edit Parameters'
,p_parent_plug_id=>wwv_flow_imp.id(11342502794640702)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_EDIT_PARAMETERS_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>180
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_params )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11343793053640706)
,p_plug_name=>'Edit Task'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11348502992640728)
,p_plug_name=>'Delegate'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_DELEGATE_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>100
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11349700557640736)
,p_plug_name=>'Priority'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_PRIORITY_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>110
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11351131040640747)
,p_plug_name=>'Due'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_DUE_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>120
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11352359486640753)
,p_plug_name=>'Request Information'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_REQUEST_INFORMATION_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>130
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11353528342640758)
,p_plug_name=>'Submit Information'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_SUBMIT_INFORMATION_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>140
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11354797768640763)
,p_plug_name=>'Invite Participant'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_INVITE_PARTICIPANT_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>150
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11355973111640768)
,p_plug_name=>'Remove Participant'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_REMOVE_PARTICIPANT_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>160
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11357175791640772)
,p_plug_name=>'Cancel Task'
,p_parent_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-nosize'
,p_region_attributes=>'data-parent-element="#OPEN_CANCEL_TASK_DIALOG"'
,p_plug_template=>wwv_flow_imp.id(71160742647149499)
,p_plug_display_sequence=>170
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11359571656640782)
,p_name=>'Comments'
,p_template=>wwv_flow_imp.id(71137973846149486)
,p_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat:t-Report--hideNoPagination'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_icon,',
'       ''u-color-''||ora_hash(created_by,45)  as icon_modifier,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date,',
'       null                                 as comment_modifiers,',
'       null                                 as actions,',
'       null                                 as attribute_1,',
'       null                                 as attribute_2,',
'       null                                 as attribute_3,',
'       null                                 as attribute_4,',
'       case when task_id != :P61_TASK_ID',
'           then ''u-warning''',
'           else null',
'       end                                  as column_css_class',
'  from apex_task_comments',
' where nvl(:P61_ALL_COMMENTS, ''N'') = ''N'' and task_id = :P61_TASK_ID',
'    or nvl(:P61_ALL_COMMENTS, ''N'') = ''Y'' and task_id in ( ',
'                       select task_id ',
'                         from apex_tasks',
'                      connect by prior previous_task_id = task_id',
'                        start with task_id = :P61_TASK_ID )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P61_TASK_ID,P61_ALL_COMMENTS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71205506952149523)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11359939080640783)
,p_query_column_id=>1
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>10
,p_column_heading=>'User Icon'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11360303378640785)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>20
,p_column_heading=>'Icon Modifier'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11360730711640786)
,p_query_column_id=>3
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'User Name'
,p_use_as_row_header=>'Y'
,p_column_html_expression=>'<span style="text-transform:lowercase">#USER_NAME#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11361131448640788)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>40
,p_column_heading=>'Comment Text'
,p_column_css_class=>'#COLUMN_CSS_CLASS#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11361584989640790)
,p_query_column_id=>5
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>50
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'Y'
,p_column_format=>'SINCE'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11361988068640791)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>60
,p_column_heading=>'Comment Modifiers'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11362326009640793)
,p_query_column_id=>7
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>70
,p_column_heading=>'Actions'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11362757587640794)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>80
,p_column_heading=>'Attribute 1'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11363173212640796)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>90
,p_column_heading=>'Attribute 2'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11363578463640797)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>100
,p_column_heading=>'Attribute 3'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11363915822640799)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>110
,p_column_heading=>'Attribute 4'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11364380523640800)
,p_query_column_id=>12
,p_column_alias=>'COLUMN_CSS_CLASS'
,p_column_display_sequence=>120
,p_column_heading=>'Column Css Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11365932219640808)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71128241308149481)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11366794201640811)
,p_name=>'History'
,p_parent_plug_id=>wwv_flow_imp.id(11365932219640808)
,p_template=>wwv_flow_imp.id(71128241308149481)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_type,',
'       event_timestamp,',
'       event_creator,',
'       display_msg',
'  from table ( apex_approval.get_task_history (',
'                   p_task_id     => :P61_TASK_ID,',
'                   p_include_all => :P61_ALL_HISTORY ) )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P61_TASK_ID,P61_ALL_HISTORY'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71214066555149528)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11367107235640814)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event'
,p_use_as_row_header=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11367507928640816)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TIMESTAMP'
,p_column_display_sequence=>20
,p_column_heading=>'Time '
,p_use_as_row_header=>'Y'
,p_column_format=>'SINCE'
,p_default_sort_column_sequence=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11367905436640818)
,p_query_column_id=>3
,p_column_alias=>'EVENT_CREATOR'
,p_column_display_sequence=>30
,p_column_heading=>'User'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11368331907640819)
,p_query_column_id=>4
,p_column_alias=>'DISPLAY_MSG'
,p_column_display_sequence=>40
,p_column_heading=>'Message'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11368799869640821)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>210
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11365505865640807)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11359571656640782)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Add Comment'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11369128372640823)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11368799869640821)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11369597817640824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11368799869640821)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11369990413640825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11368799869640821)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_reject )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11370317271640828)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11368799869640821)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_approve )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11349378392640734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11348502992640728)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11350879793640746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11349700557640736)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11351944409640752)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11351131040640747)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11353124471640757)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11352359486640753)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11354304846640762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11353528342640758)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11355564500640766)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11354797768640763)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11356784989640771)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11355973111640768)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11357506715640774)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11357175791640772)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11359131543640780)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11357922419640776)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11344156520640710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'RELEASE'
,p_button_static_id=>'RELEASE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Release'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_release )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11344587942640713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_DELEGATE_DIALOG'
,p_button_static_id=>'OPEN_DELEGATE_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Delegate'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_delegate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11344947335640715)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_PRIORITY_DIALOG'
,p_button_static_id=>'OPEN_PRIORITY_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Change Priority'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_priority )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11345331638640717)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_DUE_DIALOG'
,p_button_static_id=>'OPEN_DUE_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_due_date )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11345720323640718)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_REQUEST_INFORMATION_DIALOG'
,p_button_static_id=>'OPEN_REQUEST_INFORMATION_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Request Information'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_request_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11346175159640719)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_SUBMIT_INFORMATION_DIALOG'
,p_button_static_id=>'OPEN_SUBMIT_INFORMATION_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Submit Information'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11346577414640721)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_INVITE_PARTICIPANT_DIALOG'
,p_button_static_id=>'OPEN_INVITE_PARTICIPANT_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_add_owner )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11346994598640722)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_REMOVE_PARTICIPANT_DIALOG'
,p_button_static_id=>'OPEN_REMOVE_PARTICIPANT_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_remove_owner )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11347320814640724)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'OPEN_CANCEL_TASK_DIALOG'
,p_button_static_id=>'OPEN_CANCEL_TASK_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_cancel )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11347786061640725)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11343793053640706)
,p_button_name=>'RENEW'
,p_button_static_id=>'RENEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Renew Task'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_renew )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11348149187640726)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11342502794640702)
,p_button_name=>'OPEN_EDIT_PARAMETERS_DIALOG'
,p_button_static_id=>'OPEN_EDIT_PARAMETERS_DIALOG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(71249079879149558)
,p_button_image_alt=>'Edit'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.is_allowed (',
'    p_task_id   => :P61_TASK_ID,',
'    p_operation => apex_approval.c_task_op_set_params )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'u-pullLeft'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11391595242640909)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P61_TASK_ID:&P61_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11338166041640672)
,p_name=>'P61_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11338548561640677)
,p_name=>'P61_SUCCESS_MESSAGE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11348913553640731)
,p_name=>'P61_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11348502992640728)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_task_delegates ( p_task_id => :P61_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11350111536640738)
,p_name=>'P61_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11349700557640736)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P61_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11351557514640749)
,p_name=>'P61_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11351131040640747)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P61_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:CLEAR-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'time_increment', '5',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11352744485640755)
,p_name=>'P61_REQUEST_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11352359486640753)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11353942941640760)
,p_name=>'P61_SUBMIT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11353528342640758)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11355194666640765)
,p_name=>'P61_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11354797768640763)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(71247917898149556)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11356366093640770)
,p_name=>'P61_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11355973111640768)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_task_delegates ( p_task_id => :P61_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11358317105640778)
,p_name=>'P61_PARAMETER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11357922419640776)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_label,',
'       param_static_id',
'  from apex_task_parameters',
' where task_id = :P61_TASK_ID',
'   and is_updatable = ''Y'''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11358721339640779)
,p_name=>'P61_NEW_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11357922419640776)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(71247917898149556)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11364795604640802)
,p_name=>'P61_ALL_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11359571656640782)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P61_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(71246411215149554)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11365141444640804)
,p_name=>'P61_COMMENT_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11359571656640782)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11366350222640810)
,p_name=>'P61_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11365932219640808)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P61_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(71246411215149554)
,p_item_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11384399947640880)
,p_validation_name=>'New Potential Owner'
,p_validation_sequence=>10
,p_validation=>'P61_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(11355564500640766)
,p_associated_item=>wwv_flow_imp.id(11355194666640765)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11384767315640884)
,p_validation_name=>'New Value'
,p_validation_sequence=>20
,p_validation=>'P61_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_when_button_pressed=>wwv_flow_imp.id(11359131543640780)
,p_associated_item=>wwv_flow_imp.id(11358721339640779)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11370789762640829)
,p_name=>'Delegate'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11344587942640713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11371106368640832)
,p_event_id=>wwv_flow_imp.id(11370789762640829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11348502992640728)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11378713294640861)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11379199772640862)
,p_event_id=>wwv_flow_imp.id(11378713294640861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11359571656640782)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11371699873640838)
,p_name=>'Change Priority'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11344947335640715)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11372094077640839)
,p_event_id=>wwv_flow_imp.id(11371699873640838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11349700557640736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11379676251640864)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11380056505640866)
,p_event_id=>wwv_flow_imp.id(11379676251640864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11366794201640811)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11372597440640841)
,p_name=>'Change Due Date'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11345331638640717)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11372956645640842)
,p_event_id=>wwv_flow_imp.id(11372597440640841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11351131040640747)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11373456451640844)
,p_name=>'Request Information'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11345720323640718)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11373825309640845)
,p_event_id=>wwv_flow_imp.id(11373456451640844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11352359486640753)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11374293519640847)
,p_name=>'Submit Information'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11346175159640719)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11374659767640848)
,p_event_id=>wwv_flow_imp.id(11374293519640847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11353528342640758)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11375173016640850)
,p_name=>'Invite Participant'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11346577414640721)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11375581764640851)
,p_event_id=>wwv_flow_imp.id(11375173016640850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11354797768640763)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11376001699640852)
,p_name=>'Remove Participant'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11346994598640722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11376448718640854)
,p_event_id=>wwv_flow_imp.id(11376001699640852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11355973111640768)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11376993658640855)
,p_name=>'Open Cancel Task Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11347320814640724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11377393789640856)
,p_event_id=>wwv_flow_imp.id(11376993658640855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11357175791640772)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11377801941640858)
,p_name=>'Edit Parameters'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11348149187640726)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11378272736640859)
,p_event_id=>wwv_flow_imp.id(11377801941640858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11357922419640776)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11380567435640867)
,p_name=>'Add Comment'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11365505865640807)
,p_condition_element=>'P61_COMMENT_TEXT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11380994589640869)
,p_event_id=>wwv_flow_imp.id(11380567435640867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_approval.add_task_comment(',
'    p_task_id => :P61_TASK_ID,',
'    p_text    => :P61_COMMENT_TEXT);'))
,p_attribute_02=>'P61_TASK_ID,P61_COMMENT_TEXT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11381427669640871)
,p_event_id=>wwv_flow_imp.id(11380567435640867)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11359571656640782)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11381968915640872)
,p_event_id=>wwv_flow_imp.id(11380567435640867)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_COMMENT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11382472389640874)
,p_event_id=>wwv_flow_imp.id(11380567435640867)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_COMMENT_TEXT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11382958158640875)
,p_event_id=>wwv_flow_imp.id(11380567435640867)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11366794201640811)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11383429301640877)
,p_name=>'Cancel'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11369128372640823)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11383872881640878)
,p_event_id=>wwv_flow_imp.id(11383429301640877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11385128843640885)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11369597817640824)
,p_internal_uid=>11385128843640885
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11385518921640888)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Approve'
,p_attribute_01=>'APPROVE_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11370317271640828)
,p_process_success_message=>'Task approved'
,p_internal_uid=>11385518921640888
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11385966266640890)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Reject'
,p_attribute_01=>'REJECT_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11369990413640825)
,p_process_success_message=>'Task rejected'
,p_internal_uid=>11385966266640890
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11386334282640891)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11344156520640710)
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>11386334282640891
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11386767831640893)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_04=>'P61_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11349378392640734)
,p_process_success_message=>'Task delegated to &P61_NEW_OWNER!HTML.'
,p_internal_uid=>11386767831640893
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11387164553640894)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_05=>'P61_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11350879793640746)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>11387164553640894
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11387540158640895)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_06=>'P61_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11351944409640752)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>11387540158640895
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11387976904640897)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_03=>'&P61_REQUEST_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11353124471640757)
,p_process_success_message=>'Information requested'
,p_internal_uid=>11387976904640897
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11388382109640898)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_03=>'&P61_SUBMIT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11354304846640762)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>11388382109640898
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11388796423640899)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_04=>'P61_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11355564500640766)
,p_process_success_message=>'Participant &P61_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>11388796423640899
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11389123517640900)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_04=>'P61_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11356784989640771)
,p_process_success_message=>'Participant &P61_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>11389123517640900
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11389577150640902)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11357506715640774)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>11389577150640902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11389941665640903)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_09=>'P61_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11347786061640725)
,p_process_success_message=>'Task renewed'
,p_internal_uid=>11389941665640903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11390354611640905)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P61_TASK_ID'
,p_attribute_10=>'P61_PARAMETER'
,p_attribute_11=>'P61_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11359131543640780)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>11390354611640905
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11390710235640906)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Success Message'
,p_process_sql_clob=>':P61_SUCCESS_MESSAGE := apex_application.g_print_success_message;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11390710235640906
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11391163678640907)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_process_success_message=>'&P61_SUCCESS_MESSAGE.'
,p_internal_uid=>11391163678640907
);
wwv_flow_imp.component_end;
end;
/
