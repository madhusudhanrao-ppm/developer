prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(71334051156149701)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(24748453115291284)
,p_default_page_template=>wwv_flow_imp.id(71099158559149456)
,p_default_dialog_template=>wwv_flow_imp.id(71094002735149453)
,p_error_template=>wwv_flow_imp.id(71083989338149447)
,p_printer_friendly_template=>wwv_flow_imp.id(71099158559149456)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(71083989338149447)
,p_default_button_template=>wwv_flow_imp.id(71249079879149558)
,p_default_region_template=>wwv_flow_imp.id(71175863779149507)
,p_default_chart_template=>wwv_flow_imp.id(71175863779149507)
,p_default_form_template=>wwv_flow_imp.id(71175863779149507)
,p_default_reportr_template=>wwv_flow_imp.id(71175863779149507)
,p_default_tabform_template=>wwv_flow_imp.id(71175863779149507)
,p_default_wizard_template=>wwv_flow_imp.id(71175863779149507)
,p_default_menur_template=>wwv_flow_imp.id(71188248204149513)
,p_default_listr_template=>wwv_flow_imp.id(71175863779149507)
,p_default_irr_template=>wwv_flow_imp.id(71166117265149501)
,p_default_report_template=>wwv_flow_imp.id(71214066555149528)
,p_default_label_template=>wwv_flow_imp.id(71246604395149554)
,p_default_menu_template=>wwv_flow_imp.id(71250677287149559)
,p_default_calendar_template=>wwv_flow_imp.id(71250787196149561)
,p_default_list_template=>wwv_flow_imp.id(71230503770149541)
,p_default_nav_list_template=>wwv_flow_imp.id(71242251392149549)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(71242251392149549)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(71236903875149546)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(71112088585149469)
,p_default_dialogr_template=>wwv_flow_imp.id(71109283471149467)
,p_default_option_label=>wwv_flow_imp.id(71246604395149554)
,p_default_required_label=>wwv_flow_imp.id(71247917898149556)
,p_default_navbar_list_template=>wwv_flow_imp.id(71236517971149546)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
