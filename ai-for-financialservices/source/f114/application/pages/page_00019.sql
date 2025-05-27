prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Stock Prediction'
,p_alias=>'STOCK-PREDICTION'
,p_step_title=>'Stock Prediction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(71714507687943573)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98201880805106920)
,p_plug_name=>'Transaction - Actuals v/s Prediction'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   ''ACTUAL STOCK VALUE'' CASE, PRICING_DATE DT, CLOSING_VAL , 0 AS LOWER, 0 AS UPPER  FROM VIEW_EBA_DEMO_CHART_STOCKS ',
'        WHERE PRICING_DATE = (SELECT  MAX(PRICING_DATE) FROM VIEW_EBA_DEMO_CHART_STOCKS)',
'UNION ALL',
'SELECT  ''PREDICTED STOCK VALUE'', CASE_ID C, PREDICTION D, LOWER, UPPER  FROM DM$VPSTOCK_FORECAST_2 ',
'WHERE CASE_ID = (SELECT  MAX(CASE_ID) FROM DM$VPSTOCK_FORECAST_2 )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transaction - Actuals v/s Prediction'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(98202780592106929)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMOUSER'
,p_internal_uid=>50910034427256625
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98203406601106935)
,p_db_column_name=>'CLOSING_VAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Closing Val'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98204410343106945)
,p_db_column_name=>'CASE'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Case'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98204469778106946)
,p_db_column_name=>'DT'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Dt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98204581898106947)
,p_db_column_name=>'LOWER'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Lower'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(98204731290106948)
,p_db_column_name=>'UPPER'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Upper'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99382806070655579)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'520901'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLOSING_VAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98203899200106940)
,p_plug_name=>'Predictions v/s Actuals'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(98204015830106941)
,p_region_id=>wwv_flow_imp.id(98203899200106940)
,p_chart_type=>'line'
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
 p_id=>wwv_flow_imp.id(98204759425106949)
,p_chart_id=>wwv_flow_imp.id(98204015830106941)
,p_seq=>20
,p_name=>'Actuals'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT * FROM   DM$VPSTOCK_FORECAST_2'
,p_series_name_column_name=>'PARTITION_NAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'CASE_ID'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(98204246289106944)
,p_chart_id=>wwv_flow_imp.id(98204015830106941)
,p_axis=>'y'
,p_is_rendered=>'on'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(98204204854106943)
,p_chart_id=>wwv_flow_imp.id(98204015830106941)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(98204894377106950)
,p_plug_name=>'Machine Learning Algorithm'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<b>Exponential Smoothing Models</b><br/><br/>',
'Exponential Smoothing models are a broad class of forecasting models that are intuitive, flexible, and extensible.',
'<br/><br/>',
'Members of this class include simple, single parameter models that predict the future as a linear combination of a previous level and a current shock. Extensions can include parameters for linear or non-linear trend, trend damping, simple or complex '
||'seasonality, related series, various forms of non-linearity in the forecasting equations, and handling of irregular time series.',
'<br/><br/>',
'Exponential smoothing assumes that a series extends infinitely into the past, but that influence of past on future, decays smoothly and exponentially fast. The smooth rate of decay is expressed by one or more smoothing constants. The smoothing consta'
||'nts are parameters that the model estimates. The assumption is made practical for modeling real world data by using an equivalent recursive formulation that is only expressed in terms of an estimate of the current level based on prior history and a s'
||'hock to that estimate dependent on current conditions only.The procedure requires an estimate for the time period just prior to the first observation, that encapsulates all prior history. This initial observation is an additional model parameter whos'
||'e value is estimated by the modeling procedure',
'<br/><br/>',
'<a href=''https://en.wikipedia.org/wiki/Exponential_smoothing'' target=''_new''> Exponential Smooting </a>',
' '))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114154742698929845)
,p_plug_name=>'Transaction Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(114154795588929846)
,p_region_id=>wwv_flow_imp.id(114154742698929845)
,p_chart_type=>'stock'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_stock_render_as=>'candlestick'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(114154873644929847)
,p_chart_id=>wwv_flow_imp.id(114154795588929846)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link , PRICING_DATE label , OPENING_VAL , LOW , HIGH , CLOSING_VAL, VOLUME, PRICING_TIMESTAMP_TZ',
'from eba_demo_chart_stocks',
'where stock_code = ''METR'' ',
'--AND rownum < 10',
'order by PRICING_TIMESTAMP_TZ',
'--order by PRICING_DATE'))
,p_items_low_column_name=>'LOW'
,p_items_high_column_name=>'HIGH'
,p_items_open_column_name=>'OPENING_VAL'
,p_items_close_column_name=>'CLOSING_VAL'
,p_items_volume_column_name=>'VOLUME'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(114154974736929848)
,p_chart_id=>wwv_flow_imp.id(114154795588929846)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-long'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(114155060312929849)
,p_chart_id=>wwv_flow_imp.id(114154795588929846)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'end'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114155401701929852)
,p_plug_name=>'Status Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(114155530785929853)
,p_region_id=>wwv_flow_imp.id(114155401701929852)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(114155642590929854)
,p_chart_id=>wwv_flow_imp.id(114155530785929853)
,p_seq=>10
,p_name=>'Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  (select count(*) from cc_fd) max_value,',
'         (select count(*) from cc_fd where status != ''Active'') value,',
'       2 low,',
'       (select count(*) from cc_fd) high',
'FROM   cc_fd'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#f50000'
,p_items_label_rendered=>true
,p_items_label_position=>'start'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_reference_line_values=>'0,5'
,p_reference_line_colors=>'yellow'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222947770245001405)
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
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(536811230639342803)
,p_plug_name=>'Transaction Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(99367476783589902)
,p_region_id=>wwv_flow_imp.id(536811230639342803)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
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
,p_time_axis_type=>'auto'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(99369057325589908)
,p_chart_id=>wwv_flow_imp.id(99367476783589902)
,p_seq=>10
,p_name=>'OnHold'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link , TX_TIMESTAMP label, TOTAL_PAY TP, TOTAL_PAY * 100 AS TPP, TRANSACTION_STATUS FROM RETAIL_SHOPPING_FD',
'WHERE TRANSACTION_STATUS = ''OnHold''',
'',
'/*',
'SELECT null link , PRICING_DATE label , OPENING_VAL , LOW , HIGH , CLOSING_VAL, VOLUME, PRICING_TIMESTAMP_TZ',
'from eba_demo_chart_stocks',
'where stock_code = ''METR'' ',
'--AND rownum < 10',
'order by PRICING_TIMESTAMP_TZ',
'--order by PRICING_DATE',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TP'
,p_items_label_column_name=>'LABEL'
,p_color=>'#ffc300'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(114155206962929850)
,p_chart_id=>wwv_flow_imp.id(99367476783589902)
,p_seq=>20
,p_name=>'Rejected'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link , TX_TIMESTAMP label, TOTAL_PAY TP, TOTAL_PAY * 100 AS TPP, TRANSACTION_STATUS FROM RETAIL_SHOPPING_FD',
'WHERE TRANSACTION_STATUS = ''REJECTED''',
'',
'/*',
'SELECT null link , PRICING_DATE label , OPENING_VAL , LOW , HIGH , CLOSING_VAL, VOLUME, PRICING_TIMESTAMP_TZ',
'from eba_demo_chart_stocks',
'where stock_code = ''METR'' ',
'--AND rownum < 10',
'order by PRICING_TIMESTAMP_TZ',
'--order by PRICING_DATE',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TP'
,p_items_label_column_name=>'LABEL'
,p_color=>'#a80606'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(114155327304929851)
,p_chart_id=>wwv_flow_imp.id(99367476783589902)
,p_seq=>30
,p_name=>'Approved'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link , TX_TIMESTAMP label, TOTAL_PAY TP, TOTAL_PAY * 100 AS TPP, TRANSACTION_STATUS FROM RETAIL_SHOPPING_FD',
'WHERE TRANSACTION_STATUS = ''APPROVED''',
'',
'/*',
'SELECT null link , PRICING_DATE label , OPENING_VAL , LOW , HIGH , CLOSING_VAL, VOLUME, PRICING_TIMESTAMP_TZ',
'from eba_demo_chart_stocks',
'where stock_code = ''METR'' ',
'--AND rownum < 10',
'order by PRICING_TIMESTAMP_TZ',
'--order by PRICING_DATE',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TP'
,p_items_label_column_name=>'LABEL'
,p_color=>'#037603'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(99368033477589905)
,p_chart_id=>wwv_flow_imp.id(99367476783589902)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-long'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(99368643445589906)
,p_chart_id=>wwv_flow_imp.id(99367476783589902)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'end'
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
wwv_flow_imp.component_end;
end;
/
