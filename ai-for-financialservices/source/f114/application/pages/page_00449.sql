prompt --application/pages/page_00449
begin
--   Manifest
--     PAGE: 00449
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
 p_id=>449
,p_name=>'Cheque Deposit V2'
,p_alias=>'CHEQUE-DEPOSIT-V2'
,p_step_title=>'Cheque Deposit V2'
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(9553804576069255)
,p_navigation_list_template_id=>wwv_flow_imp.id(71242251392149549)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29465175794754446)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71109283471149467)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P449_ID'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29465554953754450)
,p_plug_name=>'Cheque Deposit'
,p_parent_plug_id=>wwv_flow_imp.id(29465175794754446)
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
 p_id=>wwv_flow_imp.id(29466555483754460)
,p_plug_name=>'Rg'
,p_parent_plug_id=>wwv_flow_imp.id(29465554953754450)
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
 p_id=>wwv_flow_imp.id(29465392825754448)
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
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10796779516570407)
,p_plug_name=>'HOPE'
,p_parent_plug_id=>wwv_flow_imp.id(29465392825754448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    l_audio varchar2(1000) := ''<script language="javascript"> ',
'              soundHandle = document.getElementById("soundHandle");',
'                soundHandle.src = "#APP_FILES#audio/chqdepositedthankyou.mp3";',
'                soundHandle.play(); ',
'             </script>'';',
'    ',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P449_IMAGE_UPLOAD;',
' ',
'    --:P449_ID := l_id;',
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
'   -- l_audio_content := l_text||'' has been deposited'';',
'',
'   -- l_filename := text2speech (l_audio_content );',
'   Htp.p(''Hiiiiiiiiiii 2'');',
'',
'   Htp.p(l_audio);',
'',
'    -- Get check details ',
'    :P449_ID := l_id;',
'    :P449_DETAILS := l_text;',
'    :P449_INFO := ''Cheque Deposited'';',
'   -- :P449_FILENAME := l_filename;',
'',
'   ',
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
'    -- :P449_CARDNO := l_cardno;',
'    ',
'    -- :P449_STATUS := l_status;',
'',
'    -- if (l_status = ''Blocked'') then  ',
'    --     :P449_CUSTNAME := ''Card has been Blocked '';  ',
'    -- else  ',
'    --     :P449_CUSTNAME := ''Welcome ''||l_first_name; ',
'    -- end if;',
'',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P449_IMAGE_UPLOAD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21409702144238004)
,p_plug_name=>'Audio'
,p_parent_plug_id=>wwv_flow_imp.id(29465392825754448)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <audio id="soundHandle" style="display: none;"></audio>',
'<script>',
'   // let audio = apex.item("P449_FILENAME").getValue();',
'   // alert(audio);',
'  soundHandle = document.getElementById(''soundHandle'');',
'    soundHandle.src = ''#APP_FILES#audio/chqdepositedthankyou.mp3'';',
'    soundHandle.play();',
'',
'   // soundHandle = document.getElementById(''soundHandle'');',
'   // $x_Show("signout_btn");',
'</script>'))
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P449_ID'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21412318551238030)
,p_plug_name=>'AAA'
,p_parent_plug_id=>wwv_flow_imp.id(29465392825754448)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_test varchar2(200) := ''yes'';',
'',
'begin',
'    Htp.p (''Hi there'');',
'    HTP.p (''<script type="text/javascript">'');',
'    HTP.p (''alert("The value of  v_test is  ")'' );',
'    HTP.p (''</script>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29465051509754445)
,p_plug_name=>'Image Preview'
,p_parent_plug_id=>wwv_flow_imp.id(29465392825754448)
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
 p_id=>wwv_flow_imp.id(29632073190460354)
,p_plug_name=>'BC'
,p_region_name=>'static_id2'
,p_parent_plug_id=>wwv_flow_imp.id(29465392825754448)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(71175863779149507)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21409971612238006)
,p_plug_name=>'Btn'
,p_parent_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71112088585149469)
,p_plug_display_sequence=>50
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(209980894345461667)
,p_plug_name=>'face'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71110656683149468)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'<iframe title="ATM Machine" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:800px" ',
'webkitallowfullscreen="true"',
'allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'execution-while-out-of-viewport execution-while-not-rendered web-share ',
'src="https://sketchfab.com/models/13db2fd3928e4a64b4ca5fb64010b2f3/embed?autostart=1&ui_theme=dark&dnt=1"> </iframe> ',
'</div>'))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P449_ID'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10818775427210549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29466555483754460)
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
 p_id=>wwv_flow_imp.id(10818097634210545)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29466555483754460)
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
 p_id=>wwv_flow_imp.id(10818347106210548)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29466555483754460)
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
 p_id=>wwv_flow_imp.id(10820751277210558)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_button_name=>'SignOut'
,p_button_static_id=>'signout_btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--padTop'
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
 p_id=>wwv_flow_imp.id(20190436496739890)
,p_name=>'P449_DETAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>10
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20195279865739920)
,p_name=>'P449_INFO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21409971612238006)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21416740352238104)
,p_name=>'P449_FILENAME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_prompt=>'FILENAME'
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
 p_id=>wwv_flow_imp.id(29467587743754515)
,p_name=>'P449_IMAGE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29465554953754450)
,p_prompt=>'Image Upload'
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_cropping', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_files_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29472787276754554)
,p_name=>'P449_DISPLAY_IMG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_prompt=>'Display Image'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    '   select blob_content',
    '    from apex_application_temp_files',
    '    where id = :P449_ID;')))).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29473051772754556)
,p_name=>'P449_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29475164324754577)
,p_name=>'P449_R1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_item_default=>'Please Enter PIN'
,p_prompt=>'R11111'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P449_STATUS'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29475189048754578)
,p_name=>'P449_CARDNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29475974770754585)
,p_name=>'P449_PIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_prompt=>'Pin'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P449_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29476336180754589)
,p_name=>'P449_R2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P449_CARDNO'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29482265213754612)
,p_name=>'P449_RESPONSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29465051509754445)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29638877729460453)
,p_name=>'P449_AMOUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>'P449_CARDNO'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29639267960460457)
,p_name=>'P449_R3'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P449_CARDNO'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29639590750460461)
,p_name=>'P449_R4'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29640777849460472)
,p_name=>'P449_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29640859598460473)
,p_name=>'P449_CUSTNAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29641522723460480)
,p_name=>'P449_TRASH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(29632073190460354)
,p_source=>'select ''#APP_FILES#atm/trash.gif'' from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_display_when=>'P449_STATUS'
,p_display_when2=>'Blocked'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(71246604395149554)
,p_item_css_classes=>'u-success-text'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text', '<img src="#APP_FILES#rtg.png">',
  'based_on', 'URL')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10828428683210636)
,p_name=>'ChangeX'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10829439715210641)
,p_event_id=>wwv_flow_imp.id(10828428683210636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10828919351210640)
,p_event_id=>wwv_flow_imp.id(10828428683210636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P449_IMAGE_UPLOAD");',
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
 p_id=>wwv_flow_imp.id(10830770420210646)
,p_name=>'Change_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_IMAGE_UPLOAD_NU'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10831100553210647)
,p_event_id=>wwv_flow_imp.id(10830770420210646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Hi'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10831601928210649)
,p_event_id=>wwv_flow_imp.id(10830770420210646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Preview the image',
'var input = document.getElementById("P449_IMAGE_UPLOAD");',
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
 p_id=>wwv_flow_imp.id(10829804808210642)
,p_name=>'Ref'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10830307270210644)
,p_event_id=>wwv_flow_imp.id(10829804808210642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_DISPLAY_IMG'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10833841914210656)
,p_name=>'Ol'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10834380825210659)
,p_event_id=>wwv_flow_imp.id(10833841914210656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_R4,P449_R3,P449_R2,P449_AMOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10834877787210662)
,p_event_id=>wwv_flow_imp.id(10833841914210656)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10820751277210558)
,p_build_option_id=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10835299203210663)
,p_name=>'OnC2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_PIN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10835788493210665)
,p_event_id=>wwv_flow_imp.id(10835299203210663)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let cardno = apex.item( "P449_CARDNO" ).getValue(); ',
'',
'',
'let last4 = cardno.substring(cardno.length - 4);  ',
'let pin = apex.item( "P449_PIN" ).getValue();   ',
'',
'',
'',
'if (last4 == pin)',
'{ ',
'    //Valid Pin',
'    apex.item("P449_R2").setValue("Please Enter Amount");',
'    apex.item("P449_AMOUNT").show();',
'    apex.item("P449_R1").hide();',
'    apex.item("P449_PIN").hide();',
'}',
'else',
'{',
'    //InValid Pin',
'   apex.item("P449_R2").show();',
'   apex.item("P449_R2").setValue("Invalid Pin");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10836112589210667)
,p_name=>'OnC4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10836621609210669)
,p_event_id=>wwv_flow_imp.id(10836112589210667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P449_AMOUNT" ).getValue(); ',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount ',
'    apex.item( "P449_R3" ).setValue("Valid Amount"); ',
'    apex.item( "P449_AMOUNT" ).hide();',
'    apex.item( "P449_CARDNO" ).hide();',
'    apex.item( "P449_CUSTNAME" ).hide(); ',
'    apex.item( "P449_R4" ).show();',
'}',
'else',
'{',
'    // InValid Amount ',
'    apex.item( "P449_CUSTNAME" ).hide(); ',
'    apex.item( "P449_R3" ).show();',
'    apex.item( "P449_R3" ).setValue("InValid Amount - Please reenter");',
'    apex.item( "P449_AMOUNT" ).show();',
'    apex.item( "P449_R4" ).hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10837018555210670)
,p_name=>'OC5'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_R3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10837537541210672)
,p_event_id=>wwv_flow_imp.id(10837018555210670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let amount = apex.item( "P449_AMOUNT" ).getValue(); ',
'',
'if (amount > 0 && amount <= 5000)',
'{',
'    // Valid Amount',
'    apex.item( "P449_PIN" ).disable(); ',
'    apex.item( "P449_AMOUNT" ).show(); ',
'    apex.item( "P449_R2" ).hide(); ',
'    apex.item( "P449_R3" ).hide(); ',
'    apex.item( "P449_R4" ).show(); ',
'}',
'else',
'{',
'    // InValid Amount',
'    apex.item( "P449_AMOUNT" ).hide(); ',
'    apex.item( "P449_R4" ).hide(); ',
'}',
'',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10832049909210650)
,p_name=>'OnC01'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_R1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10832575844210652)
,p_event_id=>wwv_flow_imp.id(10832049909210650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let l_status = apex.item( "P449_STATUS" ).getValue(); ',
'',
'if (l_status == "Blocked")',
'{',
'    alert("Card is Blocked");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10832991633210653)
,p_name=>'OC1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10833493482210655)
,p_event_id=>wwv_flow_imp.id(10832991633210653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let l_status = apex.item( "P449_STATUS" ).getValue(); ',
'',
' alert(l_status);',
'',
'if (l_status == "Blocked")',
'{',
'    alert("Card is Blocked");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10837930686210673)
,p_name=>'ocA'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_PLAYAUDIO'
,p_condition_element=>'P449_PLAYAUDIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'TRUE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10838498460210675)
,p_event_id=>wwv_flow_imp.id(10837930686210673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'hi'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10828017758210631)
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
'    where name = :P449_IMAGE_UPLOAD;',
' ',
'    --:P449_ID := l_id;',
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
'   -- l_audio_content := l_text||'' has been deposited'';',
'',
'   -- l_filename := text2speech (l_audio_content );',
'',
'    -- Get check details ',
'    :P449_ID := l_id;',
'    :P449_DETAILS := l_text;',
'    :P449_INFO := ''Cheque Deposited'';',
'   -- :P449_FILENAME := l_filename;',
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
'    -- :P449_CARDNO := l_cardno;',
'    ',
'    -- :P449_STATUS := l_status;',
'',
'    -- if (l_status = ''Blocked'') then  ',
'    --     :P449_CUSTNAME := ''Card has been Blocked '';  ',
'    -- else  ',
'    --     :P449_CUSTNAME := ''Welcome ''||l_first_name; ',
'    -- end if;',
'',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10818775427210549)
,p_required_patch=>wwv_flow_imp.id(71071986790149414)
,p_internal_uid=>10828017758210631
);
wwv_flow_imp.component_end;
end;
/
