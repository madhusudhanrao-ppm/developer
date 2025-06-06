prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'Transfer Funds'
,p_alias=>'TRANSFER-FUNDS'
,p_step_title=>'Transfer Funds'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 2000); '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*----- New Template-------*/ ',
'.video-container {',
'  position: relative;',
'  padding-bottom: 56.25%; /* 16:9 */',
'  height: 0;',
'}',
'.video-container iframe {',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  width: 100%;',
'  height: 100%;',
'}',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'   /*  background-color: #171E23; */',
'   background-color: #222326;',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'   /* background-color: #5883A7;  */',
'   background-color: #1C1D20;',
'}',
'.t-Region-header {',
'    align-items: center;',
'   /* background-color: #1C2A35; */',
'    background-color: #1C1D20;',
'    border-block-end-color: var(--ut-region-header-border-color, var(--ut-region-border-color, rgba(0, 0, 0, .075)));',
'    border-block-end-style: solid;',
'    border-block-end-width: var(--ut-region-header-border-width, var(--ut-region-border-width, 1px));',
'    border-top-left-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    border-top-right-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    color: var(--ut-region-header-text-color, var(--ut-region-text-color, var(--ut-component-text-default-color)));',
'    display: flex',
';',
'    font-size: var(--ut-region-header-font-size, 1rem);',
'    font-weight: var(--a-base-font-weight-semibold, 500);',
'    line-height: var(--ut-region-header-line-height, 1.5rem);',
'}',
'.t-Region-bodyWrap {',
'	/* background-color: #171E23; */',
'    background-color: #222326;',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    /* background-color: #1C2A35; */',
'    background-color: #1C1D20;',
'    border-bottom: var(--ut-header-border-width, 1px) solid var(--ut-header-border-color);',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    display: grid;',
'    gap: var(--ut-header-item-spacing, .5rem);',
'    grid-template-areas: "controls logo navbar";',
'    grid-template-columns: auto auto 1fr;',
'    min-height: var(--ut-header-height);',
'    padding-block-end: calc(var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem)) - var(--ut-header-border-width, 1px));',
'    padding-block-start: var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-end: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-start: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    position: relative;',
'}',
'.t-Body-nav {',
'   /*  background-color: #1C2A35; ',
'    background-color: #222326; */',
'    background-color: #161A1D;',
'    box-shadow: inset calc(var(--ut-body-nav-border-width, 1px)*-1) 0 0 var(--ut-body-nav-border-color,var(--ut-component-border-color));',
'    color: var(--ut-body-nav-text-color);',
'    grid-area: nav;',
'    height: calc(100vh - var(--js-sticky-top, 0rem));',
'    min-height: unset;',
'    overflow: auto;',
'    overflow-x: hidden;',
'    position: sticky;',
'    top: var(--js-sticky-top,0);',
'    width: var(--ut-nav-initial-width,0);',
'    z-index: 500;',
'    -webkit-overflow-scrolling: touch;',
'    -ms-overflow-style: -ms-autohiding-scrollbar',
'}',
'.t-Footer {',
'  display: none',
'}',
'/*------------*/',
' ',
' /* ----------- developer style ---------------------- */',
'.home:before {',
'content : url(#APP_FILES#icons/home24.png);',
'}  ',
'',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch24.png);',
'} ',
'',
'.bankers:before{',
'content : url(#APP_FILES#icons/bankers24.png);',
'} ',
' .anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection24.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection24.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering24.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules24.png);',
'} ',
'.mytasks:before{',
'content : url(#APP_FILES#icons/mytasks24.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis24.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflow24.png);',
'}  ',
'.administration:before{',
'content : url(#APP_FILES#icons/administration24.png);',
'}',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'}',
'.customersearch:before{',
'content : url(#APP_FILES#icons/customersearch24.png);',
'} ',
'.transactionsearch:before{',
'content : url(#APP_FILES#icons/transactionsearch24.png);',
'}   ',
'.applicationhistory:before{',
'content : url(#APP_FILES#icons/applicationhistory.png);',
'}  ',
'.applyforcard:before{',
'content : url(#APP_FILES#icons/applyforcard.png);',
'}  ',
'.bankaccount:before{',
'content : url(#APP_FILES#icons/bankaccount.png);',
'}  ',
'.bankcustomers:before{',
'content : url(#APP_FILES#icons/bankcustomers.png);',
'}  ',
'.bankstatement:before{',
'content : url(#APP_FILES#icons/bankstatement.png);',
'}  ',
'.cart:before{',
'content : url(#APP_FILES#icons/Cart.png);',
'}  ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/fundtransfer.png);',
'} ',
'.loanemi:before{',
'content : url(#APP_FILES#icons/loanemi.png);',
'} ',
'.shopping:before{',
'content : url(#APP_FILES#icons/shopping.png);',
'} ',
'.updateprofile:before{',
'content : url(#APP_FILES#icons/updateprofile.png);',
'} ',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'} ',
'.cashwithdrawal:before{',
'content : url(#APP_FILES#icons/cashwithdrawal.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/atm.png);',
'} ',
'.chequedeposit:before{',
'content : url(#APP_FILES#icons/chequedeposit.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/makepayment24.png);',
'} ',
' /* ----------- developer style ---------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(9493931172865529)
,p_navigation_list_template_id=>wwv_flow_imp.id(71236903875149546)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12668047350258051)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71188248204149513)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(71072595911149418)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(71250677287149559)
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16394500711408032)
,p_plug_name=>'Fund Transfer'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(71185679638149511)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12286127478575550)
,p_plug_name=>'External Bank Fund Transfer'
,p_parent_plug_id=>wwv_flow_imp.id(16394500711408032)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12668813477262101)
,p_plug_name=>'Realtime Internet Banking Status'
,p_title=>' Payment Gateway'
,p_parent_plug_id=>wwv_flow_imp.id(12286127478575550)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12668989505262102)
,p_plug_name=>'Bank Status'
,p_region_name=>'static_1'
,p_parent_plug_id=>wwv_flow_imp.id(12668813477262101)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71166117265149501)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'FD_BANK_NAMES'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'BANK_NAME'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(12669099407262103)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPSADMIN'
,p_internal_uid=>12669099407262103
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12669119203262104)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12669251863262105)
,p_db_column_name=>'BANK_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Bank Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12669385711262106)
,p_db_column_name=>'BANK_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Bank Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12676614266275512)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'126767'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:BANK_NAME:BANK_STATUS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(12757412642738432)
,p_report_id=>wwv_flow_imp.id(12676614266275512)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'BANK_STATUS'
,p_operator=>'='
,p_expr=>'NA'
,p_condition_sql=>' (case when ("BANK_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NA''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f81b38'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(12757829749738434)
,p_report_id=>wwv_flow_imp.id(12676614266275512)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'BANK_STATUS'
,p_operator=>'='
,p_expr=>'Available'
,p_condition_sql=>' (case when ("BANK_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Available''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#1f6f02'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12669407663262107)
,p_plug_name=>'Form'
,p_parent_plug_id=>wwv_flow_imp.id(12286127478575550)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71116439605149471)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12727289802148413)
,p_plug_name=>'Transfer'
,p_parent_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>160
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12669520045262108)
,p_plug_name=>'Transaction Status'
,p_title=>'Transaction Status'
,p_parent_plug_id=>wwv_flow_imp.id(12286127478575550)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FROM_BANK_ID,',
'       FROM_BANK_STATUS,',
'       FROM_BANK_CUST_ID,',
'       FROM_BANK_CUST_NAME,',
'       TRANSFER_AMOUNT,',
'       TO_BANK_ID,',
'       TO_BANK_STATUS,',
'       TO_BANK_CUST_ID,',
'       TO_BANK_CUST_NAME,',
'       STATUS,',
'       REASON,',
'       TX_DATE,',
'       TO_CHAR(TX_TIMESTAMP, ''DD-MM-YY HH24:MI:SS'') as TX_TIMESTAMP ',
'  from FD_TRANSACTIONS_LOG ',
'  where upper(FROM_EMAIL) = upper(v(''APP_USER''))',
'  --order by ID DESC'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transaction Status'
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
 p_id=>wwv_flow_imp.id(12727777789148418)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727814748148419)
,p_name=>'FROM_BANK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_BANK_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'From Bank Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select BANK_NAME as d, ID as v from FD_BANK_NAMES order by BANK_NAME'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727923921148420)
,p_name=>'FROM_BANK_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_BANK_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728057127148421)
,p_name=>'FROM_BANK_CUST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_BANK_CUST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728151640148422)
,p_name=>'FROM_BANK_CUST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_BANK_CUST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'From Bank Cust Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728276729148423)
,p_name=>'TRANSFER_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSFER_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Transfer Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(12728386956148424)
,p_name=>'TO_BANK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_BANK_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'To Bank Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select BANK_NAME as d, ID as v from FD_BANK_NAMES order by BANK_NAME'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728496553148425)
,p_name=>'TO_BANK_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_BANK_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728598310148426)
,p_name=>'TO_BANK_CUST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_BANK_CUST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728684106148427)
,p_name=>'TO_BANK_CUST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_BANK_CUST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'To Bank Cust Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728725494148428)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>40
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
 p_id=>wwv_flow_imp.id(12728869420148429)
,p_name=>'REASON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REASON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>800
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12728972683148430)
,p_name=>'TX_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TX_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12729026435148431)
,p_name=>'TX_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TX_TIMESTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tx Timestamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>17
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
 p_id=>wwv_flow_imp.id(12727659958148417)
,p_internal_uid=>12727659958148417
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
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
 p_id=>wwv_flow_imp.id(12774327387058852)
,p_interactive_grid_id=>wwv_flow_imp.id(12727659958148417)
,p_static_id=>'127744'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12774549118058853)
,p_report_id=>wwv_flow_imp.id(12774327387058852)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12775018604058858)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12727777789148418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12775903420058867)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12727814748148419)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.648
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12776827814058877)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12727923921148420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12777743127058886)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12728057127148421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12778625535058894)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12728151640148422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12779542600058902)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12728276729148423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.648
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12780455091058909)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12728386956148424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.648
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12781327061058917)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(12728496553148425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12782212238058924)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(12728598310148426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12783101128058932)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12728684106148427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12784072922058940)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(12728725494148428)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.648
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12784801819058949)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(12728869420148429)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>249.656
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12785718693058957)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(12728972683148430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12786653708058964)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(12729026435148431)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>193.969
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(100198000012)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_execution_seq=>5
,p_name=>'Failure'
,p_background_color=>'#f4062e'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(12728725494148428)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Failure'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(162910006255)
,p_view_id=>wwv_flow_imp.id(12774549118058853)
,p_execution_seq=>10
,p_name=>'Success'
,p_background_color=>'#0c6606'
,p_text_color=>'#ffffff'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(12728725494148428)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'Success'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16394637406408033)
,p_plug_name=>'Internal Funds Transfer'
,p_parent_plug_id=>wwv_flow_imp.id(16394500711408032)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16394784089408034)
,p_plug_name=>'Add Beneficiary (To Transfer Funds)'
,p_parent_plug_id=>wwv_flow_imp.id(16394637406408033)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'BANK_CUSTOMERS_BENEFICIARIES'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16395641846408043)
,p_name=>'Beneficiary List'
,p_parent_plug_id=>wwv_flow_imp.id(16394637406408033)
,p_template=>wwv_flow_imp.id(71166117265149501)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select * from BANK_CUSTOMERS_BENEFICIARIES ',
'  WHERE BENEFICIARIES_FROM_CUSTID = (select ID from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1);'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(17466042735120949)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17884231669262801)
,p_query_column_id=>3
,p_column_alias=>'BENEFICIARIES_TO_CUSTID'
,p_column_display_sequence=>30
,p_column_heading=>'Beneficiaries To Customer Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>' select CUSTOMER_NAME||'' (''||id||'') ''   as d, id as v from bank_customers order by ID;'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17884324757262802)
,p_query_column_id=>4
,p_column_alias=>'BENEFICIARIES_FROM_CUSTID'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16396264429408049)
,p_plug_name=>'Transfer Money'
,p_parent_plug_id=>wwv_flow_imp.id(16394637406408033)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16555960365710406)
,p_plug_name=>'Internal Bank - Transaction Status'
,p_parent_plug_id=>wwv_flow_imp.id(16394637406408033)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,  ',
'       TO_BANK_CUST_ID,',
'       TRANSFER_AMOUNT, ',
'       STATUS,',
'       REASON, ',
'       TX_TIMESTAMP,',
'       MSG_ID,',
'       MSG',
'  from FD_TRANSACTIONS_LOG',
'  WHERE FROM_BANK_CUST_ID = :P74_BENEFICIARIES_FROM_CUSTID',
'  AND MSG_ID is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P74_BENEFICIARIES_FROM_CUSTID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(16556087571710407)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPSADMIN'
,p_internal_uid=>16556087571710407
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16556121361710408)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16556675595710413)
,p_db_column_name=>'TRANSFER_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transfer Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557192163710418)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557254822710419)
,p_db_column_name=>'REASON'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557467816710421)
,p_db_column_name=>'TX_TIMESTAMP'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tx Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557576571710422)
,p_db_column_name=>'MSG_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Msg Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557672732710423)
,p_db_column_name=>'MSG'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Msg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16557780022710424)
,p_db_column_name=>'TO_BANK_CUST_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'To Bank Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16582401168564016)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'165825'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TO_BANK_CUST_ID:TRANSFER_AMOUNT:STATUS:REASON:TX_TIMESTAMP:MSG_ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24839540637832026)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71128241308149481)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <style>',
'',
'</style>',
'<table>',
'<tr>',
'    <td>',
'    <iframe width="560" height="315" src="https://www.youtube.com/embed/s9dYyDMa5Lo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ',
'    allowfullscreen></iframe>',
'    </td>',
'</tr>',
'<tr>',
'    <td>',
'    <a href=''https://madhusudhanrao-ppm.github.io/developer/ai-for-financialservices/workshops/tenancy/index.html?lab=ai-fs-int-fund-transfer'' target=''_new''>Internal Fund Transfer Workshop</a>',
'    </td> ',
'</tr>',
'</table>'))
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58671130247856476)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71128241308149481)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_response VARCHAR2(32000); ',
'begin ',
'   l_response := getData(:APP_PAGE_ID);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16555529997710402)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16396264429408049)
,p_button_name=>'Internal_Transfer_Amount'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Transfer Amount'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-dollar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16395332545408040)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_button_name=>'Add_Beneficiary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Beneficiary'
,p_icon_css_classes=>'fa-user'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17885129749262810)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Beneficiary'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-ai-sparkle-eraser'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12671940924262132)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(12727289802148413)
,p_button_name=>'Transfer_Amount'
,p_button_static_id=>'transfer_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Transfer Amount'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-dollar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12726886451148409)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(12727289802148413)
,p_button_name=>'Clear_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Transactions'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7827042332939715)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(58671130247856476)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:74'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12793723042632657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12286127478575550)
,p_button_name=>'Start_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Start'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-play'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17885758745262816)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16555960365710406)
,p_button_name=>'ClearTx'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Transactions'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-ai-sparkle-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12793393927632655)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12286127478575550)
,p_button_name=>'Stop_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stop'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-stop'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671044399262123)
,p_name=>'P74_FROM_BANK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_prompt=>'From Bank (Payment Gateway)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select BANK_NAME as d, ID as v from FD_BANK_NAMES order by BANK_NAME'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671134711262124)
,p_name=>'P74_FROM_ACCOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_item_default=>'select customer_name from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From Bank Account'
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
 p_id=>wwv_flow_imp.id(12671249392262125)
,p_name=>'P74_TO_BANK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_prompt=>'To Bank  (Payment Gateway)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select BANK_NAME as d, ID as v from FD_BANK_NAMES order by ID'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671317452262126)
,p_name=>'P74_TO_BANK_ACCOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_prompt=>'To Bank Account'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>' select distinct CUSTOMER_NAME from BANK_CUSTOMERS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'fetch_on_type', 'Y',
  'match_type', 'CONTAINS_IGNORE',
  'max_values_in_list', '7',
  'min_chars', '1',
  'use_cache', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671493959262127)
,p_name=>'P74_TRANSFER_AMOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12727289802148413)
,p_prompt=>'Transfer Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671739557262130)
,p_name=>'P74_FROM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12671874207262131)
,p_name=>'P74_TO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12672307697262136)
,p_name=>'P74_FROM_CURRENT_BALANCE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_item_default=>'select CURRENT_BALANCE from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From Account Current Balance'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12672452178262137)
,p_name=>'P74_TO_CURRENT_BALANCE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_prompt=>'To Account Current Balance'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12672975402262142)
,p_name=>'P74_FROM_CUSTID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_item_default=>'select id from bank_customers where upper(email) = upper(''johndoe@mail.com'') AND rownum = 1'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From Customer Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12673152249262144)
,p_name=>'P74_TO_CUSTID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12669407663262107)
,p_prompt=>'To Customer Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16394950160408036)
,p_name=>'P74_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_item_source_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16395068497408037)
,p_name=>'P74_BENEFICIARIES_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_item_source_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_source=>'BENEFICIARIES_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16395138145408038)
,p_name=>'P74_BENEFICIARIES_TO_CUSTID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_item_source_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_item_default=>'select ID from bank_customers where upper(email) = upper(v(''APP_USER''))'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Beneficiaries (Account To Name & Customer Id)'
,p_source=>'BENEFICIARIES_TO_CUSTID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select CUSTOMER_NAME||'' (''||id||'') ''   as d, id as v from bank_customers order by ID;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16395233489408039)
,p_name=>'P74_BENEFICIARIES_FROM_CUSTID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_item_source_plug_id=>wwv_flow_imp.id(16394784089408034)
,p_prompt=>'Beneficiaries (Account From Customer Id)'
,p_source=>'BENEFICIARIES_FROM_CUSTID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select customer_name as d, id as v from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16396305100408050)
,p_name=>'P74_INT_TO_CUSTID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16396264429408049)
,p_prompt=>'To Customer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select (select customer_name from bank_customers where id = BENEFICIARIES_TO_CUSTID) as d, BENEFICIARIES_TO_CUSTID as v from BANK_CUSTOMERS_BENEFICIARIES ',
'  WHERE BENEFICIARIES_FROM_CUSTID = (select ID from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1);'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16555468874710401)
,p_name=>'P74_INT_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16396264429408049)
,p_prompt=>'Transfer Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12672025246262133)
,p_name=>'TrfDA_External'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12671940924262132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12672191250262134)
,p_event_id=>wwv_flow_imp.id(12672025246262133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'-- grant execute on dbms_lock to docuser;',
'v_from_custid FD_TRANSACTIONS_LOG.FROM_BANK_CUST_ID%TYPE := :P74_FROM_CUSTID;',
'v_to_custid FD_TRANSACTIONS_LOG.TO_BANK_CUST_ID%TYPE := :P74_TO_CUSTID;',
'v_amount FD_TRANSACTIONS_LOG.TRANSFER_AMOUNT%TYPE := :P74_TRANSFER_AMOUNT; ',
'v_is_from_bank_active boolean  ;',
'v_is_to_bank_active boolean  ;',
'',
'v_from_bank_id FD_BANK_NAMES.ID%TYPE := :P74_FROM_BANK;',
'v_to_bank_id  FD_BANK_NAMES.ID%TYPE := :P74_TO_BANK;',
' ',
' ',
'v_from_acc_balance BANK_CUSTOMERS.CURRENT_BALANCE%TYPE  ;',
'v_to_acc_balance BANK_CUSTOMERS.CURRENT_BALANCE%TYPE  ;',
'',
'v_new_id FD_TRANSACTIONS_LOG.ID%TYPE;',
'',
'v_reason varchar2(50);',
'v_status varchar2(50);',
'l_from_email varchar2(50) :=  upper(v(''APP_USER''));',
'',
'',
'begin ',
'--------- Create Transaction Log',
'insert into FD_TRANSACTIONS_LOG ',
'(',
'    FROM_BANK_ID,   FROM_BANK_CUST_NAME, TRANSFER_AMOUNT, ',
'    TO_BANK_ID, TO_BANK_STATUS,  TO_BANK_CUST_NAME, STATUS, REASON, FROM_BANK_CUST_ID, TO_BANK_CUST_ID, TX_TIMESTAMP, FROM_EMAIL',
') ',
'values ',
'(',
'    :P74_FROM_BANK,     :P74_FROM_ACCOUNT, v_amount,',
'    :P74_TO_BANK, :P74_TO_BANK,   :P74_TO_BANK_ACCOUNT, ''Pending'', ''NA'', v_from_custid, v_to_custid, CURRENT_TIMESTAMP, l_from_email',
') RETURNING id INTO v_new_id ;',
'',
'COMMIT;',
'----------------------- Check if both bank account''s internet banking is Active',
'--apex_util.pause(10);',
'SELECT EXISTS (select BANK_STATUS from FD_BANK_NAMES WHERE BANK_STATUS = ''Available'' AND ID = v_from_bank_id)',
'  INTO v_is_from_bank_active',
'  FROM DUAL;',
'',
'SELECT EXISTS (select BANK_STATUS from FD_BANK_NAMES WHERE BANK_STATUS = ''Available'' AND ID = v_to_bank_id)',
'  INTO v_is_to_bank_active',
'  FROM DUAL;',
'',
' ---------------------- get Current Balances -------------',
'',
' select CURRENT_BALANCE into v_from_acc_balance from BANK_CUSTOMERS    WHERE ID = v_from_custid; ',
' select CURRENT_BALANCE into v_to_acc_balance  from BANK_CUSTOMERS   WHERE ID = v_to_custid; ',
'',
' ---------------------- Substract money from Account ',
'update BANK_CUSTOMERS set CURRENT_BALANCE = v_from_acc_balance - v_amount WHERE ID = v_from_custid; ',
'--------------------- Add money to receiver''s Account  ',
'update BANK_CUSTOMERS set CURRENT_BALANCE = v_to_acc_balance + v_amount WHERE ID = v_to_custid;',
'',
'if (NOT v_is_from_bank_active) then ',
'    v_reason := ''Sender Bank is not NA''; ',
'    v_status := ''Failure''; ',
'    GOTO label;',
'elsif (NOT v_is_to_bank_active) then',
'    v_reason := ''Receiver Bank is not NA''; ',
'    v_status := ''Failure''; ',
'    GOTO label;',
'elsif (v_amount > v_from_acc_balance) then',
'    v_reason := ''Insufficient Balance''; ',
'    v_status := ''Failure''; ',
'    GOTO label;',
'else ',
'    v_status := ''Success''; ',
'end if;',
' ',
'---------------------- Lets Commit or Rollback transactions',
'<<label>>',
'if (v_status = ''Success'') then    ',
'    COMMIT;  ',
'else   ',
'    ROLLBACK;  ',
'end if;',
'',
'update FD_TRANSACTIONS_LOG set STATUS = v_status, REASON = v_reason WHERE ID = v_new_id; ',
'select CURRENT_BALANCE into v_from_acc_balance from BANK_CUSTOMERS  WHERE ID = v_from_custid; ',
'select CURRENT_BALANCE into v_to_acc_balance from BANK_CUSTOMERS  WHERE ID = v_to_custid;',
' ',
':P74_FROM_CURRENT_BALANCE := v_from_acc_balance;',
':P74_TO_CURRENT_BALANCE := v_to_acc_balance; ',
' ',
'',
'end;'))
,p_attribute_02=>'P74_FROM_BANK,P74_TO_BANK,P74_FROM_ACCOUNT,P74_TO_BANK_ACCOUNT,P74_FROM,P74_TO,P74_TRANSFER_AMOUNT,P74_FROM_CUSTID,P74_FROM_CURRENT_BALANCE,P74_TO_CURRENT_BALANCE,P74_TO_CUSTID'
,p_attribute_03=>'P74_FROM_CURRENT_BALANCE,P74_TO_CURRENT_BALANCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12672217009262135)
,p_event_id=>wwv_flow_imp.id(12672025246262133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12669520045262108)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12672512064262138)
,p_name=>'setCurrBalance'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_FROM_ACCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12673031363262143)
,p_event_id=>wwv_flow_imp.id(12672512064262138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_FROM_CUSTID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select ID from BANK_CUSTOMERS where CUSTOMER_NAME = :P74_FROM_ACCOUNT and rownum = 1 order by id'
,p_attribute_07=>'P74_FROM_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12672622592262139)
,p_event_id=>wwv_flow_imp.id(12672512064262138)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_FROM_CURRENT_BALANCE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select CURRENT_BALANCE from BANK_CUSTOMERS where CUSTOMER_NAME = :P74_FROM_ACCOUNT and rownum = 1 order by id'
,p_attribute_07=>'P74_FROM_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12672763692262140)
,p_name=>'setCurrBal2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TO_BANK_ACCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12672834497262141)
,p_event_id=>wwv_flow_imp.id(12672763692262140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_TO_CURRENT_BALANCE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select CURRENT_BALANCE from BANK_CUSTOMERS where CUSTOMER_NAME = :P74_TO_BANK_ACCOUNT and rownum = 1 order by id'
,p_attribute_07=>'P74_TO_BANK_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12673255242262145)
,p_event_id=>wwv_flow_imp.id(12672763692262140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_TO_CUSTID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID from BANK_CUSTOMERS where   upper(CUSTOMER_NAME) = upper(:P74_TO_BANK_ACCOUNT) AND rownum = 1  ;',
' '))
,p_attribute_07=>'P74_TO_BANK_ACCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12726971651148410)
,p_name=>'Cls'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12726886451148409)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727061380148411)
,p_event_id=>wwv_flow_imp.id(12726971651148410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'delete from FD_TRANSACTIONS_LOG;',
'commit;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12729744931148438)
,p_event_id=>wwv_flow_imp.id(12726971651148410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x_Show("transfer_btn");',
'',
'apex.item(''P74_FROM_BANK'').setValue(null);',
'apex.item(''P74_TO_BANK'').setValue(null);',
'apex.item(''P74_FROM_ACCOUNT'').setValue(null);',
'apex.item(''P74_FROM_CUSTID'').setValue(null);',
'apex.item(''P74_FROM_CURRENT_BALANCE'').setValue(null);',
'apex.item(''P74_TO_BANK_ACCOUNT'').setValue(null);',
'apex.item(''P74_TO_CUSTID'').setValue(null);',
'apex.item(''P74_TO_CURRENT_BALANCE'').setValue(null);',
'apex.item(''P74_TRANSFER_AMOUNT'').setValue(null);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727155430148412)
,p_event_id=>wwv_flow_imp.id(12726971651148410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12669520045262108)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12729132394148432)
,p_name=>'startTx'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12793723042632657)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12729209362148433)
,p_event_id=>wwv_flow_imp.id(12729132394148432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  DBMS_SCHEDULER.enable (''update_bank_status_proc_job'');',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12729344716148434)
,p_name=>'stopTx'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12793393927632655)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12729475399148435)
,p_event_id=>wwv_flow_imp.id(12729344716148434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  DBMS_SCHEDULER.disable (''update_bank_status_proc_job'');',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16555691572710403)
,p_name=>'DynActIntFundTransf'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16555529997710402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16555762196710404)
,p_event_id=>wwv_flow_imp.id(16555691572710403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_new_id number;',
'l_enqueue_options      DBMS_AQ.ENQUEUE_OPTIONS_T;',
'l_message_properties   DBMS_AQ.MESSAGE_PROPERTIES_T;',
'l_message_handle       RAW (16);',
'l_queue_msg            banktransfer_q_payload; ',
'message_id varchar2(200); ',
'l_msg varchar2(400);  ',
'l_q_name varchar2(400) := ''DOCUSER.fundstransfer_queue''; ',
'l_from_custid varchar2(50) := :P74_BENEFICIARIES_FROM_CUSTID;',
'l_to_custid varchar2(50) := :P74_INT_TO_CUSTID;',
'l_amount varchar2(50) := :P74_INT_AMOUNT;',
'',
'begin',
'    -- Generate Msg ----------------------',
'    l_msg   := ''FROM_ID:''||l_from_custid||'' TO_ID:''||l_to_custid||'' AMOUNT:''||l_amount;    ',
'    ------------  Enque Message ---------- ',
'    l_queue_msg := banktransfer_q_payload (l_msg); ',
'    DBMS_AQ.ENQUEUE (queue_name           => l_q_name,',
'                   enqueue_options      => l_enqueue_options,',
'                   message_properties   => l_message_properties,',
'                   payload              => l_queue_msg,',
'                   msgid                => l_message_handle);',
'',
'    SELECT MSG_ID INTO message_id',
'      FROM AQ$fundstransfer_queue_table',
'      WHERE ROWID = (SELECT MAX(ROWID)',
'                       FROM AQ$fundstransfer_queue_table);   ',
'    ------------- Insert to DB --------------------------',
'    insert into FD_TRANSACTIONS_LOG ',
'    (',
'          FROM_BANK_CUST_ID, TO_BANK_CUST_ID, TRANSFER_AMOUNT, ',
'             STATUS, REASON,    TX_TIMESTAMP, MSG_ID, MSG',
'    ) ',
'    values ',
'    (',
'           l_from_custid, l_to_custid, l_amount,',
'           ''Pending'', ''Internal Transfer'',   CURRENT_TIMESTAMP, message_id, l_msg',
'    ) RETURNING id INTO v_new_id ;',
'',
'',
'COMMIT;',
'EXCEPTION ',
'WHEN OTHERS',
'THEN DBMS_OUTPUT.put_line ( SQLERRM || '' - '' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'',
'',
'',
'end;'))
,p_attribute_02=>'P74_INT_TO_CUSTID,P74_INT_AMOUNT,P74_BENEFICIARIES_FROM_CUSTID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17885024389262809)
,p_event_id=>wwv_flow_imp.id(16555691572710403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16555960365710406)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16555859696710405)
,p_event_id=>wwv_flow_imp.id(16555691572710403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Funds Transfer Requested'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17884480445262803)
,p_name=>'changeColor'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TRANSFER_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17884553161262804)
,p_event_id=>wwv_flow_imp.id(17884480445262803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P74_TRANSFER_AMOUNT'').css("cssText", "background-color: orange!important;color:#1B1917");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17884690377262805)
,p_name=>'Occ'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_FROM_CURRENT_BALANCE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17884794170262806)
,p_event_id=>wwv_flow_imp.id(17884690377262805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P74_FROM_CURRENT_BALANCE'').css("cssText", "background-color: red!important;color:white");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17884819322262807)
,p_name=>'Occ2'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TO_CURRENT_BALANCE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17884941705262808)
,p_event_id=>wwv_flow_imp.id(17884819322262807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P74_TO_CURRENT_BALANCE'').css("cssText", "background-color: green!important;color:white");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17885249120262811)
,p_name=>'cls'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17885129749262810)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17885375974262812)
,p_event_id=>wwv_flow_imp.id(17885249120262811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'delete from BANK_CUSTOMERS_BENEFICIARIES where BENEFICIARIES_FROM_CUSTID = (select ID from bank_customers where upper(email) = upper(v(''APP_USER'')) AND rownum = 1);',
'',
'end;'))
,p_attribute_02=>'P74_BENEFICIARIES_FROM_CUSTID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17885460324262813)
,p_event_id=>wwv_flow_imp.id(17885249120262811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16395641846408043)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17885848967262817)
,p_name=>'New'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17885758745262816)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17885901173262818)
,p_event_id=>wwv_flow_imp.id(17885848967262817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'delete from FD_TRANSACTIONS_LOG;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17886085872262819)
,p_event_id=>wwv_flow_imp.id(17885848967262817)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16555960365710406)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16395504352408042)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16394784089408034)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Form Benef'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Beneficiary added to your account'
,p_internal_uid=>16395504352408042
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16394897822408035)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(16394784089408034)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Transfer Funds'
,p_internal_uid=>16394897822408035
);
wwv_flow_imp.component_end;
end;
/
