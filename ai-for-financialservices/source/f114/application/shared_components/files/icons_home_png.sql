prompt --application/shared_components/files/icons_home_png
begin
--   Manifest
--     APP STATIC FILES: 114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773DF8000000097048597300000B1200000B1201D2DD7EFC00000249494441544889ED95CF6B92711CC75F8FCE709A3F4A8DD1286D5610420D7FACBC945DC475A8DDBAC546A7';
wwv_flow_imp.g_varchar2_table(2) := 'D1C508FA1B462CAA43ECD48A6ED161EE92B2439B5D1699E0220B2A6A2B82985A2E3793CCD9E1F1D97C9CBF96041D7AC373F8FC7C3F9FF7F7F37D1EA15C2ED32E222E8F0F20108FCDB55B23D412ACCF988380110829FCE944A5B10D0801C72A690BC05020';
wwv_flow_imp.g_varchar2_table(3) := '1E5BDC16C1FA8CD907CC56CCA8C29FF6455C9E21E01E60A8A95D018603F158A81981A25930E2F2DC04A6A4E66A9B15B5CD2A850DC05425677B13FCF8D6457CB267359F56ED9462A63383F48C5C00E0CBDDFB641E85ABFB34946C0BC1F22BCDECCB87167E';
wwv_flow_imp.g_varchar2_table(4) := '15C4E1941A0DBD9746D10DB86585B967CFF97C7B82523E2FB9EA4A2623787CCA39F973553922D96A9B95FD57AFA0B258EA8E5F4CA5F878ED3A85C5A56AF7AD403C169411D4D9129924C96C811BAF977118D4A2BD52E0F2913D388CA2DD4C3221EC74CBB6';
wwv_flow_imp.g_varchar2_table(5) := 'A45692EFC512DEF01B72C512272C5A009EA6D6D0A994CC0F1E46AF5236954C0104A9DA12FBF8984CEF64B640AE58DA224FAE5822992D6CD8BA0137F6F1B1DA2D0B0A61A73BA4E8EE3EBBEBB44F9024A9C59DB719008EEE162579F1556C7CF190A96E7E95';
wwv_flow_imp.g_varchar2_table(6) := '640B42B95CE6D3FB770DBF17F3A935CE3FF900209308E0C1C903782BBE5A145329FA8E7B85A617AD13489BD7D52AD16154E3DFAB170FDBBCF9B67A9572638B9AA1A5449D605FDF41A1E5040099C41C4BD313329FF5DC28A67E5FCBDAB6CE209388B6E5FB';
wwv_flow_imp.g_varchar2_table(7) := '63824EF09FE0DF2198FE0BBDA3B07993872B8FB15EA6B6D7DEAFD2EA65B11D464B164834689E45FC05F01B37A5E8E8486C622A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(23310632001896113)
,p_file_name=>'icons/home.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
