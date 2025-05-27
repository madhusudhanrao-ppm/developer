prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Tx by Name'
,p_alias=>'TX-BY-NAME'
,p_step_title=>'Tx by Name'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(71714507687943573)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220000618549404078)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219874300693299069)
,p_plug_name=>'Tx by Name'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       MERCHANT,',
'       FIRST_NAME,',
'       LAST_NAME, ',
'       CATEGORY,',
'       ID,',
'       C1, ',
'       to_char(TXDATE,''DD MON YYYY'') TXDATED,',
'       TRANSACTIONTYPE, ',
'       unistr(''$'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'') "DEBIT", ',
'       unistr(''$'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'') "CREDIT",  ',
'       TXDATE ',
'  from TRANSMASTER',
' where ',
' upper(transactiontype) like upper(''%''||:P10_TX||''%'')  ',
' OR ',
'upper(MERCHANT) like upper(''%''||:P10_TX||''%'') ',
'OR ',
'upper(FIRST_NAME) like upper(''%''||:P10_TX||''%'') ',
'OR ',
'upper(LAST_NAME) like upper(''%''||:P10_TX||''%'') ',
'OR',
'upper(CATEGORY) like upper(''%''||:P10_TX||''%'') ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10_TX'
,p_prn_page_header=>'Tx by Name'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93589547157784408)
,p_name=>'MERCHANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Merchant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&MERCHANT.'
,p_link_text=>'&MERCHANT.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93589689618784409)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&FIRST_NAME.'
,p_link_text=>'&FIRST_NAME.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93589713984784410)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&LAST_NAME.'
,p_link_text=>'&LAST_NAME.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93590771868784420)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&CATEGORY.'
,p_link_text=>'&CATEGORY.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(219878608874299099)
,p_name=>'TXDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TXDATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(219879600008299100)
,p_name=>'TRANSACTIONTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTIONTYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Tx Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&TRANSACTIONTYPE.'
,p_link_text=>'&TRANSACTIONTYPE.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220000388127404076)
,p_name=>'DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEBIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Debit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>43
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220000543312404077)
,p_name=>'CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Credit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>43
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(220001066455404082)
,p_name=>'TXDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TXDATED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'TX Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT:&FD.,&LD.'
,p_link_text=>'&TXDATED.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(219874868310299069)
,p_internal_uid=>172582122145448765
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(219875194060299070)
,p_interactive_grid_id=>wwv_flow_imp.id(219874868310299069)
,p_static_id=>'1198929'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(219875421448299071)
,p_report_id=>wwv_flow_imp.id(219875194060299070)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93610925713979575)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(93589547157784408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93611875439979582)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(93589689618784409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93612714520979586)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(93589713984784410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(93625954252086788)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(93590771868784420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99995969800528469)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(220001066455404082)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100241796579669833)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(220000388127404076)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100243200048669838)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(220000543312404077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(219879058390299099)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(219878608874299099)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(219880000629299100)
,p_view_id=>wwv_flow_imp.id(219875421448299071)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(219879600008299100)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220000260833404074)
,p_plug_name=>'buttonbar'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(337490249676851667)
,p_plug_name=>'Debit Chart'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P10_TX'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(71629810541412314)
,p_region_id=>wwv_flow_imp.id(337490249676851667)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(71631537914412315)
,p_chart_id=>wwv_flow_imp.id(71629810541412314)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID,',
'       TXDATE,',
'       TRANSACTIONTYPE,',
'       to_char(TXDATE,''DD MON YYYY'') txc,',
'       to_char(TXDATE,''YYMMDD'') rawdate,',
'       (''On Dt: <b>''||to_char(TXDATE,''DD MON YYYY'')||''</b><br/> Debited: <b>''||unistr(''$'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'')||''</b><br/> Tx: <b>''||TRANSACTIONTYPE||''</b>'') as TXDETAIL,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit", ',
'       ROUND(BALANCE,0) "BALANCE" ',
'  from TRANSMASTER',
' where (upper(transactiontype) like upper(''%''||:P10_TX||''%'')) AND DEBIT > 0',
' ORDER BY rawdate  ',
'/*',
'select ROWID,',
'       ID,',
'       TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit", ',
'       ROUND(BALANCE,0) "BALANCE" ',
'  from TRANSMASTER',
' where upper(transactiontype) like upper(''%''||:P10_TX||''%'') ',
' */',
'',
' /*',
' select  ',
'       ID, ',
'        TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit",  ',
'       unistr(''\20B9'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'') "DEBITAMT", ',
'       unistr(''\20B9'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'') "CREDITAMT" ,',
'       ''Debit'' series ',
'  from TRANSMASTER ',
' where upper(transactiontype) like upper(''%''||:P10_TX||''%'') ',
' union',
' select  ',
'       ID,',
'        TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit" ,',
'       unistr(''\20B9'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'') "DEBITAMT", ',
'       unistr(''\20B9'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'') "CREDITAMT" ,',
'       ''Credit'' series ',
'  from TRANSMASTER',
' where upper(transactiontype) like upper(''%''||:P10_TX||''%'') ',
' */'))
,p_ajax_items_to_submit=>'P10_FROMDT,P10_TODT'
,p_series_name_column_name=>'ID'
,p_items_value_column_name=>'Debit'
,p_group_name_column_name=>'TXDETAIL'
,p_group_short_desc_column_name=>'TXDETAIL'
,p_items_label_column_name=>'TXC'
,p_items_short_desc_column_name=>'TXDETAIL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71630935437412315)
,p_chart_id=>wwv_flow_imp.id(71629810541412314)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Debit Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#F50A44'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71630283860412315)
,p_chart_id=>wwv_flow_imp.id(71629810541412314)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Debit Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#F0094B'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_currency=>'INR'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(337493510445851700)
,p_plug_name=>'Credit Chart'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P10_TX'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(71632545223412317)
,p_region_id=>wwv_flow_imp.id(337493510445851700)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(71634223485412318)
,p_chart_id=>wwv_flow_imp.id(71632545223412317)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'      ID, ',
'      to_char( TXDATE, ''DD/MM/YYYY'' ) TXDATE,',
'      to_char(TXDATE,''YYMMDD'') rawdate,',
'      to_char(TXDATE,''DD MON YYYY'') txc,',
'      TRANSACTIONTYPE,',
'      (''On Dt: <b>''||to_char(TXDATE,''DD MON YYYY'')||''</b><br/> Credited: <b>''||unistr(''$'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'')||''</b><br/> Tx: <b>''||TRANSACTIONTYPE||''</b>'') as TXDETAIL,',
'      ROUND(DEBIT,0) "Debit", ',
'      ROUND(CREDIT,0) "Credit", ',
'      ROUND(BALANCE,0) "BALANCE" ,',
'      unistr(''$'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'') "DEBITAMT", ',
'      unistr(''$'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'') "CREDITAMT" ',
' from TRANSMASTER ',
'where upper(transactiontype) like upper(''%''||:P10_TX||''%'') AND CREDIT > 0',
'ORDER BY rawdate  '))
,p_ajax_items_to_submit=>'P10_FROMDT,P10_TODT'
,p_items_value_column_name=>'Credit'
,p_group_name_column_name=>'TXDETAIL'
,p_group_short_desc_column_name=>'TXDETAIL'
,p_items_label_column_name=>'TXC'
,p_items_short_desc_column_name=>'TXDETAIL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&TRANSACTIONTYPE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71633598399412317)
,p_chart_id=>wwv_flow_imp.id(71632545223412317)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Credit Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#0D5C05'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_currency=>'INR'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71633041149412317)
,p_chart_id=>wwv_flow_imp.id(71632545223412317)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Credit Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#0D5C05'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382403024525641860)
,p_plug_name=>'DrCrSum'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select unistr(''$'') ||TO_CHAR(sum(DEBIT), ''999,99,99,99,999'') "Total Debit", unistr(''$'') ||TO_CHAR(sum(CREDIT), ''999,99,99,99,999'')  "Total Credit" FROM',
'(',
'    select ROWID,',
'       ID, ',
'       TXDATE,',
'       TRANSACTIONTYPE, ',
'       DEBIT,',
'       CREDIT,',
'       BALANCE ',
'  from TRANSMASTER',
'  where upper(transactiontype) like upper(''%''||:P10_TX||''%'') ',
')',
'',
'-- unistr(''\20B9'') || ROUND(sum(DEBIT),0)  "Total Debit"   , '))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P10_TX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(382403540270641865)
,p_name=>'Total Debit'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Total Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(382403680468641866)
,p_name=>'Total Credit'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Total Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15286536114234384123)
,p_plug_name=>'Transaction Chart'
,p_parent_plug_id=>wwv_flow_imp.id(220000618549404078)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P10_FROMDT,P10_TODT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(71618721131412296)
,p_region_id=>wwv_flow_imp.id(15286536114234384123)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(71621029291412298)
,p_chart_id=>wwv_flow_imp.id(71618721131412296)
,p_seq=>10
,p_name=>'Debit'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       MERCHANT,',
'       FIRST_NAME,',
'       LAST_NAME, ',
'       CATEGORY,',
'       ID,',
'       C1, ',
'      --to_char(TXDATE,''DD MON YYYY'') TXDATED,',
'       TRANSACTIONTYPE, ',
'       DEBIT,',
'       CREDIT,',
'       TXDATE ',
'  from TRANSMASTER',
' where ',
' upper(transactiontype) like upper(''%''||:P10_TX||''%'')  ',
' OR ',
'upper(MERCHANT) like upper(''%''||:P10_TX||''%'') ',
'OR ',
'upper(FIRST_NAME) like upper(''%''||:P10_TX||''%'') ',
'OR ',
'upper(LAST_NAME) like upper(''%''||:P10_TX||''%'') ',
'OR',
'upper(CATEGORY) like upper(''%''||:P10_TX||''%'') ',
'',
'/*',
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit'',',
'trunc (TXDATE , ''YEAR'')  FdYr ,',
'add_months(trunc(TXDATE,''YEAR''),12)-1 LdYr',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'*/',
'/*',
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit''',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'*/',
'',
'/*',
'select ',
'Year,',
' sum(DEBIT) "Total Debit"  , ''Debit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'')  ',
' union ',
' select ',
'Year, ',
' sum(CREDIT)  "Total Credit" , ''Credit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'') ',
'',
'*/',
'',
'',
'/*',
'select ROWID,',
'       ID, ',
'       to_char( TXDATE, ''DD/MM/YYYY'' ) TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit", ',
'       ROUND(BALANCE,0) "BALANCE" ',
'  from TRANSMASTER',
'  where',
'  TXDATE BETWEEN TO_DATE (:P10_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P10_TODT, ''mm/dd/yyyy'')',
'',
'  select null link, EXTRACT(Year FROM AYDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Credit'' series,   Credit  from TRANSMASTER',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_INCOME'' series,  TOTAL_INCOME  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_TAX'' series,   TOTAL_TAX  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''SAVINGS'' series,   ( TOTAL_INCOME - TOTAL_TAX ) as SAVINGS  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''AGP'' series,   AGP_SALARY  from aydata',
'',
'  */'))
,p_ajax_items_to_submit=>'P10_FROMDT,P10_TODT'
,p_series_type=>'bar'
,p_series_name_column_name=>'MERCHANT'
,p_items_value_column_name=>'DEBIT'
,p_items_z_column_name=>'DEBIT'
,p_items_label_column_name=>'TXDATE'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT:&FDYR.,&LDYR.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71620383893412297)
,p_chart_id=>wwv_flow_imp.id(71618721131412296)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'y2'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71619177466412297)
,p_chart_id=>wwv_flow_imp.id(71618721131412296)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Credit Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#0D5C05'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(71619756459412297)
,p_chart_id=>wwv_flow_imp.id(71618721131412296)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Credit Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#0D5C05'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71627949260412310)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(220000260833404074)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71628394554412311)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(220000260833404074)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_image_alt=>'Back'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:history.go(-1)'
,p_icon_css_classes=>'fa-backward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106941436954873719)
,p_name=>'P10_CATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(220000260833404074)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217155387374708135)
,p_name=>'P10_TX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(220000260833404074)
,p_prompt=>'Tx'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-calendar-arrow-up'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71637082119412321)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_TX'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71637607126412322)
,p_event_id=>wwv_flow_imp.id(71637082119412321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(219874300693299069)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71638124172412323)
,p_event_id=>wwv_flow_imp.id(71637082119412321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(337493510445851700)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71638620174412323)
,p_event_id=>wwv_flow_imp.id(71637082119412321)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382403024525641860)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71639138300412323)
,p_event_id=>wwv_flow_imp.id(71637082119412321)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(337490249676851667)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71639532885412324)
,p_name=>'saveda'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71627949260412310)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71640037310412324)
,p_event_id=>wwv_flow_imp.id(71639532885412324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' INSERT INTO LOOKUPS (LVAL, LCAT) values (:P10_TX, :P10_CATEGORY);',
'END;'))
,p_attribute_02=>'P10_TX,P10_CATEGORY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71640518547412324)
,p_event_id=>wwv_flow_imp.id(71639532885412324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Data Saved !'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71636160907412320)
,p_name=>'catda'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_CATEGORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71636660750412321)
,p_event_id=>wwv_flow_imp.id(71636160907412320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
