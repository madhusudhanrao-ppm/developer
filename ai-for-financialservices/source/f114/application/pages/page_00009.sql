prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Tx Reports'
,p_alias=>'TX-REPORTS'
,p_step_title=>'Tx Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(71714507687943573)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(262024096339488413)
,p_plug_name=>'rightside'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4030027447655834626)
,p_plug_name=>'Transactions'
,p_parent_plug_id=>wwv_flow_imp.id(262024096339488413)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(71185679638149511)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69266182400222437)
,p_plug_name=>'Duplicate Withdrawals'
,p_parent_plug_id=>wwv_flow_imp.id(4030027447655834626)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69266336592222438)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(69266182400222437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select TXDATE,  DEBIT, TRANSACTIONTYPE,   MERCHANT, ',
'CATEGORY, FIRST_NAME, LAST_NAME, STREET ',
'from TRANSMASTER  where DEBIT in ',
'(',
'   select  DEBIT   from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   and DEBIT > 0',
'   group by DEBIT, TXDATE having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'and DEBIT > 0 '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Details'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69266384910222439)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HCUSER'
,p_internal_uid=>21973638745372135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69266467218222440)
,p_db_column_name=>'TXDATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Txdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69266627682222441)
,p_db_column_name=>'DEBIT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69266725237222442)
,p_db_column_name=>'TRANSACTIONTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transactiontype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69266783081222443)
,p_db_column_name=>'MERCHANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Merchant'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#MERCHANT#'
,p_column_linktext=>'#MERCHANT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69266903291222444)
,p_db_column_name=>'CATEGORY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#CATEGORY#'
,p_column_linktext=>'#CATEGORY#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69267031603222445)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'First Name'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#FIRST_NAME#'
,p_column_linktext=>'#FIRST_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69267098075222446)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Name'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#LAST_NAME#'
,p_column_linktext=>'#LAST_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69267224969222447)
,p_db_column_name=>'STREET'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71667757801739420)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'243751'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXDATE:DEBIT:TRANSACTIONTYPE:MERCHANT:CATEGORY:FIRST_NAME:LAST_NAME:STREET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71738701881141017)
,p_plug_name=>'Details 2'
,p_parent_plug_id=>wwv_flow_imp.id(69266182400222437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select T.TXDATE,  T.DEBIT, T.TRANSACTIONTYPE,   T.MERCHANT, ',
'T.CATEGORY, T.FIRST_NAME, T.LAST_NAME, T.STREET, M.STATUS  ',
'from TRANSMASTER T, MERCHANTS M  where T.DEBIT in ',
'(',
'   select  DEBIT   from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   and DEBIT > 0',
'   group by DEBIT, TXDATE having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'and DEBIT > 0 ',
'AND T.MERCHANT = M.MERCHANT',
'ORDER BY M.STATUS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Details 2'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(71738830699141018)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HCUSER'
,p_internal_uid=>24446084534290714
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71738857064141019)
,p_db_column_name=>'TXDATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Txdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71738968138141020)
,p_db_column_name=>'DEBIT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739048195141021)
,p_db_column_name=>'TRANSACTIONTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transactiontype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739166986141022)
,p_db_column_name=>'MERCHANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Merchant'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#MERCHANT#'
,p_column_linktext=>'#MERCHANT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739257994141023)
,p_db_column_name=>'CATEGORY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#CATEGORY#'
,p_column_linktext=>'#CATEGORY#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739415587141024)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'First Name'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#FIRST_NAME#'
,p_column_linktext=>'#FIRST_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739509473141025)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Name'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#LAST_NAME#'
,p_column_linktext=>'#LAST_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739581088141026)
,p_db_column_name=>'STREET'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71739716341141027)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71759674959304104)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'244670'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXDATE:DEBIT:TRANSACTIONTYPE:MERCHANT:CATEGORY:FIRST_NAME:LAST_NAME:STREET:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966406148573970)
,p_plug_name=>'Map'
,p_parent_plug_id=>wwv_flow_imp.id(69266182400222437)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(71603434848402471)
,p_region_id=>wwv_flow_imp.id(79966406148573970)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(71603935024402473)
,p_map_region_id=>wwv_flow_imp.id(71603434848402471)
,p_name=>'Transaction Map'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select TXDATE,  DEBIT, TRANSACTIONTYPE, LONGITUDE ,LATITUDE, MERCHANT, CREDIT,',
'CATEGORY, FIRST_NAME, LAST_NAME, STREET ',
'from TRANSMASTER  where DEBIT in ',
'(',
'   select  DEBIT   from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   and DEBIT > 0',
'   group by DEBIT, TXDATE having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'and DEBIT > 0',
' '))
,p_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Date: &TXDATE. <br/> ',
'Transaction Type: &TRANSACTIONTYPE. <br/> ',
'Merchant: &MERCHANT. <br/>',
'Name: &FIRST_NAME. &LAST_NAME. <br/>',
'Street: &STREET. <br/>',
'Debit: &DEBIT. <br/>'))
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91178787739982537)
,p_name=>'Duplicate Withdrawals'
,p_parent_plug_id=>wwv_flow_imp.id(69266182400222437)
,p_template=>wwv_flow_imp.id(71110656683149468)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Select TXDATE,  DEBIT,  TRANSACTIONTYPE, LONGITUDE ,LATITUDE, MERCHANT, CATEGORY, FIRST_NAME, LAST_NAME, STREET ',
'--from TRANSMASTER  where DEBIT in ',
'--(',
'  -- select DEBIT, TXDATE, TRANSACTIONTYPE,  LONGITUDE ,LATITUDE, MERCHANT, CATEGORY, FIRST_NAME, LAST_NAME, STREET',
'   --from TRANSMASTER where DEBIT in ',
'   --(',
'   select TXDATE, DEBIT, Count(*) as "Transaction Count" from TRANSMASTER ',
'   WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   and DEBIT > 0',
'   group by DEBIT, TXDATE having count(*) > 1 ',
'   --) ',
'    --and',
'   -- TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'    --and DEBIT > 0',
'    --having count(*) > 1 ',
'--) ',
'--and',
'--TXDATE BETWEEN TO_DATE ',
'--(:P9_FROMDT, ''mm/dd/yyyy'') ',
'--AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'--and DEBIT > 0'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(71214066555149528)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71589379656402434)
,p_query_column_id=>1
,p_column_alias=>'TXDATE'
,p_column_display_sequence=>10
,p_column_heading=>'Txdate'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT:#TXDATE#,#TXDATE#'
,p_column_linktext=>'#TXDATE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71590225793402435)
,p_query_column_id=>2
,p_column_alias=>'DEBIT'
,p_column_display_sequence=>20
,p_column_heading=>'Debit'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71589764672402434)
,p_query_column_id=>3
,p_column_alias=>'Transaction Count'
,p_column_display_sequence=>40
,p_column_heading=>'Transaction Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93559311966774542)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(4030027447655834626)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91182568644982575)
,p_plug_name=>'Transaction Data'
,p_parent_plug_id=>wwv_flow_imp.id(93559311966774542)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select TXDATE,  DEBIT, TRANSACTIONTYPE,   MERCHANT, ',
'CATEGORY, FIRST_NAME, LAST_NAME, STREET ',
'from TRANSMASTER  where DEBIT in ',
'(',
'   select  DEBIT   from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   and DEBIT > 0',
'   group by DEBIT, TXDATE having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'and DEBIT > 0 '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transaction Data'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(93559754511774546)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HCUSER'
,p_internal_uid=>46267008346924242
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93559876978774547)
,p_db_column_name=>'TXDATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Txdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93559907414774548)
,p_db_column_name=>'DEBIT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Debit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560100816774549)
,p_db_column_name=>'TRANSACTIONTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Transactiontype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560108071774550)
,p_db_column_name=>'MERCHANT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Merchant'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#MERCHANT#'
,p_column_linktext=>'#MERCHANT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560278301774551)
,p_db_column_name=>'CATEGORY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#CATEGORY#'
,p_column_linktext=>'#CATEGORY#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560360834774552)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'First Name'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:#FIRST_NAME#'
,p_column_linktext=>'#FIRST_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560439372774553)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93560519675774554)
,p_db_column_name=>'STREET'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(93593309807058221)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'220054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXDATE:DEBIT:TRANSACTIONTYPE:MERCHANT:CATEGORY:FIRST_NAME:LAST_NAME:STREET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101431224124558678)
,p_plug_name=>'Verify'
,p_parent_plug_id=>wwv_flow_imp.id(4030027447655834626)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101432894513558694)
,p_plug_name=>'Suspicious Debits ? (Withdrawals)'
,p_parent_plug_id=>wwv_flow_imp.id(101431224124558678)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TXDATE, DEBIT, TRANSACTIONTYPE from TRANSMASTER where DEBIT in (',
'   select DEBIT from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   group by DEBIT having count(*) > 1 ',
') and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'and DEBIT > 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Suspicious Debits ? (Withdrawals)'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101433073526558696)
,p_name=>'TXDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TXDATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Txdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(101433202487558697)
,p_name=>'DEBIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEBIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Debit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101433315934558698)
,p_name=>'TRANSACTIONTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTIONTYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Transactiontype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&TRANSACTIONTYPE.'
,p_link_text=>'&TRANSACTIONTYPE.'
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
 p_id=>wwv_flow_imp.id(101432925273558695)
,p_internal_uid=>54140179108708391
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(101459247283638302)
,p_interactive_grid_id=>wwv_flow_imp.id(101432925273558695)
,p_static_id=>'89048'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101459476440638302)
,p_report_id=>wwv_flow_imp.id(101459247283638302)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101459977389638303)
,p_view_id=>wwv_flow_imp.id(101459476440638302)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101433073526558696)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>211.67200000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101460830919638305)
,p_view_id=>wwv_flow_imp.id(101459476440638302)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(101433202487558697)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140.65599999999995
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101461730201638307)
,p_view_id=>wwv_flow_imp.id(101459476440638302)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(101433315934558698)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101433333570558699)
,p_plug_name=>'Suspicious Credits ? (Deposits)'
,p_parent_plug_id=>wwv_flow_imp.id(101431224124558678)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TXDATE,  CREDIT, TRANSACTIONTYPE from TRANSMASTER  where CREDIT in ',
'(',
'    select CREDIT from TRANSMASTER ',
'    WHERE ',
'    TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') ',
'    AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'    group by CREDIT having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE ',
'(:P9_FROMDT, ''mm/dd/yyyy'') ',
'AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')',
'and CREDIT > 0',
'',
'/*',
'select TXDATE, CREDIT, TRANSACTIONTYPE from TRANSMASTER  where CREDIT in ',
'(',
'    select CREDIT from TRANSMASTER WHERE ',
'    TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') ',
'    AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'    group by CREDIT having count(*) > 1 ',
') ',
'and',
'TXDATE BETWEEN TO_DATE ',
'(:P9_FROMDT, ''mm/dd/yyyy'') ',
'AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')',
'and CREDIT > 0',
'-------',
'select TXDATE, DEBIT, TRANSACTIONTYPE from TRANSMASTER where DEBIT in (',
'   select DEBIT from TRANSMASTER WHERE ',
'   TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'   group by DEBIT having count(*) > 1 ',
') and',
'TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'') ',
'*/'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Suspicious Credits ? (Deposits)'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101433547224558701)
,p_name=>'TXDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TXDATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Txdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(101433626006558702)
,p_name=>'CREDIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Credit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101433724670558703)
,p_name=>'TRANSACTIONTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTIONTYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transactiontype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&TRANSACTIONTYPE.'
,p_link_text=>'&TRANSACTIONTYPE.'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(101433469156558700)
,p_internal_uid=>54140722991708396
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(101472427908658852)
,p_interactive_grid_id=>wwv_flow_imp.id(101433469156558700)
,p_static_id=>'89180'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101472668125658852)
,p_report_id=>wwv_flow_imp.id(101472427908658852)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101473149486658854)
,p_view_id=>wwv_flow_imp.id(101472668125658852)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101433547224558701)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>219.64800000000002
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101474041632658856)
,p_view_id=>wwv_flow_imp.id(101472668125658852)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(101433626006558702)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.641
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101475012412658859)
,p_view_id=>wwv_flow_imp.id(101472668125658852)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(101433724670558703)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102426463789435090)
,p_plug_name=>'Dashboard'
,p_parent_plug_id=>wwv_flow_imp.id(4030027447655834626)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18740019126698474244)
,p_plug_name=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(102426463789435090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   var_id number;',
'   var_imageleft varchar2 (4000);',
'   var_imageright varchar2(4000);',
'   var_var2 varchar2(4000);',
'   tot_cred number := 0;',
'   tot_deb number := 0;',
'   var_url varchar2 (4000);',
'   sessval number;',
'',
'  Cursor C1 Is select',
'          Year, Month1, Month,',
'          unistr(''$'') ||TO_CHAR(sum(DEBIT), ''999,99,99,99,999'')  TotalDebit ,',
'          sum(CREDIT) iTotalCredit ,',
'          sum(DEBIT) iTotalDebit ,',
'          unistr(''$'') ||TO_CHAR(sum(CREDIT), ''999,99,99,99,999'')  TotalCredit,',
'          FDofM, LDofM',
'          FROM',
'            (',
'                select ROWID,',
'                  ID,',
'                  EXTRACT(YEAR FROM TXDATE) Year,',
'                  EXTRACT(MONTH FROM TXDATE) Month,',
'                  to_char(TXDATE,''Mon'') Month1,',
'                  TXDATE,',
'                  TRANSACTIONTYPE,',
'                  DEBIT,',
'                  CREDIT,',
'                  BALANCE,',
'                  TRUNC(TXDATE, ''MM'')  AS FDofM ,',
'                  LAST_DAY(TXDATE) AS LDofM',
'                  from TRANSMASTER where',
'                              (    TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND',
'                                   TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                                   TRANSACTIONTYPE not like ''%FD THROUGH%'' AND',
'                                   TRANSACTIONTYPE not like ''%QUARTERLY INTEREST CREDIT%'' AND',
'                                   TRANSACTIONTYPE not like ''%IB FD PREMAT PRINCIPAL%'' AND',
'                                   TRANSACTIONTYPE not like ''%IB FD PREMAT INT%''',
'                                   )   AND',
'                              TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')',
'            )',
'           GROUP BY Year, Month, Month1, FDofM, LDofM, trunc (TXDATE , ''YEAR'') ORDER BY Month',
'             ;',
'',
'',
'',
'Begin',
'',
'  var_url := ''r/demouserws/ai-for-finserv/tx-reports?p9_fromdt=1%2F1%2F2022&p9_todt=1%2F31%2F2022&p9_yearfilter=2022&'';',
'  sessval := V(''SESSION'');',
'  ',
'  Htp.p(  ''<table border=0 cellspacing=2 cellpadding=2 width=100%  class="t-Report-report">'' );',
'  Htp.p(  ''<tr><td align=left class="t-Report-colHead"><b>Selected Year</b></td><td align=right class="t-Report-colHead"><b>Total Debit</b></td><td align=right class="t-Report-colHead"><b>Total Credit</b></td></tr>'' );',
'   For row_1 In C1 Loop',
'',
'        tot_cred := tot_cred + row_1.iTotalCredit;',
'        tot_deb := tot_deb + row_1.iTotalDebit;',
'        var_url := ''r/demouserws/ai-for-finserv/tx-reports?p9_fromdt=''||row_1.FDofM||''&p9_todt=''||row_1.LDofM||''&p9_yearfilter=''||row_1.Year||''&session=''||sessval;',
'        Htp.p(  ''<tr>'' );',
'        --Htp.p(  ''<td class="t-Report-cell" > '' );',
'             --Htp.p(  row_1.FDofM  );',
'             --Htp.p(  row_1.LDofM  );',
'             --Htp.p(  var_url  );',
'       -- Htp.p(  ''</td>'' );',
'        Htp.p(  ''<td class="t-Report-cell" > '' );',
'            Htp.p(  '' <a href=''||var_url||''>  ''  );',
'            Htp.p(  row_1.Month1  );',
'            Htp.p(  row_1.Year  );',
'            --Htp.p(  sessval  );',
'            Htp.p(  '' </a>  ''  );',
'        Htp.p(  ''</td>'' );',
'        Htp.p(  ''<td align=right class="t-Report-cell"> '' );',
'            Htp.p(  row_1.TotalDebit  );',
'        Htp.p(  '' </td>'' );',
'',
'        Htp.p(  ''<td align=right class="t-Report-cell"> '' );',
'            Htp.p(  row_1.TotalCredit  );',
'        Htp.p(  '' </td>'' );',
'',
'    End Loop;',
'   -- Htp.p(  ''<tr><td colspan=3>&nbsp;</td></tr>'' );',
'    Htp.p(  ''<tr>'' );',
'    Htp.p(  ''<td class="t-Report-colHead">  '' );',
'        Htp.p(  ''Summary''  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''<td align=right class="t-Report-colHead">  '' );',
'        Htp.p(  unistr(''$'') ||TO_CHAR(tot_deb, ''999,99,99,99,999'')  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''<td align=right  class="t-Report-colHead">  '' );',
'        Htp.p(  unistr(''$'') ||TO_CHAR(tot_cred, ''999,99,99,99,999'')  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''</tr></table>'' );',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18740019343291474246)
,p_plug_name=>'Previous Year'
,p_parent_plug_id=>wwv_flow_imp.id(102426463789435090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   var_id number;',
'   var_imageleft varchar2 (4000);',
'   var_imageright varchar2(4000);',
'   var_var2 varchar2(4000);',
'   tot_cred number := 0;',
'   tot_deb number := 0;',
'   var_url varchar2 (4000);',
'   sessval number;',
'',
'  Cursor C1 Is select',
'          Year, Month1, Month,',
'          unistr(''$'') ||TO_CHAR(sum(DEBIT), ''999,99,99,99,999'')  TotalDebit ,',
'          sum(CREDIT) iTotalCredit ,',
'          sum(DEBIT) iTotalDebit ,',
'          unistr(''$'') ||TO_CHAR(sum(CREDIT), ''999,99,99,99,999'')  TotalCredit,',
'          FDofM, LDofM',
'          FROM',
'            (',
'                select ROWID,',
'                  ID,',
'                  EXTRACT(YEAR FROM TXDATE) Year,',
'                  EXTRACT(MONTH FROM TXDATE) Month,',
'                  to_char(TXDATE,''Mon'') Month1,',
'                  TXDATE,',
'                  TRANSACTIONTYPE,',
'                  DEBIT,',
'                  CREDIT,',
'                  BALANCE,',
'                  TRUNC(TXDATE, ''MM'')  AS FDofM ,',
'                  LAST_DAY(TXDATE) AS LDofM',
'                  from TRANSMASTER where',
'                              (    TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND',
'                                   TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                                   TRANSACTIONTYPE not like ''%FD THROUGH%'' AND',
'                                   TRANSACTIONTYPE not like ''%QUARTERLY INTEREST CREDIT%'' AND',
'                                   TRANSACTIONTYPE not like ''%IB FD PREMAT PRINCIPAL%'' AND',
'                                   TRANSACTIONTYPE not like ''%IB FD PREMAT INT%''',
'                                   )   AND',
'                              --TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')',
'                              TXDATE BETWEEN',
'                              add_months(TO_DATE (:P9_FROMDT, ''mm/dd/yyyy''), -12 ) AND',
'                              add_months(TO_DATE (:P9_TODT, ''mm/dd/yyyy''), -12 )',
'            )',
'           GROUP BY Year, Month, Month1, FDofM, LDofM, trunc (TXDATE , ''YEAR'') ORDER BY Month ',
'             ;',
'',
'',
'',
'Begin',
'',
'  var_url := ''r/demouserws/ai-for-finserv/tx-reports?p9_fromdt=1%2F1%2F2022&p9_todt=1%2F31%2F2022&p9_yearfilter=2022&session=114221414641613'';',
'  sessval := V(''SESSION'');',
'',
'  Htp.p(  ''<table border=0 cellspacing=2 cellpadding=2 width=100%  class="t-Report-report">'' );',
'  Htp.p(  ''<tr><td align=left class="t-Report-colHead"><b>Previous Year </b></td><td align=right class="t-Report-colHead"><b>Total Debit</b></td><td align=right class="t-Report-colHead"><b>Total Credit</b></td></tr>'' );',
'   For row_1 In C1 Loop',
'',
'        tot_cred := tot_cred + row_1.iTotalCredit;',
'        tot_deb := tot_deb + row_1.iTotalDebit;',
'        var_url := ''r/demouserws/ai-for-finserv/tx-reports?p9_fromdt=''||row_1.FDofM||''&p9_todt=''||row_1.LDofM||''&p9_yearfilter=''||row_1.Year||''&session=''||sessval;',
'        Htp.p(  ''<tr>'' );',
'        --Htp.p(  ''<td class="t-Report-cell" > '' );',
'             --Htp.p(  row_1.FDofM  );',
'             --Htp.p(  row_1.LDofM  );',
'             --Htp.p(  var_url  );',
'       -- Htp.p(  ''</td>'' );',
'        Htp.p(  ''<td class="t-Report-cell" > '' );',
'            Htp.p(  '' <a href=''||var_url||''>  ''  );',
'            Htp.p(  row_1.Month1  );',
'            Htp.p(  row_1.Year  );',
'            Htp.p(  '' </a>  ''  ); ',
'        Htp.p(  ''</td>'' );',
'        Htp.p(  ''<td align=right class="t-Report-cell"> '' );',
'            Htp.p(  row_1.TotalDebit  );',
'        Htp.p(  '' </td>'' );',
'',
'        Htp.p(  ''<td align=right class="t-Report-cell"> '' );',
'            Htp.p(  row_1.TotalCredit  );',
'        Htp.p(  '' </td>'' );',
'',
'    End Loop;',
'   -- Htp.p(  ''<tr><td colspan=3>&nbsp;</td></tr>'' );',
'    Htp.p(  ''<tr>'' );',
'    Htp.p(  ''<td class="t-Report-colHead">  '' );',
'        Htp.p(  ''Summary''  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''<td align=right class="t-Report-colHead">  '' );',
'        Htp.p(  unistr(''$'') ||TO_CHAR(tot_deb, ''999,99,99,99,999'')  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''<td align=right  class="t-Report-colHead">  '' );',
'        Htp.p(  unistr(''$'') ||TO_CHAR(tot_cred, ''999,99,99,99,999'')  );',
'    Htp.p(  '' </td>'' );',
'    Htp.p(  ''</tr></table>'' );',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4565388546594978242)
,p_plug_name=>'Credit Debit Charts '
,p_parent_plug_id=>wwv_flow_imp.id(4030027447655834626)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4565388045668978237)
,p_plug_name=>'Credit Chart '
,p_parent_plug_id=>wwv_flow_imp.id(4565388546594978242)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(71597610474402465)
,p_region_id=>wwv_flow_imp.id(4565388045668978237)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
 p_id=>wwv_flow_imp.id(71599308780402466)
,p_chart_id=>wwv_flow_imp.id(71597610474402465)
,p_seq=>10
,p_name=>'Credit Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ID,',
'Year, ',
'TXDATE,',
'to_char(TXDATE,''DD MON YYYY'') txc,',
'sum(CREDIT)  "Total Credit" , ''Credit'' series  ,',
'TRANSACTIONTYPE,',
'TXDETAIL',
'FROM ',
' (',
'     select ROWID,',
'       ID,',
'       EXTRACT(YEAR FROM TXDATE) Year,',
'       TXDATE,',
'       TRANSACTIONTYPE,',
'       DEBIT,',
'       CREDIT,',
'       BALANCE, ',
'       (''On Dt: <b>''||to_char(TXDATE,''DD MON YYYY'')||''</b><br/> Credited: <b>''||unistr(''\20B9'') ||TO_CHAR(CREDIT, ''999,99,99,99,999'')||''</b><br/> Tx: <b>''||TRANSACTIONTYPE||''</b>'') as TXDETAIL',
'        from TRANSMASTER where ',
'                ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                   TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                   TRANSACTIONTYPE not like ''%ORA%''  AND',
'                   TRANSACTIONTYPE not like ''%AISHWARYA%''  AND',
'                   TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'        AND TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')   ',
'        AND  TO_NUMBER(CREDIT) > 1',
' )',
'GROUP BY ID, Year, trunc (TXDATE , ''YEAR'') , TXDATE, TRANSACTIONTYPE, TXDETAIL',
'ORDER BY ID'))
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_series_name_column_name=>'ID'
,p_items_value_column_name=>'Total Credit'
,p_items_z_column_name=>'ID'
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
 p_id=>wwv_flow_imp.id(71598670734402466)
,p_chart_id=>wwv_flow_imp.id(71597610474402465)
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
 p_id=>wwv_flow_imp.id(71598145111402465)
,p_chart_id=>wwv_flow_imp.id(71597610474402465)
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
 p_id=>wwv_flow_imp.id(4565388630151978243)
,p_plug_name=>'Debit Chart'
,p_parent_plug_id=>wwv_flow_imp.id(4565388546594978242)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(71600275718402467)
,p_region_id=>wwv_flow_imp.id(4565388630151978243)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
 p_id=>wwv_flow_imp.id(71601991107402468)
,p_chart_id=>wwv_flow_imp.id(71600275718402467)
,p_seq=>10
,p_name=>'Debit Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
' ID,',
'Year, ',
' TXDATE,',
' to_char(TXDATE,''DD MON YYYY'') txc,',
' sum(DEBIT)  "Total Debit" , ''Debit'' series  ,',
' TRANSACTIONTYPE,',
' TXDETAIL',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE, ',
'        (''On Dt: <b>''||to_char(TXDATE,''DD MON YYYY'')||''</b><br/> Debited: <b>''||unistr(''\20B9'') ||TO_CHAR(DEBIT, ''999,99,99,99,999'')||''</b><br/> Tx: <b>''||TRANSACTIONTYPE||''</b>'') as TXDETAIL',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'         AND TXDATE BETWEEN TO_DATE (:P9_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P9_TODT, ''mm/dd/yyyy'')   ',
'         AND  TO_NUMBER(DEBIT) > 1',
'  )',
' GROUP BY ID, Year, trunc (TXDATE , ''YEAR'') , TXDATE, TRANSACTIONTYPE, TXDETAIL',
' ORDER BY ID',
' '))
,p_ajax_items_to_submit=>'P9_FROMDT,P9_TODT'
,p_series_name_column_name=>'ID'
,p_items_value_column_name=>'Total Debit'
,p_items_z_column_name=>'YEAR'
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
 p_id=>wwv_flow_imp.id(71601379443402468)
,p_chart_id=>wwv_flow_imp.id(71600275718402467)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Debited Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#8d0428'
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
 p_id=>wwv_flow_imp.id(71600786429402468)
,p_chart_id=>wwv_flow_imp.id(71600275718402467)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Debit Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#930a33'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79984993458574028)
,p_name=>'P9_YEARFILTER'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216740278098333574)
,p_name=>'P9_FROMDT'
,p_item_sequence=>10
,p_item_default=>'select add_months( trunc(sysdate), -4 )   dt  from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', '3',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(216740713720333577)
,p_name=>'P9_TODT'
,p_item_sequence=>20
,p_item_default=>'select sysdate from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', '3',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71608675202402502)
,p_name=>'fr'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_FROMDT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71609197659402504)
,p_event_id=>wwv_flow_imp.id(71608675202402502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71609587700402504)
,p_name=>'to'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_TODT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71610097991402505)
,p_event_id=>wwv_flow_imp.id(71609587700402504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71610470321402505)
,p_name=>'changeyear'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_YEARFILTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71610983152402505)
,p_event_id=>wwv_flow_imp.id(71610470321402505)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71611444854402506)
,p_name=>'dc2'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'this.browserEvent != "load" && this.data.dialogPageId == "37"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71611935337402506)
,p_event_id=>wwv_flow_imp.id(71611444854402506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
