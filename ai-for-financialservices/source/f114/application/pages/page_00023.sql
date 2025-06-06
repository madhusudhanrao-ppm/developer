prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Customer Recognition'
,p_alias=>'CUSTOMER-RECOGNITION'
,p_step_title=>'Customer Recognition'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(71714507687943573)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107940574870718402)
,p_plug_name=>'right'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100369240584819105)
,p_plug_name=>'Customer Profile'
,p_parent_plug_id=>wwv_flow_imp.id(107940574870718402)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'select * from FINBANK_ACCOUNTS where profile = ( SELECT LABEL1 FROM cndemo_document_ai_docs WHERE DOCUMENT_ID = :P23_DOCUMENT_ID )'
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_ajax_items_to_submit=>'P23_DOCUMENT_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369256050819106)
,p_name=>'ID_1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Id 1'
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
 p_id=>wwv_flow_imp.id(100369355568819107)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369452926819108)
,p_name=>'ACC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Acc Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369627112819109)
,p_name=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369651321819110)
,p_name=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369799140819111)
,p_name=>'PHONE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369884096819112)
,p_name=>'ACC_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Acc Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369983219819113)
,p_name=>'JOB_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Job Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100370066086819114)
,p_name=>'MANAGER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Manager Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100370173180819115)
,p_name=>'DEPARTMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Department Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100370309980819116)
,p_name=>'IS_FRAUD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Is Fraud'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100370409833819117)
,p_name=>'PROFILE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Profile'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100370544786819118)
,p_name=>'FULL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113778805673913698)
,p_plug_name=>'top_right'
,p_parent_plug_id=>wwv_flow_imp.id(107940574870718402)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113779045624913701)
,p_plug_name=>'Response'
,p_parent_plug_id=>wwv_flow_imp.id(113778805673913698)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113779370291913704)
,p_plug_name=>'AB'
,p_parent_plug_id=>wwv_flow_imp.id(113779045624913701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107939377835718390)
,p_plug_name=>'Response'
,p_parent_plug_id=>wwv_flow_imp.id(113779370291913704)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT file_name ',
', label1',
', label1_score ',
', label2',
', label2_score ',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'',
'/*',
'SELECT file_name ',
', label1',
', label1_score',
', label2',
', label2_score ',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'*/'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P23_DOCUMENT_ID'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(100196083710913533)
,p_region_id=>wwv_flow_imp.id(107939377835718390)
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
 p_id=>wwv_flow_imp.id(100197795441913539)
,p_chart_id=>wwv_flow_imp.id(100196083710913533)
,p_seq=>10
,p_name=>'Label 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT file_name ',
', label1',
', (label1_score * 100) label1_score',
', label2',
', (label2_score * 100) label2_score',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'',
'',
'/*',
'SELECT file_name ',
', label1',
', label1_score ',
', label2',
', label2_score ',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'*/'))
,p_ajax_items_to_submit=>'P23_DOCUMENT_ID'
,p_items_value_column_name=>'LABEL1_SCORE'
,p_items_label_column_name=>'LABEL1'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(100198431100913543)
,p_chart_id=>wwv_flow_imp.id(100196083710913533)
,p_seq=>20
,p_name=>'Label 2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT file_name ',
', label1',
', (label1_score * 100) label1_score',
', label2',
', (label2_score * 100) label2_score',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'',
'/*',
'SELECT file_name ',
', label1',
', label1_score',
', label2',
', label2_score ',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P23_DOCUMENT_ID',
'*/'))
,p_ajax_items_to_submit=>'P23_DOCUMENT_ID'
,p_items_value_column_name=>'LABEL2_SCORE'
,p_items_label_column_name=>'LABEL2'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(100196606245913536)
,p_chart_id=>wwv_flow_imp.id(100196083710913533)
,p_axis=>'x'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(100197152582913538)
,p_chart_id=>wwv_flow_imp.id(100196083710913533)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'% Prediction as Value'
,p_title_font_color=>'#000000'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
 p_id=>wwv_flow_imp.id(115388103239151194)
,p_plug_name=>'AA'
,p_parent_plug_id=>wwv_flow_imp.id(113779045624913701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111700649104409869)
,p_plug_name=>'left'
,p_parent_plug_id=>wwv_flow_imp.id(115388103239151194)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117406233027998498)
,p_plug_name=>'rg'
,p_parent_plug_id=>wwv_flow_imp.id(111700649104409869)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696228095789197122)
,p_plug_name=>'Process New Customer Image'
,p_parent_plug_id=>wwv_flow_imp.id(111700649104409869)
,p_icon_css_classes=>'fa-file-play'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113779129585913702)
,p_plug_name=>'B'
,p_parent_plug_id=>wwv_flow_imp.id(113778805673913698)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113614463971766649)
,p_plug_name=>'face'
,p_parent_plug_id=>wwv_flow_imp.id(113779129585913702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'        <iframe title="Mel Gibson" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src="https://sketchfab.com/models/3e811e16da77405b8d44f00810cdc568/embed?autostart=1&ui_theme=dark&dnt=1"> </iframe> ',
'          </div>'))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P23_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696771100771327971)
,p_plug_name=>'Processed Image'
,p_parent_plug_id=>wwv_flow_imp.id(113779129585913702)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(696770685855327967)
,p_plug_name=>'Image'
,p_parent_plug_id=>wwv_flow_imp.id(696771100771327971)
,p_icon_css_classes=>'fa-file-text-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:i-h640:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=RENDER_IMAGE:NO::" ',
'frameborder="0" border="0" cellspacing="0" style="border-style: none; width: 600px; height: 1800px;">',
'</iframe>',
'</p>'))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169873183141199890)
,p_plug_name=>'oda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="en-US" class="no-js" >',
'<head>',
'    <script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'    <script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'    <link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
'',
'</head>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261708366796281575)
,p_plug_name=>'Facial Recognition'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(71188248204149513)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100200943268913551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(117406233027998498)
,p_button_name=>'PROCESS_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process Image'
,p_icon_css_classes=>'fa-play'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100200495855913549)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(117406233027998498)
,p_button_name=>'Sample_Data'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Sample Images'
,p_button_redirect_url=>'https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/FaceRecognitionImages.zip'
,p_icon_css_classes=>'fa-download'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(100218847457913591)
,p_branch_name=>'Review Receipt'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:5:P6_DOCUMENT_ID:&P23_DOCUMENT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(100200943268913551)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111183517880300835)
,p_name=>'P23_RECEIPT_FILE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(696228095789197122)
,p_prompt=>'Customer Image'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(71246411215149554)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', 'Face Image',
  'file_types', 'image/jpeg,image/png,application/pdf',
  'max_file_size', '2000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111183769312300837)
,p_name=>'P23_DOCUMENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(696228095789197122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111710236268409959)
,p_name=>'P23_MODEL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111700649104409869)
,p_item_default=>'2'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100218441458913588)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IMAGE_AI_PK.process_file (p_apex_file_name => :P23_RECEIPT_FILE, v_id => 2, x_document_id => :P23_DOCUMENT_ID);',
'  --IMAGE_AI_PK.process_file (p_apex_file_name => :P23_RECEIPT_FILE, v_id => :P23_MODEL_NAME, x_document_id => :P23_DOCUMENT_ID);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(100200943268913551)
,p_internal_uid=>52925695294063284
);
wwv_flow_imp.component_end;
end;
/
