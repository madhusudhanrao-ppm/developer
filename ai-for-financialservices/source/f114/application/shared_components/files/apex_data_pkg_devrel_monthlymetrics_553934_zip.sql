prompt --application/shared_components/files/apex_data_pkg_devrel_monthlymetrics_553934_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808006A45B05A7BD6612DDF0000008D0400001A00000044455652454C5F4D4F4E54484C594D4554524943532E6A736F6ECDD2410AC2301085E17D8F91B585994982DA73B8131169B3086D55DAA00BF1EE46AB54DA4751574202998F10';
wwv_flow_imp.g_varchar2_table(2) := 'F8219744F9E0EA5665EBE412CF85CA6C3253853B35AEDAD63BBFDFDE4DA2D52E343E6F8B5D702A5342625296947845943D968A97EE8F9DBC3BC707E7F49C2B5FBAF7B971C7431B5E52E795CFCB361C2ABF2F19A120D4080D42FBC06B327BF6E94FFB6C4A';
wwv_flow_imp.g_varchar2_table(3) := '537D8B419FD8516047C342A002554335506DA77DE6F28B4C9EC85C0E32799CC93013A840D5500D54DB699FC920937FC8641A76D2B89360E75805AA866AA0DA4EFB4EF9A273EAD732FFE7B7DDC47D03504B03041400000808006A45B05A44A2810FA40100';
wwv_flow_imp.g_varchar2_table(4) := '00CE0800002200000044455652454C5F4D4F4E54484C594D4554524943535F70726F66696C652E6A736F6EC5966F6BDB3010C6DFF75318BF8E06751256F22EC41E15B1DB127B19A32941C897458BFE049D9A304ABFFB6465248C3614D2E0082CD073F71C';
wwv_flow_imp.g_varchar2_table(5) := 'BFC312D2CB5514C50B2181B83F6B88A341D4EB34120AFDCB8BD66C1B6DC12442679F0A9A9BDA2734A178987793EFD5B79B38C4BD812048E0CED810160E14EE624B608D0B89D064212CBAB7E5396E9AEAD220D4C13E8B77DE85B1DC335AA1C876E96BE29A';
wwv_flow_imp.g_varchar2_table(6) := 'F180EBECF33FAB91CF4AA3D7FCEAD17F51F412661FD34C85E498A6A15C106BE6D8BEEBE42003178A49C2976CD7C197772C44820EB683EFFFAEEB834920F98D46EF1B0DFA6BE708619A4D27593E2F86F46EDE166D0D1B0B72AE98D0F3D3C98BAC9AD05199';
wwv_flow_imp.g_varchar2_table(7) := '0EABEC0876F738DAD7F7C914F85FCED1A7C3A1A6DF0B8A39A218AE42D24F3F485190349DC5D52CBEBD4D7A83820ECAF2D44E689515539AFD285BDA2CFE886C046CF133BC391D672DF24AB1824FF14EB287FBB26A91D8C2DAA03B99B918E574342EABFB9C';
wwv_flow_imp.g_varchar2_table(8) := 'DE8DAFDBC1565C0ABE4267A4D0ABEBB3902717204FCE42DEBD0079F72CE4BD0B90F7CE42DEBF0079FF23723F3F851B7FCDAC7F26348F88E6D68FFA57AF7F01504B010214001400000808006A45B05A7BD6612DDF0000008D0400001A0000000000000000';
wwv_flow_imp.g_varchar2_table(9) := '002000B6810000000044455652454C5F4D4F4E54484C594D4554524943532E6A736F6E504B010214001400000808006A45B05A44A2810FA4010000CE080000220000000000000000002000B6811701000044455652454C5F4D4F4E54484C594D45545249';
wwv_flow_imp.g_varchar2_table(10) := '43535F70726F66696C652E6A736F6E504B0506000000000200020098000000FB0200000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8503504560166449)
,p_file_name=>'APEX$DATA$PKG/DEVREL_MONTHLYMETRICS$553934.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
