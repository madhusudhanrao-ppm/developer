prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>'Cheque Deposit'
,p_alias=>'CHEQUE-DEPOSIT'
,p_step_title=>'Cheque Deposit'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#static_id1{ ',
'  width: 1200px !important;  ',
'  height: 850px !important;  ',
'  background-image: url("#APP_FILES#atm/atm3.png") !important;  ',
'}',
'',
'#static_id2{ ',
'  width: 400px !important;  ',
'  height: 200px !important;  ',
'  background-color: transparent !important;  ',
'  vertical-align: auto;',
'  left: 380px;',
'  top: 130px;',
'  position: relative;',
'}',
'',
'/* @font-face {',
'    font-family: ''MyWebFont''; ',
'    src: url(''#APP_FILES#fonts/Unifontexmono-DYWdE.ttf'') format(''truetype''); ',
'} */',
'',
'.apex-item-text,',
'.apex-item-select,',
'.apex-item-display-only {',
'  border: 2px solid !important;',
'  border-top-style: none !important;',
'  border-left-style: none !important;',
'  border-right-style: none !important;',
'  border-bottom-style: solid !important; ',
'  background-color:#343537 !important;',
'  color: white;',
'  font-family: MyWebFont; ',
'  font-size: large;',
'}',
'',
'.apex-item-display-only {',
'  display: block !important;',
'}',
'',
' /*----- New Template-------*/ ',
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
' /* ----------- developer style ---------------------- */',
' ',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(9493931172865529)
,p_navigation_list_template_id=>wwv_flow_imp.id(71236903875149546)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18648791293543964)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71109283471149467)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P49_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18649170452543968)
,p_plug_name=>'Cheque Deposit'
,p_parent_plug_id=>wwv_flow_imp.id(18648791293543964)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18650170982543978)
,p_plug_name=>'Rg'
,p_parent_plug_id=>wwv_flow_imp.id(18649170452543968)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18649008324543966)
,p_plug_name=>'right'
,p_region_name=>'static_id1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<audio id="soundHandle" style="display: none;"></audio>',
'  '))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P49_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10593317643027522)
,p_plug_name=>'Audio'
,p_parent_plug_id=>wwv_flow_imp.id(18649008324543966)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <audio id="soundHandle" style="display: none;"></audio>',
'<script>  ',
'    //soundHandle = document.getElementById(''soundHandle'');',
'    //soundHandle.src = ''#APP_FILES#audio/chqdepositedthankyou.mp3'';',
'    //soundHandle.play(); ',
'</script>'))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P49_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18648667008543963)
,p_plug_name=>'Image Preview'
,p_parent_plug_id=>wwv_flow_imp.id(18649008324543966)
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
 p_id=>wwv_flow_imp.id(18815688689249872)
,p_plug_name=>'BC'
,p_region_name=>'static_id2'
,p_parent_plug_id=>wwv_flow_imp.id(18649008324543966)
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
 p_id=>wwv_flow_imp.id(10593587111027524)
,p_plug_name=>'Btn'
,p_parent_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>80
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18816488827234916)
,p_plug_name=>'Cheque Deposit'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71188248204149513)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(71072595911149418)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(71250677287149559)
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199164509844251185)
,p_plug_name=>'face'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'    <iframe title="Iagona - AMD (FR)" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true"',
'     allow="autoplay; fullscreen; xr-spatial-tracking" style="width:100%;height:800px" ',
'     xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share ',
'     src="https://sketchfab.com/models/13db2fd3928e4a64b4ca5fb64010b2f3/embed?ui_theme=dark"> </iframe> ',
'     ',
' '))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P49_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9449968698720579)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18650170982543978)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process Image'
,p_icon_css_classes=>'fa-card-holder'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9449104683720575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18650170982543978)
,p_button_name=>'Download'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Sample Cheques  '
,p_button_redirect_url=>'https://replace-this.objectstorage.us-phoenix-1.oci.customer-oci.com/n/replace-this/b/replace-this/o/SampleData/Cheques.zip'
,p_icon_css_classes=>'fa-card-holder'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9449557243720578)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18650170982543978)
,p_button_name=>'Card_Holders'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Card Holders'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-address-card'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10796896076570408)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_button_name=>'Confirm_Deposit'
,p_button_static_id=>'showdeposit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Deposit Cheque'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-warning-bg'
,p_icon_css_classes=>'fa-cash-register'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10797113234570411)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_button_name=>'Show_Confirm'
,p_button_static_id=>'showconfirm'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-cash-register'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10665207368832567)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_button_name=>'SignOut'
,p_button_static_id=>'signout_btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--gapLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(71249239747149558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign Out'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-sign-out'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9369310206529331)
,p_name=>'P49_DETAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9369562855529333)
,p_name=>'P49_INFO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10593587111027524)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10595614062027545)
,p_name=>'P49_FILENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18650252219543979)
,p_name=>'P49_IMAGE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18649170452543968)
,p_prompt=>'Upload Cheque Image'
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_cropping', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_title', 'Upload Cheque Image',
  'purge_files_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18651660986543995)
,p_name=>'P49_DISPLAY_IMG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_prompt=>'Display Image'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    '   select blob_content',
    '    from apex_application_temp_files',
    '    where id = :P49_ID;')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18651925482543997)
,p_name=>'P49_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18654038034544018)
,p_name=>'P49_R1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_item_default=>'Please Enter PIN'
,p_prompt=>'R11111'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P49_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--boldDisplay'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18654062758544019)
,p_name=>'P49_CARDNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18654848480544026)
,p_name=>'P49_PIN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_prompt=>'Pin'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P49_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18655209890544030)
,p_name=>'P49_R2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P49_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-warning-text'
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18655814815544022)
,p_name=>'P49_RESPONSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18648667008543963)
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
 p_id=>wwv_flow_imp.id(18817751439249894)
,p_name=>'P49_AMOUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P49_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18818141670249898)
,p_name=>'P49_R3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P49_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-warning-text'
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18818464460249902)
,p_name=>'P49_R4'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_prompt=>'Collect Cash'
,p_source=>'select ''#APP_FILES#atm/money.gif'' from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text', '<img src="#APP_FILES#rtg.png">',
  'based_on', 'URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18819651559249913)
,p_name=>'P49_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18819733308249914)
,p_name=>'P49_CUSTNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18820396433249921)
,p_name=>'P49_TRASH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(18815688689249872)
,p_source=>'select ''#APP_FILES#atm/trash.gif'' from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_display_when=>'P49_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text', '<img src="#APP_FILES#rtg.png">',
  'based_on', 'URL')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9457145603720637)
,p_name=>'ChangeX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9458154633720645)
,p_event_id=>wwv_flow_imp.id(9457145603720637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9457669539720640)
,p_event_id=>wwv_flow_imp.id(9457145603720637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P49_IMAGE_UPLOAD");',
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
 p_id=>wwv_flow_imp.id(9459330005720650)
,p_name=>'Change_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9459850385720652)
,p_event_id=>wwv_flow_imp.id(9459330005720650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9460360209720654)
,p_event_id=>wwv_flow_imp.id(9459330005720650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P49_IMAGE_UPLOAD");',
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
 p_id=>wwv_flow_imp.id(9458432907720647)
,p_name=>'Ref'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9458970124720649)
,p_event_id=>wwv_flow_imp.id(9458432907720647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_DISPLAY_IMG'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9462518693720662)
,p_name=>'Ol'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9463024615720664)
,p_event_id=>wwv_flow_imp.id(9462518693720662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P49_R4,P49_R3,P49_R2,P49_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10797460608570414)
,p_event_id=>wwv_flow_imp.id(9462518693720662)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10797113234570411)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10593443189027523)
,p_event_id=>wwv_flow_imp.id(9462518693720662)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10665207368832567)
,p_build_option_id=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9463497252720666)
,p_name=>'OnC2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_PIN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9463995360720668)
,p_event_id=>wwv_flow_imp.id(9463497252720666)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let cardno = apex.item( "P49_CARDNO" ).getValue(); ',
'',
'',
'let last4 = cardno.substring(cardno.length - 4);  ',
'let pin = apex.item( "P49_PIN" ).getValue();   ',
'',
'',
'',
'if (last4 == pin)',
'{ ',
'    //Valid Pin',
'    apex.item("P49_R2").setValue("Please Enter Amount");',
'    apex.item("P49_AMOUNT").show();',
'    apex.item("P49_R1").hide();',
'    apex.item("P49_PIN").hide();',
'}',
'else',
'{',
'    //InValid Pin',
'   apex.item("P49_R2").show();',
'   apex.item("P49_R2").setValue("Invalid Pin");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9464314869720670)
,p_name=>'OnC4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9464867265720672)
,p_event_id=>wwv_flow_imp.id(9464314869720670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P49_AMOUNT" ).getValue(); ',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount ',
'    apex.item( "P49_R3" ).setValue("Valid Amount"); ',
'    apex.item( "P49_AMOUNT" ).hide();',
'    apex.item( "P49_CARDNO" ).hide();',
'    apex.item( "P49_CUSTNAME" ).hide(); ',
'    apex.item( "P49_R4" ).show();',
'}',
'else',
'{',
'    // InValid Amount ',
'    apex.item( "P49_CUSTNAME" ).hide(); ',
'    apex.item( "P49_R3" ).show();',
'    apex.item( "P49_R3" ).setValue("InValid Amount - Please reenter");',
'    apex.item( "P49_AMOUNT" ).show();',
'    apex.item( "P49_R4" ).hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9465205136720673)
,p_name=>'OC5'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_R3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9465737938720675)
,p_event_id=>wwv_flow_imp.id(9465205136720673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P49_AMOUNT" ).getValue(); ',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount',
'    apex.item( "P49_PIN" ).disable(); ',
'    apex.item( "P49_AMOUNT" ).show(); ',
'    apex.item( "P49_R2" ).hide(); ',
'    apex.item( "P49_R3" ).hide(); ',
'    apex.item( "P49_R4" ).show(); ',
'}',
'else',
'{',
'    // InValid Amount',
'    apex.item( "P49_AMOUNT" ).hide(); ',
'    apex.item( "P49_R4" ).hide(); ',
'}',
'',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9460730523720655)
,p_name=>'OnC01'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_R1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9461285644720658)
,p_event_id=>wwv_flow_imp.id(9460730523720655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let l_status = apex.item( "P49_STATUS" ).getValue(); ',
'',
'if (l_status == "Blocked")',
'{',
'    alert("Card is Blocked");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9461682168720659)
,p_name=>'OC1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9462199242720661)
,p_event_id=>wwv_flow_imp.id(9461682168720659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let l_status = apex.item( "P49_STATUS" ).getValue(); ',
'',
' alert(l_status);',
'',
'if (l_status == "Blocked")',
'{',
'    alert("Card is Blocked");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10593019302027519)
,p_name=>'ocA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_PLAYAUDIO'
,p_condition_element=>'P49_PLAYAUDIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'TRUE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10593174510027520)
,p_event_id=>wwv_flow_imp.id(10593019302027519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'hi'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10796968315570409)
,p_name=>'ConfirmSound'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10796896076570408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10797041789570410)
,p_event_id=>wwv_flow_imp.id(10796968315570409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    let filename = apex.item( "P49_FILENAME" ).getValue(); ',
'    let audiourl = "https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/Speech/"+filename;',
'        ',
'    $x_Show("showconfirm");',
'    $x_Hide("showdeposit");',
'    ',
'    soundHandle = document.getElementById(''soundHandle'');',
'    soundHandle.src = audiourl; ',
'    soundHandle.play();',
'    '))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P49_FILENAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10797281544570412)
,p_name=>'Final'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10797113234570411)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10797303878570413)
,p_event_id=>wwv_flow_imp.id(10797281544570412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'$x_Hide("showconfirm");',
'apex.item( "P49_DETAILS" ).hide();  ',
'soundHandle = document.getElementById(''soundHandle'');',
'soundHandle.src = ''#APP_FILES#audio/chqdepositedthankyou.mp3'';',
'soundHandle.play(); ',
' '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9456759614720635)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CallLamaCheque'
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
'    l_input_text varchar2(100) := ''What is the Date, Payee and Amount on this Cheque'';',
'    l_audio_content varchar2(1000);',
'    l_filename varchar2(100) := ''NOFILE'';',
'    ',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P49_IMAGE_UPLOAD;',
' ',
'    --:P49_ID := l_id;',
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
'                        "text": "''||l_input_text||''"',
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
' ',
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
' ',
'        ',
'    -- Gen Audio ',
'    l_audio_content := l_text||'' Please confirm to Deposit or Sign out to Cancel'';',
'',
'    l_filename := text2speech (l_audio_content );',
'',
'    -- Get check details ',
'    :P49_ID := l_id;',
'    :P49_DETAILS := l_text;',
'    :P49_INFO := ''Cheque Deposited'';',
'    :P49_FILENAME := l_filename;',
' ',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9449968698720579)
,p_internal_uid=>9456759614720635
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14327037303027546)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CallLamaCheque_1'
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
'    l_input_text varchar2(100) := ''What is the Date, Payee and Amount on this Cheque'';',
'    l_audio_content varchar2(1000);',
'    l_filename varchar2(100) := ''NOFILE'';',
'    ',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P49_IMAGE_UPLOAD;',
' ',
'    --:P49_ID := l_id;',
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
'                        "text": "''||l_input_text||''"',
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
'',
'    --     htp.p ('' <script>''); ',
'    --     htp.p ('' soundHandle = document.getElementById("soundHandle");'' );',
'    --     htp.p ('' soundHandle.src = "#APP_FILES#audio/chequedeposited.mp3";'' );',
'    --     htp.p ('' soundHandle.play();'' );',
'    --    htp.p (''</script>''); ',
'        ',
'    -- Gen Audio ',
'    l_audio_content := l_text||'' Please confirm to Deposit or Sign out to Cancel'';',
'',
'    l_filename := text2speech (l_audio_content );',
'',
'    -- Get check details ',
'    :P49_ID := l_id;',
'    :P49_DETAILS := l_text;',
'    :P49_INFO := ''Cheque Deposited'';',
'    :P49_FILENAME := l_filename;',
'',
'    --HTP.p (''<script type="text/javascript">'');',
'    --HTP.p (''alert("The value of  ''||l_filename||'' is  ")'' );',
'   -- HTP.p (''</script>'');',
'',
'',
'    -- htp.p(''<script type="text/javascript">'');  ',
'    -- htp.p('' alert(''''This value is in use''''); '');  ',
'    -- htp.p(''</script>'');',
'     ',
'    -- get card number',
'    -- select regexp_replace(l_text, ''[^[:digit:]]'', '''') into l_cardno from dual;',
'',
'    -- select first_name, status into l_first_name, l_status from cc_fd where cc_no =  l_cardno and rownum = 1;',
' ',
'',
'    -- :P49_CARDNO := l_cardno;',
'    ',
'    -- :P49_STATUS := l_status;',
'',
'    -- if (l_status = ''Blocked'') then  ',
'    --     :P49_CUSTNAME := ''Card has been Blocked '';  ',
'    -- else  ',
'    --     :P49_CUSTNAME := ''Welcome ''||l_first_name; ',
'    -- end if;',
'',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9449968698720579)
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_internal_uid=>14327037303027546
);
wwv_flow_imp.component_end;
end;
/
