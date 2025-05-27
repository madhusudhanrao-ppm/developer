prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_name=>'Card Swipe'
,p_alias=>'CARD-SWIPE'
,p_step_title=>'Card Swipe'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function test(){',
'  soundHandle = document.getElementById(''soundHandle'');',
'  soundHandle.src = ''#APP_FILES#audio/beep1.mp3'';',
'  soundHandle.play();',
'}',
'',
'var soundEmbed = null;',
'//======================================================================',
'function soundPlay(which)',
'    {',
'    if (!soundEmbed)',
'        {',
'        soundEmbed = document.createElement("embed");',
'        soundEmbed.setAttribute("src", "#APP_FILES#audio/"+which+".mp3");',
'        soundEmbed.setAttribute("hidden", true);',
'        soundEmbed.setAttribute("autostart", true);',
'        }',
'    else',
'        {',
'        document.body.removeChild(soundEmbed);',
'        soundEmbed.removed = true;',
'        soundEmbed = null;',
'        soundEmbed = document.createElement("embed");',
'        soundEmbed.setAttribute("src", "#APP_FILES#audio/"+which+".mp3");',
'        soundEmbed.setAttribute("hidden", true);',
'        soundEmbed.setAttribute("autostart", true);',
'        }',
'    soundEmbed.removed = false;',
'    document.body.appendChild(soundEmbed);',
'    }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#static_id1{ ',
'  width: 1200px !important;  ',
'  height: 800px !important;  ',
'  background-image: url("#APP_FILES#atm/cardmachine3.png") !important;  ',
'} ',
'#static_id2{ ',
'  width: 310px !important;  ',
'  height: 200px !important;  ',
'  background-color: transparent !important;  ',
'  vertical-align: auto;',
'  left: 450px;',
'  top: 130px;',
'  position: relative;',
'} ',
'#P62_PAYMENT_STATUS_DISPLAY ',
'{',
'    background-color: #F5F4F1 !important;',
'	color:red;',
'} ',
'#P62_AMOUNT_TO_PAY_DISPLAY',
'{',
'    background-color: #F5F4F1 !important;',
'	color:red;',
'} ',
'#P62_DISP_CUST_NAME_DISPLAY',
'{',
'    background-color: #F5F4F1 !important;',
'	color:red;',
'} ',
'#P62_DISP_ADDR_DISPLAY',
'{',
'    background-color: #F5F4F1 !important;',
'	color:red;',
'}  ',
'/* @font-face {',
'    font-family: ''MyWebFont''; ',
'    src: url(''#APP_FILES#fonts/Unifontexmono-DYWdE.ttf'') format(''truetype''); ',
'}  */',
'.apex-item-text,',
'.apex-item-select,',
'.apex-item-display-only { ',
'  border-top-style: none !important;',
'  border-left-style: none !important;',
'  border-right-style: none !important;',
'  border-bottom-style: solid !important; ',
'  background-color:#3C1DE4 !important;',
'  color: white;',
'  font-family: MyWebFont; ',
'  font-size: large;',
'} ',
'.apex-item-display-only {',
'  display: block !important;',
'}',
'',
' /*----- New Template Bank Customer-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #222326; ',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'    background-color: #1C1D20; ',
'}',
'.t-Region-header {',
'    align-items: center;',
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
'    background-color: #222326; ',
'}',
'.t-Header-branding {',
'    align-items: center;',
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
'.home:before {',
'content : url(#APP_FILES#icons/home.png);',
'}  ',
'.bankcustomer:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.openbankacc:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apply:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apphistory:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.onlineshop:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/atmcash.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.mytask:before{',
'content : url(#APP_FILES#icons/mytasks.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflowconsle.png);',
'}  ',
'',
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
' ',
'',
'/* ',
' #t_Body_content { ',
'background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed;  ',
'background-size: cover !important; ',
'}',
' .t-Region {',
'    background-color: #191715; ',
'    color: white; ',
'}',
'.t-Footer {',
'  display: none',
'} */',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(9493931172865529)
,p_navigation_list_template_id=>wwv_flow_imp.id(71236903875149546)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19033972416744106)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71109283471149467)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<audio id="soundHandle" style="display: none;"></audio>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9711362067151814)
,p_plug_name=>'Cust'
,p_parent_plug_id=>wwv_flow_imp.id(19033972416744106)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71109283471149467)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(69648709758942426)
,p_name=>'Order Details'
,p_title=>'Order Details'
,p_parent_plug_id=>wwv_flow_imp.id(9711362067151814)
,p_template=>wwv_flow_imp.id(71110656683149468)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PIZZA_ORDER_ID,',
'       SESSID,',
'       PIZZA_NAME,',
'       SHOP_NAME,',
'       SHOP_ADDRESS,',
'       TOPPINGS,',
'       TOPPINGS_COST,',
'       CRUST_TYPE,',
'       CUST_COST,',
'       GIFT_WRAP,',
'       GIFT_WRAP_COST,',
'       QUANTITY,',
'       DELIVERY_MODE,',
'       DISCOUNT_COUPON,',
'       DISCOUNT_AMOUNT,',
'       LINE_TOTAL, (select  ''<img src=#APP_FILES#retailimages/pizzanames/''||image||'' width=250 height=250>'' from pizzashops where id=PIZZASHOPS_ID) as image,',
'       "SIZE"',
'  from PIZZA_ORDER_DETAILS',
' where PIZZA_ORDER_ID = :P62_ORDER_ID',
'',
' --<img src=''#APP_FILES#pizzanames/&IMAGE.'' width=700px height=700px/>',
' -- ''<img src='' || URL || ''>'' url'))
,p_display_when_condition=>'P62_ORDER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P62_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(30096968674947326)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9899994259073251)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9900353132073252)
,p_query_column_id=>2
,p_column_alias=>'PIZZA_ORDER_ID'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9900793388073254)
,p_query_column_id=>3
,p_column_alias=>'SESSID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9901105212073255)
,p_query_column_id=>4
,p_column_alias=>'PIZZA_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9901567381073258)
,p_query_column_id=>5
,p_column_alias=>'SHOP_NAME'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9901946003073260)
,p_query_column_id=>6
,p_column_alias=>'SHOP_ADDRESS'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9902367331073261)
,p_query_column_id=>7
,p_column_alias=>'TOPPINGS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9902707995073262)
,p_query_column_id=>8
,p_column_alias=>'TOPPINGS_COST'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9903180466073264)
,p_query_column_id=>9
,p_column_alias=>'CRUST_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9903574856073265)
,p_query_column_id=>10
,p_column_alias=>'CUST_COST'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9903988594073267)
,p_query_column_id=>11
,p_column_alias=>'GIFT_WRAP'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9904324794073268)
,p_query_column_id=>12
,p_column_alias=>'GIFT_WRAP_COST'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9904730439073270)
,p_query_column_id=>13
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>50
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9905142443073271)
,p_query_column_id=>14
,p_column_alias=>'DELIVERY_MODE'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9905524801073273)
,p_query_column_id=>15
,p_column_alias=>'DISCOUNT_COUPON'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9905909731073274)
,p_query_column_id=>16
,p_column_alias=>'DISCOUNT_AMOUNT'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9906308446073276)
,p_query_column_id=>17
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Item Total ($)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9906789759073277)
,p_query_column_id=>18
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9907147061073279)
,p_query_column_id=>19
,p_column_alias=>'SIZE'
,p_column_display_sequence=>20
,p_column_heading=>'Size'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Regular;1,Family Size;1.5,Small;0.75'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19034351575744110)
,p_plug_name=>'Merchant Outlet Card Swipe'
,p_parent_plug_id=>wwv_flow_imp.id(19033972416744106)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P62_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19035352105744120)
,p_plug_name=>'Rg'
,p_parent_plug_id=>wwv_flow_imp.id(19034351575744110)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19034189447744108)
,p_plug_name=>'right'
,p_region_name=>'static_id1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_location=>null
,p_plug_source=>' '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P62_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19033848131744105)
,p_plug_name=>'Image Preview'
,p_parent_plug_id=>wwv_flow_imp.id(19034189447744108)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="image-preview-container" style="text-align: center;">',
'    <img id="image-preview" src="" alt="Image Preview" style="max-width: 100%; max-height: 300px; display: none;" />',
'</div>'))
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19200869812450014)
,p_plug_name=>'BC'
,p_region_name=>'static_id2'
,p_parent_plug_id=>wwv_flow_imp.id(19034189447744108)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199549690967451327)
,p_plug_name=>'face'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'        <iframe title="Card Swipe" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:800px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src="https://sketchfab.com/models/3c09c3b887844fd19875b0783c70ae8b/embed?autostart=1&ui_theme=dark&dnt=1"> </iframe> ',
'          </div>'))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P62_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17464788827120936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69648709758942426)
,p_button_name=>'Track'
,p_button_static_id=>'track_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Track my Order'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-truck'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9835173789920714)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19035352105744120)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process Card'
,p_button_condition=>'P62_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-card-holder'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9834325760920710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19035352105744120)
,p_button_name=>'Download'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sample Cards'
,p_button_redirect_url=>'https://replace-this.objectstorage.us-phoenix-1.oci.customer-oci.com/n/replace-this/b/replace-this/o/SampleData/Cards.zip'
,p_icon_css_classes=>'fa-card-holder'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9710526871151806)
,p_name=>'P62_FILENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9711131153151812)
,p_name=>'P62_ORDER_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9711422393151815)
,p_name=>'P62_PAYMENT_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9711362067151814)
,p_item_default=>'Payment Pending'
,p_prompt=>'Payment Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-card-holder'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10123628265088106)
,p_name=>'P62_ERROR_COUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10127245694088142)
,p_name=>'P62_AMOUNT_TO_PAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9711362067151814)
,p_item_default=>'P62_AMOUNT'
,p_item_default_type=>'ITEM'
,p_prompt=>'Amount To Pay'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10127374323088143)
,p_name=>'P62_DISP_CUST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9711362067151814)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'first_name||'' ''|| last_name ',
'from COMMON_USERS where   upper(email) = upper(v(''APP_USER'')) ;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-card-holder'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10127449281088144)
,p_name=>'P62_DISP_ADDR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9711362067151814)
,p_item_default=>'P62_AMOUNT'
,p_item_default_type=>'ITEM'
,p_prompt=>'Address'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'       CUSTOMER_ADDRESS ',
'  from PIZZA_ORDER',
'  where ID = :P62_ORDER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-card-holder'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19035430224744122)
,p_name=>'P62_IMAGE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19034351575744110)
,p_prompt=>'Card Image Upload'
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_display_when=>'P62_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-card-holder'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_cropping', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', 'Card Image Upload',
  'purge_files_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19036870296744123)
,p_name=>'P62_DISPLAY_IMG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19037134792744125)
,p_name=>'P62_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19039247344744146)
,p_name=>'P62_R1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_item_default=>'Please Enter PIN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-none:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19039272068744147)
,p_name=>'P62_CARDNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_prompt=>'CARDNO'
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
 p_id=>wwv_flow_imp.id(19040057790744154)
,p_name=>'P62_PIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P62_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19040419200744158)
,p_name=>'P62_R2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P62_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-warning-text'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19040956719744144)
,p_name=>'P62_RESPONSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19033848131744105)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19202960749450022)
,p_name=>'P62_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_item_default=>'1233'
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_icon_css_classes=>'fa-dollar'
,p_item_template_options=>'#DEFAULT#:margin-top-none:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19203350980450026)
,p_name=>'P62_R3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P62_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-warning-text'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19203673770450030)
,p_name=>'P62_R4'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--select ''#APP_FILES#atm/money.gif'' from dual',
'select ''#APP_FILES#retailimages/files/images/pizza5.gif'' from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:margin-top-none:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text', '<img src="#APP_FILES#rtg.png">',
  'based_on', 'URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19204860869450041)
,p_name=>'P62_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19204942618450042)
,p_name=>'P62_CUSTNAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19205605743450049)
,p_name=>'P62_TRASH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(19200869812450014)
,p_source=>'select ''#APP_FILES#atm/trash.gif'' from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_display_when=>'P62_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text', '<img src="#APP_FILES#rtg.png">',
  'based_on', 'URL')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9842280422920751)
,p_name=>'ChangeX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9843267468920755)
,p_event_id=>wwv_flow_imp.id(9842280422920751)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9842763160920753)
,p_event_id=>wwv_flow_imp.id(9842280422920751)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P62_IMAGE_UPLOAD");',
' ',
'',
'if (input.files && input.files[0]) {',
'    var reader = new FileReader();',
'    reader.onload = function (e) {',
'        var imgElement = document.getElementById("image-preview");',
'        imgElement.src = e.target.result;',
'        imgElement.style.display = "block";',
'    };',
'    reader.readAsDataURL(input.files[0]);',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9844597876920759)
,p_name=>'Change_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9845068452920760)
,p_event_id=>wwv_flow_imp.id(9844597876920759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9845561444920762)
,p_event_id=>wwv_flow_imp.id(9844597876920759)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P62_IMAGE_UPLOAD");',
' ',
'',
'if (input.files && input.files[0]) {',
'    var reader = new FileReader();',
'    reader.onload = function (e) {',
'        var imgElement = document.getElementById("image-preview");',
'        imgElement.src = e.target.result;',
'        imgElement.style.display = "block";',
'    };',
'    reader.readAsDataURL(input.files[0]);',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9843692790920756)
,p_name=>'Ref'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9844179158920758)
,p_event_id=>wwv_flow_imp.id(9843692790920756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_DISPLAY_IMG'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9846892147920766)
,p_name=>'Ol'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9847354637920767)
,p_event_id=>wwv_flow_imp.id(9846892147920766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_R4,P62_R3,P62_R2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17464887541120937)
,p_event_id=>wwv_flow_imp.id(9846892147920766)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(17464788827120936)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9847725915920768)
,p_name=>'OnCAudio'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_PIN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9848243840920770)
,p_event_id=>wwv_flow_imp.id(9847725915920768)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let cardno = apex.item( "P62_CARDNO" ).getValue(); ',
'let filename = apex.item( "P62_FILENAME" ).getValue(); ',
'let audiourl = "https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/Speech/"+filename;',
'',
'let last4 = cardno.substring(cardno.length - 4);  ',
'let pin = apex.item( "P62_PIN" ).getValue();   ',
'let errcnt = apex.item("P62_ERROR_COUNT").getValue();',
'',
'',
'if (last4 == pin)',
'{ ',
'    //Valid Pin ',
'    apex.item("P62_R1").hide();',
'    apex.item("P62_PIN").hide();  ',
'    apex.item( "P62_AMOUNT" ).hide();',
'    apex.item( "P62_CARDNO" ).hide();',
'    apex.item( "P62_CUSTNAME" ).hide(); ',
'    apex.item( "P62_R4" ).show();',
'    apex.item( "P62_PAYMENT_STATUS").setValue("Payment Completed");',
'',
'    soundHandle = document.getElementById(''soundHandle''); ',
'    soundHandle.src = audiourl; ',
'    soundHandle.play();',
'    //Success show tracking ',
'    $x_Show("track_btn");',
'}',
'else',
'{',
'    //InValid Pin  ',
'',
'    //Increment Counter',
'    errcnt++;  ',
'    apex.item("P62_ERROR_COUNT").setValue(errcnt);',
'',
'    if (errcnt > 3) {',
'',
'        apex.item("P62_R1").hide();',
'        apex.item("P62_PIN").hide();  ',
'        apex.item( "P62_AMOUNT" ).hide();',
'        apex.item( "P62_CARDNO" ).hide();',
'        apex.item( "P62_CUSTNAME" ).hide(); ',
'        apex.item( "P62_R4" ).hide();',
'',
'        apex.item( "P62_PAYMENT_STATUS" ).show();',
'        apex.item( "P62_PAYMENT_STATUS").setValue("Payment Failed");',
'        ',
'',
'        soundHandle = document.getElementById("soundHandle");',
'        soundHandle.src = "#APP_FILES#audio/paymentdeclined.mp3";',
'        soundHandle.play();',
'',
'    }',
'    else ',
'    { ',
'         ',
'        soundHandle = document.getElementById(''soundHandle'');',
'        soundHandle.src = ''#APP_FILES#audio/invalidpin.mp3'';',
'        soundHandle.play();',
'    }',
'',
'',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9848692869920772)
,p_name=>'OnC4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9849199473920773)
,p_event_id=>wwv_flow_imp.id(9848692869920772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P62_AMOUNT" ).getValue(); ',
'let filename = apex.item( "P62_FILENAME" ).getValue(); ',
'let audiourl = "https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/Speech/"+filename;',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount ',
'    apex.item( "P62_R3" ).setValue("Valid Amount"); ',
'    apex.item( "P62_AMOUNT" ).hide();',
'    apex.item( "P62_CARDNO" ).hide();',
'    apex.item( "P62_CUSTNAME" ).hide(); ',
'    apex.item( "P62_R4" ).show();',
'    //Success',
'    apex.item( "P62_PAYMENT_STATUS").setValue("Payment Completed");',
'',
'    soundHandle = document.getElementById(''soundHandle'');',
'    soundHandle.src = audiourl;',
'    soundHandle.play();',
'    //Show tracking button',
'    //$x_Show("track_btn");',
'}',
'else',
'{',
'    // InValid Amount ',
'    apex.item( "P62_CUSTNAME" ).hide(); ',
'    apex.item( "P62_R3" ).show();',
'    //apex.item( "P62_R3" ).setValue("InValid Amount - Please reenter");',
'    apex.item( "P62_AMOUNT" ).show();',
'    apex.item( "P62_R4" ).hide();',
'',
'    soundHandle = document.getElementById(''soundHandle'');',
'    soundHandle.src = ''#APP_FILES#audio/lessthan5k.mp3'';',
'    soundHandle.play();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9849500844920774)
,p_name=>'OC5'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_R3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9850036605920776)
,p_event_id=>wwv_flow_imp.id(9849500844920774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P62_AMOUNT" ).getValue(); ',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount',
'    apex.item( "P62_PIN" ).disable(); ',
'    apex.item( "P62_AMOUNT" ).show(); ',
'    apex.item( "P62_R2" ).hide(); ',
'    apex.item( "P62_R3" ).hide(); ',
'    apex.item( "P62_R4" ).show(); ',
'}',
'else',
'{',
'    // InValid Amount',
'    apex.item( "P62_AMOUNT" ).hide(); ',
'    apex.item( "P62_R4" ).hide(); ',
'}',
'',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9845945575920763)
,p_name=>'OC1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9846407587920765)
,p_event_id=>wwv_flow_imp.id(9845945575920763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let l_status = apex.item( "P62_STATUS" ).getValue(); ',
'',
' alert(l_status);',
'',
'if (l_status == "Blocked")',
'{',
'    alert("Card is Blocked");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9841855126920749)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CallLama'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_blob_content blob;',
'    l_mime_type varchar2(200);',
'    l_file_name varchar2(200);',
'    l_base64_content clob;',
'    l_response_text clob;',
'    l_request_body clob;',
'    --l_text clob;',
'    l_text varchar2(32000);',
'   -- l_web_credential apex_web_service.t_credential;',
'    l_api_url varchar2(2000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';',
'    l_compartment_id varchar2(1000) := ''ocid1.compartment.oc1..replace-this'';',
'    l_model_id varchar2(100) := ''meta.llama-3.2-90b-vision-instruct'';',
'    l_id number;',
'    l_cardno number;',
'    l_first_name varchar2(50);',
'    l_status varchar2(20);',
'    order_id varchar2(100) := :P62_ORDER_ID;',
'    l_filename varchar2(100);',
'    l_custname varchar2(100) := :P62_DISP_CUST_NAME;',
'',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P62_IMAGE_UPLOAD;',
' ',
'    :P62_ID := l_id;',
' ',
'    dbms_lob.createtemporary(l_base64_content, true); ',
'  ',
'SELECT',
'    REPLACE(REPLACE(APEX_WEB_SERVICE.BLOB2CLOBBASE64(l_blob_content),',
'                    CHR(10),',
'                    ''''),',
'            CHR(13),',
'            '''')',
'into l_base64_content',
'    from dual;',
'',
'    -- Build JSON request body',
'   l_request_body := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "meta.llama-3.2-90b-vision-instruct"',
'        },',
'        "chatRequest": {',
'           "messages": [',
'            {',
'                "role": "USER",',
'                   "content": [',
'                    {',
'                        "type": "TEXT",',
'                        "text": "what is the card number"',
'                    },',
'                     {',
'                        "type": "IMAGE",',
'                        "imageUrl": {',
'                            "url": "data:image/png;base64,''||l_base64_content||''"',
'                        }',
'                     }   ',
'                 ]',
'',
'            }',
'        ],',
'            "maxTokens": 2500,',
'            "isStream": false,',
'            "apiFormat": "GENERIC",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }'';',
'',
' ',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'',
'    -- Make the API call',
'    l_response_text := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_request_body,',
'        p_credential_static_id => ''Ind_OCI_WebCred''--''credentials_for_ociai''',
'    );',
'',
'   --:P1_RESPONSE_EMBED_1 := l_response_text;',
'',
' SELECT jt.text INTO l_text',
'    FROM dual,',
'         JSON_TABLE(',
'             l_response_text,',
'             ''$.chatResponse.choices[*].message.content[*]''',
'             COLUMNS (',
'                 text CLOB PATH ''$.text''',
'             )',
'         ) jt;',
'',
'    -- get card number',
'    select regexp_replace(l_text, ''[^[:digit:]]'', '''') into l_cardno from dual; ',
'',
'    -- change this below ---',
'    select first_name, status into l_first_name, l_status from cc_fd where cc_no =  l_cardno and rownum = 1;  ',
'     ',
'    if (l_status = ''Blocked'') then    ',
'        :P62_CUSTNAME := ''Card has been Blocked..'';   ',
'    else   ',
'         ---- Generate Audio ---------------------',
'         l_filename := order2speech (order_id, l_custname);',
'        ---- Generate Audio ---------------------',
'        :P62_CARDNO := l_cardno; ',
'        :P62_STATUS := l_status;',
'       -- :P62_CUSTNAME := l_cardno; ',
'        :P62_FILENAME := l_filename;',
'    end if;',
'',
'   ',
'',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9835173789920714)
,p_internal_uid=>9841855126920749
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14327117912027547)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CallLama_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_blob_content blob;',
'    l_mime_type varchar2(200);',
'    l_file_name varchar2(200);',
'    l_base64_content clob;',
'    l_response_text clob;',
'    l_request_body clob;',
'    --l_text clob;',
'    l_text varchar2(32000);',
'   -- l_web_credential apex_web_service.t_credential;',
'    l_api_url varchar2(2000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';',
'    l_compartment_id varchar2(1000) := ''ocid1.compartment.oc1..replace-this'';',
'    l_model_id varchar2(100) := ''meta.llama-3.2-90b-vision-instruct'';',
'    l_id number;',
'    l_cardno number;',
'    l_first_name varchar2(50);',
'    l_status varchar2(20);',
'    order_id varchar2(100) := :P62_ORDER_ID;',
'    l_filename varchar2(100);',
'',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P62_IMAGE_UPLOAD;',
' ',
'    :P62_ID := l_id;',
' ',
'    dbms_lob.createtemporary(l_base64_content, true); ',
'  ',
'SELECT',
'    REPLACE(REPLACE(APEX_WEB_SERVICE.BLOB2CLOBBASE64(l_blob_content),',
'                    CHR(10),',
'                    ''''),',
'            CHR(13),',
'            '''')',
'into l_base64_content',
'    from dual;',
'',
'    -- Build JSON request body',
'   l_request_body := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "meta.llama-3.2-90b-vision-instruct"',
'        },',
'        "chatRequest": {',
'           "messages": [',
'            {',
'                "role": "USER",',
'                   "content": [',
'                    {',
'                        "type": "TEXT",',
'                        "text": "what is the card number"',
'                    },',
'                     {',
'                        "type": "IMAGE",',
'                        "imageUrl": {',
'                            "url": "data:image/png;base64, ''||l_base64_content||''"',
'                        }',
'                     }   ',
'                 ]',
'',
'            }',
'        ],',
'            "maxTokens": 2500,',
'            "isStream": false,',
'            "apiFormat": "GENERIC",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }'';',
'',
' ',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'',
'    -- Make the API call',
'    l_response_text := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_request_body,',
'        p_credential_static_id => ''Ind_OCI_WebCred''--''credentials_for_ociai''',
'    );',
'',
'   --:P1_RESPONSE_EMBED_1 := l_response_text;',
'',
' SELECT jt.text INTO l_text',
'    FROM dual,',
'         JSON_TABLE(',
'             l_response_text,',
'             ''$.chatResponse.choices[*].message.content[*]''',
'             COLUMNS (',
'                 text CLOB PATH ''$.text''',
'             )',
'         ) jt;',
'',
'    -- get card number',
'    select regexp_replace(l_text, ''[^[:digit:]]'', '''') into l_cardno from dual; ',
'    select first_name, status into l_first_name, l_status from cc_fd where cc_no =  l_cardno and rownum = 1;  ',
'     ',
'    if (l_status = ''Blocked'') then    ',
'        :P62_CUSTNAME := ''Card has been Blocked..'';   ',
'    else   ',
'         ---- Generate Audio ---------------------',
'        l_filename := order2speech (order_id);',
'        ---- Generate Audio ---------------------',
'        :P62_CARDNO := l_cardno; ',
'        :P62_STATUS := l_status;',
'        :P62_CUSTNAME := l_cardno; ',
'        :P62_FILENAME := l_filename;',
'    end if;',
'',
'   ',
'',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9835173789920714)
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_internal_uid=>14327117912027547
);
wwv_flow_imp.component_end;
end;
/
