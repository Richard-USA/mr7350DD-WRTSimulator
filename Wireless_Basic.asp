<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
<meta name="robots" content="noindex" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link type="text/css" rel="stylesheet" href="style/common.css" />
<link type="text/css" rel="stylesheet" href="style/elegant/style.css" />
<!--[if IE]><link type="text/css" rel="stylesheet" href="style/common_style_ie.css" /><![endif]-->
<link type="text/css" rel="stylesheet" href="style/elegant/fresh.css" />
<script type="text/javascript" src="common.js"></script>
<script type="text/javascript" src="lang_pack/english.js"></script>
<link type="text/css" rel="stylesheet" href="style/pwc/ddwrt.css" />
<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/effects.js"></script>
<script type="text/javascript" src="js/window.js"></script>
<script type="text/javascript" src="js/window_effects.js"></script>
<title>DD-WRT (build 65498) - Wireless</title>
<script type="text/javascript">history.pushState({urlPath:'Wireless_Basic.asp'}, "DD-WRT (build 65498) - Wireless", 'Wireless_Basic.asp')
</script><script type="text/javascript">
//<![CDATA[
var wl0_channel = '';var wl0_nctrlsb = 'none';var wl0_nbw = '20';var wl0_phytype = '';var wl0_40m_disable = '';var wl1_channel = '';var wl1_nctrlsb = '';var wl1_nbw = '';var wl1_phytype = '';var wl1_40m_disable = '';var wl2_channel = '';var wl2_nctrlsb = '';var wl2_nbw = '';var wl2_phytype = '';var wl2_40m_disable = '';function create_wchannel0_auto(F) {F.wl0_wchannel.length = 1;F.wl0_wchannel[0] = new Option(share.auto);F.wl0_wchannel[0].value = "0";}function create_wchannel1_auto(F) {F.wl1_wchannel.length = 1;F.wl1_wchannel[0] = new Option(share.auto);F.wl1_wchannel[0].value = "0";}function create_wchannel2_auto(F) {F.wl2_wchannel.length = 1;F.wl2_wchannel[0] = new Option(share.auto);F.wl2_wchannel[0].value = "0";}function create_wchannel0(F) {var max_channel = '14';var wch;if (wl0_nctrlsb == "lower") {wch = parseInt(F.wl0_channel.value) + 2;} else {wch = parseInt(F.wl0_channel.value) - 2;}F.wl0_wchannel.length = parseInt(max_channel) - 4;for (ch = 3; ch <= (parseInt(max_channel) - 2); ch++) {F.wl0_wchannel[ch - 3] = new Option(ch);F.wl0_wchannel[ch - 3].value = ch;}if (wch < 3 || wch > max_channel - 2 || wch == "0")F.wl0_wchannel[0].selected = true;elseF.wl0_wchannel[wch - 3].selected = true;}function create_wchannel1(F) {var max_channel = '14';var wch;if (wl1_nctrlsb == "lower") {wch = parseInt(F.wl1_channel.value) + 2;} else {wch = parseInt(F.wl1_channel.value) - 2;}F.wl1_wchannel.length = parseInt(max_channel) - 4;for (ch = 3; ch <= (parseInt(max_channel) - 2); ch++) {F.wl1_wchannel[ch - 3] = new Option(ch);F.wl1_wchannel[ch - 3].value = ch;}if (wch < 3 || wch > max_channel - 2 || wch == "0")F.wl1_wchannel[0].selected = true;elseF.wl1_wchannel[wch - 3].selected = true;}function create_wchannel2(F) {var max_channel = '14';var wch;if (wl2_nctrlsb == "lower") {wch = parseInt(F.wl2_channel.value) + 2;} else {wch = parseInt(F.wl2_channel.value) - 2;}F.wl2_wchannel.length = parseInt(max_channel) - 4;for (ch = 3; ch <= (parseInt(max_channel) - 2); ch++) {F.wl2_wchannel[ch - 3] = new Option(ch);F.wl2_wchannel[ch - 3].value = ch;}if (wch < 3 || wch > max_channel - 2 || wch == "0")F.wl2_wchannel[0].selected = true;elseF.wl2_wchannel[wch - 3].selected = true;}function InitBW0(num, F) {if (wl0_channel == "0") {if (F.wl0_wchannel)choose_enable(F.wl0_wchannel);choose_enable(F.wl0_schannel);if (F.wl0_wchannel)create_wchannel0_auto(F)} else {SelBW0(num, F);}}function InitBW1(num, F) {if (wl1_channel == "0") {if (F.wl1_wchannel)choose_enable(F.wl1_wchannel);choose_enable(F.wl1_schannel);if (F.wl1_wchannel)create_wchannel1_auto(F)} else {SelBW1(num, F);}}function InitBW2(num, F) {if (wl2_channel == "0") {if (F.wl2_wchannel)choose_enable(F.wl2_wchannel);choose_enable(F.wl2_schannel);if (F.wl2_wchannel) create_wchannel2_auto(F)} else {SelBW2(num, F);}}function SelBW0(num, F) {if (num == 0) { if (F.wl0_wchannel)choose_enable(F.wl0_wchannel);choose_enable(F.wl0_channel);if (F.wl0_wchannel)create_wchannel0_auto(F);} else if (num == 10 || num == 20) {if (F.wl0_wchannel)choose_disable(F.wl0_wchannel);choose_enable(F.wl0_schannel);if (F.wl0_wchannel)create_wchannel0(F);} else {if (F.wl0_wchannel)choose_enable(F.wl0_wchannel);choose_enable(F.wl0_schannel);if (F.wl0_wchannel)create_wchannel0(F);}}function SelBW1(num, F) {if (num == 0) { if (F.wl1_wchannel)choose_enable(F.wl1_wchannel);choose_enable(F.wl1_channel);if (F.wl1_wchannel)create_wchannel1_auto(F);} else if (num == 10 || num == 20) {if (F.wl1_wchannel)choose_disable(F.wl1_wchannel);choose_enable(F.wl1_schannel);if (F.wl1_wchannel)create_wchannel1(F);} else {if (F.wl1_wchannel)choose_enable(F.wl1_wchannel);choose_enable(F.wl1_schannel);if (F.wl1_wchannel)create_wchannel1(F);}}function SelBW2(num, F) {if (num == 0) { if (F.wl2_wchannel)choose_enable(F.wl2_wchannel);choose_enable(F.wl2_channel);if (F.wl2_wchannel)create_wchannel2_auto(F);} else if (num == 10 || num == 20) {if (F.wl2_wchannel)choose_disable(F.wl2_wchannel);choose_enable(F.wl2_schannel);if (F.wl2_wchannel)create_wchannel2(F);} else {if (F.wl2_wchannel)choose_enable(F.wl2_wchannel);choose_enable(F.wl2_schannel);if (F.wl2_wchannel)create_wchannel2(F);}}function vifs_add_submit(F, I) {F.iface.value = I;F.submit_type.value = "add_vifs";F.submit();}function vifs_remove_submit(F, I, VAP) {F.iface.value = I;F.vap.value = VAP;F.submit_type.value = "remove_vifs";F.submit();}function copy_submit(F, I) {F.iface.value = I;F.submit_type.value = "copy_if";F.submit();}function paste_submit(F, I) {F.iface.value = I;F.submit_type.value = "paste_if";F.submit();}function toggle_layer(checkbox, label) {if (checkbox.checked) {show_layer_ext(this, label, true);} else {show_layer_ext(this, label, false);}}function submitcheck(F) {if (F.wl0_ssid)if (F.wl0_ssid.value == "") {alert(errmsg.err50);F.wl0_ssid.focus();return false;}if (F.wl1_ssid)if (F.wl1_ssid.value == "") {alert(errmsg.err50);F.wl1_ssid.focus();return false;}if (F.wl2_ssid)if (F.wl2_ssid.value == "") {alert(errmsg.err50);F.wl2_ssid.focus();return false;}if (F.wl0_nbw) {if (F.wl0_nbw.value == 0) { F.wl0_channel.value = 0;} else if (F.wl0_nbw.value == 10) { F.wl0_nctrlsb.value = "none";F.wl0_nbw.value = 10;} else if (F.wl0_nbw.value == 5) { F.wl0_nctrlsb.value = "none";F.wl0_nbw.value = 5;} else if (F.wl0_nbw.value == 20) { F.wl0_nctrlsb.value = "none";F.wl0_nbw.value = 20;} else if (F.wl0_nbw.value == 80) { F.wl0_nbw.value = 80;} else if (F.wl0_nbw.value == 160) { F.wl0_nbw.value = 160;} else if (F.wl0_nbw.value == "80+80") { F.wl0_nbw.value = "80+80";} else { F.wl0_nbw.value = 40;}}if (F.wl1_nbw) {if (F.wl1_nbw.value == 0) { F.wl1_channel.value = 0;} else if (F.wl1_nbw.value == 5) { F.wl1_nctrlsb.value = "none";F.wl1_nbw.value = 5;} else if (F.wl1_nbw.value == 10) { F.wl1_nctrlsb.value = "none";F.wl1_nbw.value = 10;} else if (F.wl1_nbw.value == 20) { F.wl1_nctrlsb.value = "none";F.wl1_nbw.value = 20;} else if (F.wl1_nbw.value == 80) { F.wl1_nbw.value = 80;} else if (F.wl1_nbw.value == 160) { F.wl1_nbw.value = 160;} else if (F.wl1_nbw.value == "80+80") { F.wl1_nbw.value = "80+80";} else { F.wl1_nbw.value = 40;}}if (F.wl2_nbw) {if (F.wl2_nbw.value == 0) { F.wl2_channel.value = 0;} else if (F.wl2_nbw.value == 5) { F.wl2_nctrlsb.value = "none";F.wl2_nbw.value = 5;} else if (F.wl2_nbw.value == 10) { F.wl2_nctrlsb.value = "none";F.wl2_nbw.value = 10;} else if (F.wl2_nbw.value == 20) { F.wl2_nctrlsb.value = "none";F.wl2_nbw.value = 20;} else if (F.wl2_nbw.value == 80) { F.wl2_nbw.value = 80;} else if (F.wl2_nbw.value == 160) { F.wl2_nbw.value = 160;} else if (F.wl2_nbw.value == "80+80") { F.wl2_nbw.value = "80+80";} else { F.wl2_nbw.value = 40;}}F.radio0_on_time.value = computeWlTimer(0);
F.radio1_on_time.value = computeWlTimer(1);
return true;}function to_submit(F) {if (submitcheck(F)) {F.submit_type.value = "save";F.save_button.value = sbutton.saving;apply(F);}}function to_apply(F) {if (submitcheck(F)) {F.submit_type.value = "save";F.apply_button.value = sbutton.applied;applytake(F);}}function initWlTimer(radio_on_time, radio) {var color_red = '#CD0000';var color_green = '#228B22';for (var i = 0; i < radio_on_time.length; i++) {if (radio_on_time.charAt(i) == 1) {bgcolor = color_green;val = 1;} else {bgcolor = color_red;val = 0;}if (ie4 || op) {eval("document.all.td" + radio + "_" + i + ".style.backgroundColor = '" + bgcolor + "'");eval("document.all.td" + radio + "_" + i + ".value = '" + val + "'");}if (ns4) {eval("document.td" + radio + "_" + i + ".backgroundColor = '" + bgcolor + "'");eval("document.td" + radio + "_" + i + ".value = '" + val + "'");}if (ns6) {eval("document.getElementById('td" + radio + "_" + i + "').style.backgroundColor = '" + bgcolor + "'");eval("document.getElementById('td" + radio + "_" + i + "').value = '" + val + "'");}}}function setWlTimer(id, state, radio) {var color_red = '#CD0000';var color_green = '#228B22';if (id == 'all') {if (state) {bgcolor = color_green;val = 1;} else {bgcolor = color_red;val = 0;}for (var i = 0; i < 24; i++) {if (ie4 || op) {eval("document.all.td" + radio + "_" + i + ".style.backgroundColor = '" + bgcolor + "'");eval("document.all.td" + radio + "_" + i + ".value = '" + val + "'");}if (ns4) {eval("document.td" + radio + "_" + i + ".backgroundColor = '" + bgcolor + "'");eval("document.td" + radio + "_" + i + ".value = '" + val + "'");}if (ns6) {eval("document.getElementById('td" + radio + "_" + i + "').style.backgroundColor = '" + bgcolor + "'");eval("document.getElementById('td" + radio + "_" + i + "').value = '" + val + "'");}}} else {if (ie4 || op) {if (eval("document.all." + id + ".value") == '1') {eval("document.all." + id + ".style.backgroundColor = '" + color_red + "'");eval("document.all." + id + ".value = '0'");} else {eval("document.all." + id + ".style.backgroundColor = '" + color_green + "'");eval("document.all." + id + ".value = '1'");}}if (ns4) {if (eval("document." + id + ".value") == '1') {eval("document." + id + ".backgroundColor = '" + color_red + "'");eval("document." + id + ".value = '0'");} else {eval("document." + id + ".backgroundColor = '" + color_green + "'");eval("document." + id + ".value = '1'");}}if (ns6) {if (eval("document.getElementById('" + id + "').value") == '1') {eval("document.getElementById('" + id + "').style.backgroundColor = '" + color_red + "'");eval("document.getElementById('" + id + "').value = '0'");} else {eval("document.getElementById('" + id + "').style.backgroundColor = '" + color_green + "'");eval("document.getElementById('" + id + "').value = '1'");}}}}function computeWlTimer(radio) {var radio_on_time = '';for (var i = 0; i < 24; i++) {if (ie4 || op) {radio_on_time += eval("document.all.td" + radio + "_" + i + ".value");}if (ns4) {radio_on_time += eval("document.td" + radio + "_" + i + ".value");}if (ns6) {radio_on_time += eval("document.getElementById('td" + radio + "_" + i + "').value");}}return radio_on_time;}function setRadioTable(radio) {var table = document.getElementById("radio" + radio + "_table");cleanTable(table);var row1 = table.insertRow(-1);var row2 = table.insertRow(-1);row2.style.cursor = "pointer";for (var i = 0; i < 24; i++) {var cell_label = row1.insertCell(-1);cell_label.innerHTML = i;var cell_timer = row2.insertCell(-1);cell_timer.style.width = "4%";cell_timer.id = "td" + radio + "_" + i;cell_timer.title = i + "h - " + eval(i + 1) + "h";cell_timer.innerHTML = "&nbsp;";cell_timer.onclick = function () {setWlTimer(this.id, true, radio);};}}var update;addEvent(window, "load", function () {stickControl(1);setRadioTable(0);
initWlTimer('111111111111111111111111',0);
show_layer_ext(document.wireless.radio0_timer_enable, 'radio0', 0);setRadioTable(1);
initWlTimer('111111111111111111111111',1);
show_layer_ext(document.wireless.radio1_timer_enable, 'radio1', 0);initChannelProperties();var wl0_mode = "";if (wl0_mode == "ap" || wl0_mode == "infra") {if (wl0_phytype == 'n' || wl0_phytype == 'h' || wl0_phytype == 'v' || wl0_phytype == 's')InitBW0('20', document.wireless);}var wl1_mode = "";if (wl1_mode == "ap" || wl1_mode == "infra") {if (wl1_phytype == 'n' || wl1_phytype == 'h' || wl1_phytype == 'v' || wl1_phytype == 's')InitBW1('', document.wireless);}var wl2_mode = "";if (wl2_mode == "ap" || wl2_mode == "infra") {if (wl2_phytype == 'n' || wl2_phytype == 'h' || wl2_phytype == 'v' || wl2_phytype == 's')InitBW2('', document.wireless);}var thisTitle = idx.h22;document.getElementsByName('wireless')[0].setAttribute("title", thisTitle);update = new StatusbarUpdate();update.start();});addEvent(window, "unload", function () {update.stop();});function setChannelProperties(channels) {index = channels.selectedIndex;properties = eval('(' + channels[index].getAttribute('rel') + ')');var iflabel = channels.name.substr(0, channels.name.length - 8);var nctrlsb = document.forms[0][iflabel + '_nctrlsb'];var F = document.forms[0][iflabel + '_channelbw'];if (!F) {F = document.forms[0][iflabel + '_nbw'];}if (nctrlsb) {var selected = 0;if (nctrlsb.length) {selected = nctrlsb.options[nctrlsb.selectedIndex].value;}while (nctrlsb.length) {nctrlsb.remove(0);}if (channels[index].value == '0') {nctrlsb.options[nctrlsb.length] = new Option('Auto', wl_basic.ch_pos_auto);} else {if (F.value == 40 || F.value == 2040) {if (properties.luu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_lwr, 'luu');}if (properties.ull == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_upr, 'ull');}}if (F.value == "80+80" || F.value == 80) {if (properties.lul == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_ll, 'lul');}if (properties.luu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_lu, 'luu');}if (properties.ull == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_ul, 'ull');}if (properties.ulu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_uu, 'ulu');}}if (F.value == 160) {if (properties.lll == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_lll, 'lll');}if (properties.llu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_llu, 'llu');}if (properties.lul == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_lul, 'lul');}if (properties.luu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_luu, 'luu');}if (properties.ull == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_ull, 'ull');}if (properties.ulu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_ulu, 'ulu');}if (properties.uul == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_uul, 'uul');}if (properties.uuu == 1) {nctrlsb.options[nctrlsb.length] = new Option(wl_basic.ch_pos_uuu, 'uuu');}}}nctrlsb.selectedIndex = 0;for (i = 0; i < nctrlsb.length; i++) {if (nctrlsb.options[i].value == selected) {nctrlsb.selectedIndex = i;}}}}function show_airtime_policy(F, prefix, idname, vifs) {var elem = F.elements[prefix + "_at_policy"];var ifs = vifs.split(" ");if (elem.value == 0) {show_layer_ext(F, idname + "_idairtimelimit", false);show_layer_ext(F, idname + "_idairtimeweight", false);if (vifs != '') {for (i = 0; i < ifs.length; i++) {show_layer_ext(F, ifs[i] + "_idairtimelimit", false);show_layer_ext(F, ifs[i] + "_idairtimeweight", false);}}}if (elem.value == 1) {show_layer_ext(F, idname + "_idairtimelimit", false);show_layer_ext(F, idname + "_idairtimeweight", true);if (vifs != '') {for (i = 0; i < ifs.length; i++) {show_layer_ext(F, ifs[i] + "_idairtimelimit", false);show_layer_ext(F, ifs[i] + "_idairtimeweight", true);}}}if (elem.value == 2) {show_layer_ext(F, idname + "_idairtimelimit", true);show_layer_ext(F, idname + "_idairtimeweight", true);if (vifs != '') {for (i = 0; i < ifs.length; i++) {show_layer_ext(F, ifs[i] + "_idairtimelimit", true);show_layer_ext(F, ifs[i] + "_idairtimeweight", true);}}}}function initChannelProperties() {for (j = 0; j < document.forms[0].elements.length; j++) {element = document.forms[0].elements[j];if (element.name) {if (element.name.substr(element.name.length - 8, 8) == '_channel' && element.getAttribute('rel') == 'mac80211') {setChannelProperties(element);}}}}
//]]>
</script></head><body class="gui"><div id="wrapper"><div id="content"><div id="header"><div id="logo"><h1>DD-WRT Control Panel</h1></div><div id="menu">
<div id="menuMain">
<ul id="menuMainList">
<li><a href="index.asp"><script type="text/javascript">Capture(bmenu.setup)</script></a></li>
<li class="current"><span><script type="text/javascript">Capture(bmenu.wireless)</script></span>
<div id="menuSub">
<ul id="menuSubList">
<script type="text/javascript">
//<![CDATA[
 document.write("<a id=\"logout\" title=\"" + share.logout + "\" aria-label=\"" + share.logout + "\" href=\"dologout.asp\">");
//]]>
</script>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="logout" viewBox="0 0 16 16">
<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"></path>
<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path></svg></a><li><span><script type="text/javascript">Capture(bmenu.wirelessBasic)</script></span></li>
<li><a href="WL_WPATable.asp"><script type="text/javascript">Capture(bmenu.wirelessSecurity)</script></a></li>
<li><a href="Roaming.asp"><script type="text/javascript">Capture(bmenu.wirelessRoaming)</script></a></li>
<li><a href="Wireless_MAC.asp"><script type="text/javascript">Capture(bmenu.wirelessMac)</script></a></li>
</ul>
</div>
</li>
<li><a href="Services.asp"><script type="text/javascript">Capture(bmenu.services)</script></a></li>
<li><a href="Firewall.asp"><script type="text/javascript">Capture(bmenu.security)</script></a></li>
<li><a href="Filters.asp"><script type="text/javascript">Capture(bmenu.accrestriction)</script></a></li>
<li><a href="ForwardSpec.asp"><script type="text/javascript">Capture(bmenu.applications)</script></a></li>
<li><a href="Management.asp"><script type="text/javascript">Capture(bmenu.admin)</script></a></li>
<li><a href="Status_Router.asp"><script type="text/javascript">Capture(bmenu.statu)</script></a></li>
</ul>
</div>
</div>
</div><div id="main"><div id="contents"><form title="" name="wireless" action="http://192.168.1.1/apply.cgi" method="post" spellcheck="false"><input type="hidden" name="submit_button" value="Wireless_Basic" /><input type="hidden" name="action" value="Apply" /><input type="hidden" name="change_action" value="gozila_cgi" /><input type="hidden" name="submit_type" value="save" /><input type="hidden" name="radio0_on_time">
<input type="hidden" name="radio1_on_time">
<input type="hidden" name="wl0_nctrlsb" /><input type="hidden" name="wl1_nctrlsb" /><input type="hidden" name="wl2_nctrlsb" /><input type="hidden" name="iface" /><input type="hidden" name="vap" /><h2><script type="text/javascript">Capture(wl_basic.h2_v24)</script> wlan0 <script type="text/javascript">document.write("[5 "+wl_basic.ghz+"/802.11ax] - 802.11ax - Max Vaps(8)");</script></h2>
<fieldset>
<legend><script type="text/javascript">Capture(share.pintrface)</script> wlan0 - SSID [admin ] HWAddr [E8:9F:80:78:55:18]</legend>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_basic.label)</script></div><select name="wlan0_mode" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"ap\" selected=\"selected\" >" + wl_basic.ap + "</option>");
document.write("<option value=\"wdsap\"  >" + wl_basic.wdsap + "</option>");
document.write("<option value=\"wdsap_mtik\"  >" + wl_basic.wdsap_mtik + "</option>");
document.write("<option value=\"apup\"  >" + wl_basic.apup + "</option>");
document.write("<option value=\"sta\"  >" + wl_basic.client + "</option>");
document.write("<option value=\"wet\"  >" + wl_basic.clientRelayd + "</option>");
document.write("<option value=\"wdssta\"  >" + wl_basic.wdssta + "</option>");
document.write("<option value=\"wdssta_mtik\"  >" + wl_basic.wdssta_mtik + "</option>");
document.write("<option value=\"mesh\"  >" + wl_basic.mesh + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.regdom_label)</script></div>
<select name="wlan0_regdomain" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"ALBANIA\"  >ALBANIA</option>");
document.write("<option value=\"ALGERIA\"  >ALGERIA</option>");
document.write("<option value=\"ARGENTINA\"  >ARGENTINA</option>");
document.write("<option value=\"ARMENIA\"  >ARMENIA</option>");
document.write("<option value=\"ARUBA\"  >ARUBA</option>");
document.write("<option value=\"AUSTRALIA\"  >AUSTRALIA</option>");
document.write("<option value=\"AUSTRIA\"  >AUSTRIA</option>");
document.write("<option value=\"AZERBAIJAN\"  >AZERBAIJAN</option>");
document.write("<option value=\"BOSNIA_AND_HERZEGOVINA\"  >BOSNIA_AND_HERZEGOVINA</option>");
document.write("<option value=\"BANGLADESH\"  >BANGLADESH</option>");
document.write("<option value=\"BARBADOS\"  >BARBADOS</option>");
document.write("<option value=\"BAHRAIN\"  >BAHRAIN</option>");
document.write("<option value=\"BELARUS\"  >BELARUS</option>");
document.write("<option value=\"BELGIUM\"  >BELGIUM</option>");
document.write("<option value=\"BELIZE\"  >BELIZE</option>");
document.write("<option value=\"BOLIVIA\"  >BOLIVIA</option>");
document.write("<option value=\"BRAZIL\"  >BRAZIL</option>");
document.write("<option value=\"BRUNEI_DARUSSALAM\"  >BRUNEI_DARUSSALAM</option>");
document.write("<option value=\"BULGARIA\"  >BULGARIA</option>");
document.write("<option value=\"CAMBODIA\"  >CAMBODIA</option>");
document.write("<option value=\"CANADA\"  >CANADA</option>");
document.write("<option value=\"CHILE\"  >CHILE</option>");
document.write("<option value=\"CHINA\"  >CHINA</option>");
document.write("<option value=\"COLOMBIA\"  >COLOMBIA</option>");
document.write("<option value=\"COSTA_RICA\"  >COSTA_RICA</option>");
document.write("<option value=\"CUBA\"  >CUBA</option>");
document.write("<option value=\"CHRISTMAS_ISLAND\"  >CHRISTMAS_ISLAND</option>");
document.write("<option value=\"CROATIA\"  >CROATIA</option>");
document.write("<option value=\"CYPRUS\"  >CYPRUS</option>");
document.write("<option value=\"CZECH_REPUBLIC\"  >CZECH_REPUBLIC</option>");
document.write("<option value=\"DENMARK\"  >DENMARK</option>");
document.write("<option value=\"DOMINICAN_REPUBLIC\"  >DOMINICAN_REPUBLIC</option>");
document.write("<option value=\"ECUADOR\"  >ECUADOR</option>");
document.write("<option value=\"EGYPT\"  >EGYPT</option>");
document.write("<option value=\"EL_SALVADOR\"  >EL_SALVADOR</option>");
document.write("<option value=\"ESTONIA\"  >ESTONIA</option>");
document.write("<option value=\"FINLAND\"  >FINLAND</option>");
document.write("<option value=\"FRANCE\"  >FRANCE</option>");
document.write("<option value=\"FRANCE_RES\"  >FRANCE_RES</option>");
document.write("<option value=\"GEORGIA\"  >GEORGIA</option>");
document.write("<option value=\"GERMANY\"  >GERMANY</option>");
document.write("<option value=\"GERMANY_BFWA\"  >GERMANY_BFWA</option>");
document.write("<option value=\"GREECE\"  >GREECE</option>");
document.write("<option value=\"GREENLAND\"  >GREENLAND</option>");
document.write("<option value=\"GRENADA\"  >GRENADA</option>");
document.write("<option value=\"GUAM\"  >GUAM</option>");
document.write("<option value=\"GUATEMALA\"  >GUATEMALA</option>");
document.write("<option value=\"HAITI\"  >HAITI</option>");
document.write("<option value=\"HONDURAS\"  >HONDURAS</option>");
document.write("<option value=\"HONG_KONG\"  >HONG_KONG</option>");
document.write("<option value=\"HUNGARY\"  >HUNGARY</option>");
document.write("<option value=\"ICELAND\"  >ICELAND</option>");
document.write("<option value=\"INDIA\"  >INDIA</option>");
document.write("<option value=\"INDIA_BFWA\"  >INDIA_BFWA</option>");
document.write("<option value=\"INDONESIA\"  >INDONESIA</option>");
document.write("<option value=\"IRAN\"  >IRAN</option>");
document.write("<option value=\"IRELAND\"  >IRELAND</option>");
document.write("<option value=\"ISRAEL\"  >ISRAEL</option>");
document.write("<option value=\"ITALY\"  >ITALY</option>");
document.write("<option value=\"JAPAN\"  >JAPAN</option>");
document.write("<option value=\"JORDAN\"  >JORDAN</option>");
document.write("<option value=\"KAZAKHSTAN\"  >KAZAKHSTAN</option>");
document.write("<option value=\"KENYA\"  >KENYA</option>");
document.write("<option value=\"KOREA_REPUBLIC\"  >KOREA_REPUBLIC</option>");
document.write("<option value=\"KUWAIT\"  >KUWAIT</option>");
document.write("<option value=\"LATVIA\"  >LATVIA</option>");
document.write("<option value=\"LEBANON\"  >LEBANON</option>");
document.write("<option value=\"LIECHTENSTEIN\"  >LIECHTENSTEIN</option>");
document.write("<option value=\"LITHUANIA\"  >LITHUANIA</option>");
document.write("<option value=\"LUXEMBOURG\"  >LUXEMBOURG</option>");
document.write("<option value=\"MACAU\"  >MACAU</option>");
document.write("<option value=\"MACEDONIA\"  >MACEDONIA</option>");
document.write("<option value=\"MALAYSIA\"  >MALAYSIA</option>");
document.write("<option value=\"MALTA\"  >MALTA</option>");
document.write("<option value=\"MEXICO\"  >MEXICO</option>");
document.write("<option value=\"MOLDOVA\"  >MOLDOVA</option>");
document.write("<option value=\"MONACO\"  >MONACO</option>");
document.write("<option value=\"MOROCCO\"  >MOROCCO</option>");
document.write("<option value=\"NEPAL\"  >NEPAL</option>");
document.write("<option value=\"NETHERLANDS\"  >NETHERLANDS</option>");
document.write("<option value=\"NEW_ZEALAND\"  >NEW_ZEALAND</option>");
document.write("<option value=\"NORTH_KOREA\"  >NORTH_KOREA</option>");
document.write("<option value=\"NORWAY\"  >NORWAY</option>");
document.write("<option value=\"NORWAY_BFWA\"  >NORWAY_BFWA</option>");
document.write("<option value=\"OMAN\"  >OMAN</option>");
document.write("<option value=\"PAKISTAN\"  >PAKISTAN</option>");
document.write("<option value=\"PAPUA_NEW_GUINEA\"  >PAPUA_NEW_GUINEA</option>");
document.write("<option value=\"PANAMA\"  >PANAMA</option>");
document.write("<option value=\"PERU\"  >PERU</option>");
document.write("<option value=\"PHILIPPINES\"  >PHILIPPINES</option>");
document.write("<option value=\"POLAND\"  >POLAND</option>");
document.write("<option value=\"PORTUGAL\"  >PORTUGAL</option>");
document.write("<option value=\"PUERTO_RICO\"  >PUERTO_RICO</option>");
document.write("<option value=\"QATAR\"  >QATAR</option>");
document.write("<option value=\"ROMANIA\"  >ROMANIA</option>");
document.write("<option value=\"RUSSIA\"  >RUSSIA</option>");
document.write("<option value=\"SAUDI_ARABIA\"  >SAUDI_ARABIA</option>");
document.write("<option value=\"REPUBLIC_OF_SERBIA\"  >REPUBLIC_OF_SERBIA</option>");
document.write("<option value=\"MONTENEGRO\"  >MONTENEGRO</option>");
document.write("<option value=\"SINGAPORE\"  >SINGAPORE</option>");
document.write("<option value=\"SLOVAK_REPUBLIC\"  >SLOVAK_REPUBLIC</option>");
document.write("<option value=\"SLOVENIA\"  >SLOVENIA</option>");
document.write("<option value=\"SOUTH_AFRICA\"  >SOUTH_AFRICA</option>");
document.write("<option value=\"SPAIN\"  >SPAIN</option>");
document.write("<option value=\"SWEDEN\"  >SWEDEN</option>");
document.write("<option value=\"SWITZERLAND\"  >SWITZERLAND</option>");
document.write("<option value=\"SYRIA\"  >SYRIA</option>");
document.write("<option value=\"TAIWAN\"  >TAIWAN</option>");
document.write("<option value=\"THAILAND\"  >THAILAND</option>");
document.write("<option value=\"TRINIDAD&TOBAGO\"  >TRINIDAD&TOBAGO</option>");
document.write("<option value=\"TUNISIA\"  >TUNISIA</option>");
document.write("<option value=\"TURKEY\"  >TURKEY</option>");
document.write("<option value=\"UGANDA\"  >UGANDA</option>");
document.write("<option value=\"UKRAINE\"  >UKRAINE</option>");
document.write("<option value=\"UNITED_ARAB_EMIRATES\"  >UNITED_ARAB_EMIRATES</option>");
document.write("<option value=\"UNITED_KINGDOM\"  >UNITED_KINGDOM</option>");
document.write("<option value=\"UNITED_KINGDOM_BFWA\"  >UNITED_KINGDOM_BFWA</option>");
document.write("<option value=\"UNITED_STATES\" selected=\"selected\" >UNITED_STATES</option>");
document.write("<option value=\"URUGUAY\"  >URUGUAY</option>");
document.write("<option value=\"UZBEKISTAN\"  >UZBEKISTAN</option>");
document.write("<option value=\"VENEZUELA\"  >VENEZUELA</option>");
document.write("<option value=\"VIETNAM\"  >VIETNAM</option>");
document.write("<option value=\"YEMEN\"  >YEMEN</option>");
document.write("<option value=\"ZIMBABWE\"  >ZIMBABWE</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label2)</script></div>
<select name="wlan0_net_mode">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"disabled\" >" + share.disabled + "</option>");
document.write("<option value=\"mixed\" selected=\"selected\">" + wl_basic.mixed + "</option>");
document.write("<option value=\"a-only\" >" + wl_basic.a + "</option>");
document.write("<option value=\"na-only\" >" + wl_basic.na + "</option>");
document.write("<option value=\"n5-only\" >" + wl_basic.n5 + "</option>");
document.write("<option value=\"acn-mixed\" >" + wl_basic.acn + "</option>");
document.write("<option value=\"ac-only\" >" + wl_basic.ac + "</option>");
document.write("<option value=\"xacn-mixed\" >" + wl_basic.xacn + "</option>");
document.write("<option value=\"ax-only\" >" + wl_basic.ax + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_basic.channel_width)</script></div><select name="wlan0_channelbw" onchange="to_submit(this.form);">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"20\"  >" + share.full + "</option>");
document.write("<option value=\"2040\"  >" + share.dynamicturbo + "</option>");
document.write("<option value=\"40\"  >" + share.ht40 + "</option>");
document.write("<option value=\"80\" selected=\"selected\" >" + share.vht80 + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label4)</script></div>
<select name="wlan0_channel" rel="mac80211" onfocus="check_action(this,0)" onchange="setChannelProperties(this);"><script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\">" + share.auto + "</option>");
document.write("<option value=\"5180\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>36 - 5180"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5200\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>40 - 5200"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5220\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>44 - 5220"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5240\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>48 - 5240"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5260\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>52 - 5260"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5280\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>56 - 5280"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5300\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>60 - 5300"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5320\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>64 - 5320"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5500\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>100 - 5500"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5520\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>104 - 5520"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5540\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>108 - 5540"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5560\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>112 - 5560"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5580\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>116 - 5580"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5600\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>120 - 5600"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5620\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>124 - 5620"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5640\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>128 - 5640"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5660\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>132 - 5660"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5680\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>136 - 5680"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5700\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>140 - 5700"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5720\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>144 - 5720"+wl_basic.mhz+" (24 dBm)</option>");
document.write("<option value=\"5745\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":1,\"uul\":0,\"uuu\":0}\'>149 - 5745"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"5765\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":1,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>153 - 5765"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"5785\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":1,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>157 - 5785"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"5805\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":1,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>161 - 5805"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"5825\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>165 - 5825"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"5845\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>169 - 5845"+wl_basic.mhz+" (30 dBm)</option>");
//]]>
</script></select></div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.channel_wide)</script></div>
<select name="wlan0_nctrlsb" >
<option value="lul" ><script type="text/javascript">Capture(wl_basic.ch_pos_ll);</script></option>
<option value="luu" ><script type="text/javascript">Capture(wl_basic.ch_pos_lu);</script></option>
<option value="ull" ><script type="text/javascript">Capture(wl_basic.ch_pos_ul);</script></option>
<option value="ulu" ><script type="text/javascript">Capture(wl_basic.ch_pos_uu);</script></option>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.ssid)</script></div><input name="wlan0_ssid" size="20" maxlength="32" onblur="valid_name(this,wl_basic.ssid)" value="admin " /></div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.legend)</script></div>
<input type="checkbox" name="wlan0_wl_advanced" onclick="toggle_layer(this,'wlan0_wl_advanced_layer')"></div>
<div id="wlan0_wl_advanced_layer" style="display: none;">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label5)</script></div>
<input class="spaceradio" type="radio" value="0" name="wlan0_closed" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="1" name="wlan0_closed" ><script type="text/javascript">Capture(share.disable)</script></input>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.overlap)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_overlap" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_overlap" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.TXpower)</script></div><input class="num" type="number" name="wlan0_txpwrdbm" size="6" maxlength="3" value="20" onblur="valid_range(this,-10,40,wl_basic.TXpower)"/> dBm (Max 36)
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.cell_density)</script></div>
<select name="wlan0_cell_density">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >" + share.disabled + "</option>");
document.write("<option value=\"1\"  >" + share.normal + "</option>");
document.write("<option value=\"2\"  >" + share.high + "</option>");
document.write("<option value=\"3\"  >" + share.veryhigh + "</option>");
//]]>
</script>
</select></div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.bss_color)</script></div>
<input class="num" aria-labeledby="Capture(wl_basic.bss_color)" name="wlan0_bss_color" maxlength="3" size="3" value="128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.bss_color_partial)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_bss_color_partial" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_bss_color_partial" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.uapsd)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_uapsd" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_uapsd" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.disassoc_low_ack)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_d_lowack" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_d_lowack" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.intmit)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_intmit" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_intmit" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.beacon_tx_mode)</script></div>
<select name="wlan0_beacon_tx_mode">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >Staggered</option>");
document.write("<option value=\"1\"  >Bursting</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.protmode)</script></div>
<select name="wlan0_protmode" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"None\" selected=\"selected\" >None</option>");
document.write("<option value=\"CTS\"  >CTS</option>");
document.write("<option value=\"RTS/CTS\"  >RTS/CTS</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.rts)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan0_idrts', true);" name="wlan0_rts" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan0_idrts', false);" name="wlan0_rts" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div id="wlan0_idrts">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.rtsvalue)</script></div>
<input class="num" maxlength="4" size="4" onblur="valid_range(this,1,2346,share.ip)" name="wlan0_rtsvalue" value="500" /></div>
</div>
<script>
//<![CDATA[
 show_layer_ext(document.getElementsByName("wlan0_rts"), "wlan0_idrts", false);
//]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_policy)</script></div>
<select name="wlan0_at_policy" onclick="show_airtime_policy(this.form, 'wlan0', 'wlan0', '');">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >" + share.disabled + "</option>");
document.write("<option value=\"1\"  >" + wl_basic.airtime_dynamic + "</option>");
document.write("<option value=\"2\"  >" + wl_basic.airtime_limit + "</option>");
//]]>
</script>
</select>
</div>
<div id="wlan0_idairtimeweight">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_weight)</script></div>
<input class="num" maxlength="4" size="4" onblur="valid_range(this,0,65536,share.ip)" name="wlan0_at_weight" value="1" /></div>
</div>
<div id="wlan0_idairtimelimit">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_dolimit)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_at_limit" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_at_limit" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
</div>
<script>
//<![CDATA[
 show_airtime_policy(document.wireless, "wlan0", "wlan0", '');
//]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.preamble)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_preamble" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_preamble" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.shortgi)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_shortgi" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_shortgi" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.twt_required)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_twt_required" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_twt_required" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.subf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_subf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_subf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.mubf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_mubf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_mubf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.txchainmask)</script></div><select name="wlan0_txantenna" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"1\"  >1</option>");
document.write("<option value=\"3\" selected=\"selected\" >1+2</option>");
//]]>
</script>
</select>
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.rxchainmask)</script></div><select name="wlan0_rxantenna" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"1\"  >1</option>");
document.write("<option value=\"3\" selected=\"selected\" >1+2</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label11)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_ap_isolate" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_ap_isolate" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label6)</script></div>
<input class="num" name="wlan0_bcn" size="5" maxlength="5" onblur="valid_range(this,15,65535,wl_adv.label6)" value="100" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label7)</script></div>
<input class="num" name="wlan0_dtim" size="3" maxlength="3" onblur="valid_range(this,1,255,wl_adv.label7)" value="2" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.atf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_atf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_atf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label18)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_wmm" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_wmm" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.radar)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_doth" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_doth" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.scanlist)</script></div>
<input name="wlan0_scanlist" size="32" maxlength="512" value="default" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label6)</script></div>
<input class="num" name="wlan0_distance" size="8" maxlength="8" onblur="valid_range(this,0,99999999,wl_basic.label6)" value="2000" />
<span class="default"><script type="text/javascript">
//<![CDATA[
 document.write("(" + share.deflt + ": 500 " + share.meters + ")");
//]]>
</script></span>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label10)</script></div>
<input class="num" name="wlan0_maxassoc" size="4" maxlength="4" onblur="valid_range(this,0,256,wl_adv.label10)" value="256" />
<span class="default"><script type="text/javascript">
//<![CDATA[
 document.write("(" + share.deflt + ": 256 " + status_wireless.legend3 + ")");
//]]>
</script></span>
</div>
<fieldset><legend><script type="text/javascript">Capture(wl_adv.droplowsignal)</script></legend><div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.connect)</script></div>
<input class="num" name="wlan0_connect" size="4" maxlength="4" onblur="valid_range(this,-128,0,wl_adv.connect)" value="-128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.stay)</script></div>
<input class="num" name="wlan0_stay" size="4" maxlength="4" onblur="valid_range(this,-128,0,wl_adv.stay)" value="-128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.poll_time)</script></div>
<input class="num" name="wlan0_poll_time" size="4" maxlength="4" onblur="valid_range(this,1,3600,wl_adv.poll_time)" value="10" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.strikes)</script></div>
<input class="num" name="wlan0_strikes" size="4" maxlength="4" onblur="valid_range(this,1,60,wl_adv.strikes)" value="3" />
</div>
</fieldset><br />
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label17)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_web_filter" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_web_filter" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(networking.unicast)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_m2u" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_m2u" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.network)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan0_idnetvifs', false);" name="wlan0_bridged" checked="checked"><script type="text/javascript">Capture(wl_basic.bridged)</script></input>
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan0_idnetvifs', true);" name="wlan0_bridged" ><script type="text/javascript">Capture(wl_basic.unbridged)</script></input>
</div>
<div id="wlan0_idnetvifs">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.multicast)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_multicast" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_multicast" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.masquerade)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_nat" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_nat" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(filter.nat)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_bloop" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_bloop" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.isolation)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan0_isolation" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan0_isolation" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.force_dnsmasq)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan0_idredirect', true);" name="wlan0_dns_redirect" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan0_idredirect', false);" name="wlan0_dns_redirect" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>
</div>
<div id="wlan0_idredirect">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dns_redirect)</script></div>
<input type="hidden" name="wlan0_dns_ipaddr" value="4" />
<input class="num" maxlength="3" size="3" onblur="valid_range(this,1,254,share.ip)" name="wlan0_dns_ipaddr_0" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_dns_ipaddr_1" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_dns_ipaddr_2" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_dns_ipaddr_3" value="0" />
</div>
</div>
<script>
//<![CDATA[
 //]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(share.ip)</script></div>
<input type="hidden" name="wlan0_ipaddr" value="4" />
<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_ipaddr_0" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_ipaddr_1" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_ipaddr_2" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan0_ipaddr_3" value="0" /> / <input class="num" maxlength="3" size="3" onblur="valid_range(this,0,32,share.subnet)" name="wlan0_netmask" value="0" />
</div>
</div>
<script>
//<![CDATA[
 show_layer_ext(document.getElementsByName("wlan0_bridged"), "wlan0_idnetvifs", false);
show_layer_ext(document.getElementsByName("wlan0_dns_redirect"), "wlan0_idredirect", false);
//]]>
</script>
</div>
<legend><script type="text/javascript">Capture(wl_basic.legend2)</script></legend><div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.radiotimer)</script></div>
<input class="spaceradio" type="radio" value="1" name="radio0_timer_enable"  onclick="show_layer_ext(this, 'radio0', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp
<input class="spaceradio" type="radio" value="0" name="radio0_timer_enable" checked="checked" onclick="show_layer_ext(this, 'radio0', false)" /><script type="text/javascript">Capture(share.disable)</script>
</div>
<div id="radio0">
<table id="radio0_table"></table><br />
<div class="center">
<script type="text/javascript">
//<![CDATA[
	document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.allways_on + "\"  onclick=\"setWlTimer('all',true, 0);\" />");
	document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.allways_off + "\" onclick=\"setWlTimer('all',false, 0);\" />");
//]]>
</script>
</div>
</div>
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + share.copy + "\" onclick=\"copy_submit(this.form,'wlan0')\" />");
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + share.paste + "\" onclick=\"paste_submit(this.form,'wlan0')\" />");
//]]>
</script>
</fieldset>
<br />
<h2><script type="text/javascript">Capture(wl_basic.h2_vi)</script></h2>
<div class="center">
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + wl_basic.add + "\" onclick=\"vifs_add_submit(this.form,'wlan0')\" />");
//]]>
</script>
</div><br />
<h2><script type="text/javascript">Capture(wl_basic.h2_v24)</script> wlan1 <script type="text/javascript">document.write("[2.4 "+wl_basic.ghz+"/802.11ax] - 802.11ax - Max Vaps(8)");</script></h2>
<fieldset>
<legend><script type="text/javascript">Capture(share.pintrface)</script> wlan1 - SSID [admin ] HWAddr [E8:9F:80:78:55:19]</legend>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_basic.label)</script></div><select name="wlan1_mode" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"ap\" selected=\"selected\" >" + wl_basic.ap + "</option>");
document.write("<option value=\"wdsap\"  >" + wl_basic.wdsap + "</option>");
document.write("<option value=\"wdsap_mtik\"  >" + wl_basic.wdsap_mtik + "</option>");
document.write("<option value=\"apup\"  >" + wl_basic.apup + "</option>");
document.write("<option value=\"sta\"  >" + wl_basic.client + "</option>");
document.write("<option value=\"wet\"  >" + wl_basic.clientRelayd + "</option>");
document.write("<option value=\"wdssta\"  >" + wl_basic.wdssta + "</option>");
document.write("<option value=\"wdssta_mtik\"  >" + wl_basic.wdssta_mtik + "</option>");
document.write("<option value=\"mesh\"  >" + wl_basic.mesh + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label2)</script></div>
<select name="wlan1_net_mode">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"disabled\" >" + share.disabled + "</option>");
document.write("<option value=\"mixed\" selected=\"selected\">" + wl_basic.mixed + "</option>");
document.write("<option value=\"b-only\" >" + wl_basic.b + "</option>");
document.write("<option value=\"g-only\" >" + wl_basic.g + "</option>");
document.write("<option value=\"bg-mixed\" >" + wl_basic.bg + "</option>");
document.write("<option value=\"axg-only\" >" + wl_basic.ax + "</option>");
document.write("<option value=\"ng-only\" >" + wl_basic.ng + "</option>");
document.write("<option value=\"n2-only\" >" + wl_basic.n2 + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_basic.channel_width)</script></div><select name="wlan1_channelbw" onchange="to_submit(this.form);">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"20\" selected=\"selected\" >" + share.full + "</option>");
document.write("<option value=\"2040\"  >" + share.dynamicturbo + "</option>");
document.write("<option value=\"40\"  >" + share.ht40 + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label4)</script></div>
<select name="wlan1_channel" rel="mac80211" onfocus="check_action(this,0)" onchange="setChannelProperties(this);"><script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\">" + share.auto + "</option>");
document.write("<option value=\"2412\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>1 - 2412"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2417\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>2 - 2417"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2422\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>3 - 2422"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2427\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>4 - 2427"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2432\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>5 - 2432"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2437\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>6 - 2437"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2442\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>7 - 2442"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2447\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>8 - 2447"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2452\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>9 - 2452"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2457\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>10 - 2457"+wl_basic.mhz+" (30 dBm)</option>");
document.write("<option value=\"2462\" rel=\'{\"lll\":0,\"llu\":0,\"lul\":0,\"luu\":0,\"ull\":0,\"ulu\":0,\"uul\":0,\"uuu\":0}\'>11 - 2462"+wl_basic.mhz+" (30 dBm)</option>");
//]]>
</script></select></div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.ssid)</script></div><input name="wlan1_ssid" size="20" maxlength="32" onblur="valid_name(this,wl_basic.ssid)" value="admin " /></div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.legend)</script></div>
<input type="checkbox" name="wlan1_wl_advanced" onclick="toggle_layer(this,'wlan1_wl_advanced_layer')"></div>
<div id="wlan1_wl_advanced_layer" style="display: none;">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label5)</script></div>
<input class="spaceradio" type="radio" value="0" name="wlan1_closed" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="1" name="wlan1_closed" ><script type="text/javascript">Capture(share.disable)</script></input>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.overlap)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_overlap" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_overlap" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.TXpower)</script></div><input class="num" type="number" name="wlan1_txpwrdbm" size="6" maxlength="3" value="20" onblur="valid_range(this,-10,40,wl_basic.TXpower)"/> dBm (Max 36)
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.cell_density)</script></div>
<select name="wlan1_cell_density">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >" + share.disabled + "</option>");
document.write("<option value=\"1\"  >" + share.normal + "</option>");
document.write("<option value=\"2\"  >" + share.high + "</option>");
document.write("<option value=\"3\"  >" + share.veryhigh + "</option>");
//]]>
</script>
</select></div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.legacy)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_legacy" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_legacy" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.bss_color)</script></div>
<input class="num" aria-labeledby="Capture(wl_basic.bss_color)" name="wlan1_bss_color" maxlength="3" size="3" value="128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.bss_color_partial)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_bss_color_partial" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_bss_color_partial" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.uapsd)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_uapsd" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_uapsd" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.disassoc_low_ack)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_d_lowack" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_d_lowack" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.intmit)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_intmit" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_intmit" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.beacon_tx_mode)</script></div>
<select name="wlan1_beacon_tx_mode">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >Staggered</option>");
document.write("<option value=\"1\"  >Bursting</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.protmode)</script></div>
<select name="wlan1_protmode" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"None\" selected=\"selected\" >None</option>");
document.write("<option value=\"CTS\"  >CTS</option>");
document.write("<option value=\"RTS/CTS\"  >RTS/CTS</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.rts)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan1_idrts', true);" name="wlan1_rts" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan1_idrts', false);" name="wlan1_rts" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div id="wlan1_idrts">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.rtsvalue)</script></div>
<input class="num" maxlength="4" size="4" onblur="valid_range(this,1,2346,share.ip)" name="wlan1_rtsvalue" value="500" /></div>
</div>
<script>
//<![CDATA[
 show_layer_ext(document.getElementsByName("wlan1_rts"), "wlan1_idrts", false);
//]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_policy)</script></div>
<select name="wlan1_at_policy" onclick="show_airtime_policy(this.form, 'wlan1', 'wlan1', '');">
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >" + share.disabled + "</option>");
document.write("<option value=\"1\"  >" + wl_basic.airtime_dynamic + "</option>");
document.write("<option value=\"2\"  >" + wl_basic.airtime_limit + "</option>");
//]]>
</script>
</select>
</div>
<div id="wlan1_idairtimeweight">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_weight)</script></div>
<input class="num" maxlength="4" size="4" onblur="valid_range(this,0,65536,share.ip)" name="wlan1_at_weight" value="1" /></div>
</div>
<div id="wlan1_idairtimelimit">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.airtime_dolimit)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_at_limit" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_at_limit" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
</div>
<script>
//<![CDATA[
 show_airtime_policy(document.wireless, "wlan1", "wlan1", '');
//]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.preamble)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_preamble" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_preamble" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.shortgi)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_shortgi" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_shortgi" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.twt_required)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_twt_required" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_twt_required" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.subf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_subf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_subf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.mubf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_mubf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_mubf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.txchainmask)</script></div><select name="wlan1_txantenna" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"1\"  >1</option>");
document.write("<option value=\"3\" selected=\"selected\" >1+2</option>");
//]]>
</script>
</select>
</div>
<div class="setting"><div class="label"><script type="text/javascript">Capture(wl_adv.rxchainmask)</script></div><select name="wlan1_rxantenna" >
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"1\"  >1</option>");
document.write("<option value=\"3\" selected=\"selected\" >1+2</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label11)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_ap_isolate" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_ap_isolate" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label6)</script></div>
<input class="num" name="wlan1_bcn" size="5" maxlength="5" onblur="valid_range(this,15,65535,wl_adv.label6)" value="100" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label7)</script></div>
<input class="num" name="wlan1_dtim" size="3" maxlength="3" onblur="valid_range(this,1,255,wl_adv.label7)" value="2" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.atf)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_atf" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_atf" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label18)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_wmm" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_wmm" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.scanlist)</script></div>
<input name="wlan1_scanlist" size="32" maxlength="512" value="default" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.label6)</script></div>
<input class="num" name="wlan1_distance" size="8" maxlength="8" onblur="valid_range(this,0,99999999,wl_basic.label6)" value="2000" />
<span class="default"><script type="text/javascript">
//<![CDATA[
 document.write("(" + share.deflt + ": 500 " + share.meters + ")");
//]]>
</script></span>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label10)</script></div>
<input class="num" name="wlan1_maxassoc" size="4" maxlength="4" onblur="valid_range(this,0,256,wl_adv.label10)" value="256" />
<span class="default"><script type="text/javascript">
//<![CDATA[
 document.write("(" + share.deflt + ": 256 " + status_wireless.legend3 + ")");
//]]>
</script></span>
</div>
<fieldset><legend><script type="text/javascript">Capture(wl_adv.droplowsignal)</script></legend><div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.connect)</script></div>
<input class="num" name="wlan1_connect" size="4" maxlength="4" onblur="valid_range(this,-128,0,wl_adv.connect)" value="-128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.stay)</script></div>
<input class="num" name="wlan1_stay" size="4" maxlength="4" onblur="valid_range(this,-128,0,wl_adv.stay)" value="-128" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.poll_time)</script></div>
<input class="num" name="wlan1_poll_time" size="4" maxlength="4" onblur="valid_range(this,1,3600,wl_adv.poll_time)" value="10" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.strikes)</script></div>
<input class="num" name="wlan1_strikes" size="4" maxlength="4" onblur="valid_range(this,1,60,wl_adv.strikes)" value="3" />
</div>
</fieldset><br />
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_adv.label17)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_web_filter" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_web_filter" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(networking.unicast)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_m2u" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_m2u" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.network)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan1_idnetvifs', false);" name="wlan1_bridged" checked="checked"><script type="text/javascript">Capture(wl_basic.bridged)</script></input>
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan1_idnetvifs', true);" name="wlan1_bridged" ><script type="text/javascript">Capture(wl_basic.unbridged)</script></input>
</div>
<div id="wlan1_idnetvifs">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.multicast)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_multicast" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_multicast" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.masquerade)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_nat" checked="checked"><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_nat" ><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(filter.nat)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_bloop" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_bloop" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.isolation)</script></div>
<input class="spaceradio" type="radio" value="1" name="wlan1_isolation" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" name="wlan1_isolation" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>&nbsp;
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.force_dnsmasq)</script></div>
<input class="spaceradio" type="radio" value="1" onclick="show_layer_ext(this, 'wlan1_idredirect', true);" name="wlan1_dns_redirect" ><script type="text/javascript">Capture(share.enable)</script></input>&nbsp;
<input class="spaceradio" type="radio" value="0" onclick="show_layer_ext(this, 'wlan1_idredirect', false);" name="wlan1_dns_redirect" checked="checked"><script type="text/javascript">Capture(share.disable)</script></input>
</div>
<div id="wlan1_idredirect">
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dns_redirect)</script></div>
<input type="hidden" name="wlan1_dns_ipaddr" value="4" />
<input class="num" maxlength="3" size="3" onblur="valid_range(this,1,254,share.ip)" name="wlan1_dns_ipaddr_0" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_dns_ipaddr_1" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_dns_ipaddr_2" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_dns_ipaddr_3" value="0" />
</div>
</div>
<script>
//<![CDATA[
 //]]>
</script>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(share.ip)</script></div>
<input type="hidden" name="wlan1_ipaddr" value="4" />
<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_ipaddr_0" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_ipaddr_1" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_ipaddr_2" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,share.ip)" name="wlan1_ipaddr_3" value="0" /> / <input class="num" maxlength="3" size="3" onblur="valid_range(this,0,32,share.subnet)" name="wlan1_netmask" value="0" />
</div>
</div>
<script>
//<![CDATA[
 show_layer_ext(document.getElementsByName("wlan1_bridged"), "wlan1_idnetvifs", false);
show_layer_ext(document.getElementsByName("wlan1_dns_redirect"), "wlan1_idredirect", false);
//]]>
</script>
</div>
<legend><script type="text/javascript">Capture(wl_basic.legend2)</script></legend><div class="setting">
<div class="label"><script type="text/javascript">Capture(wl_basic.radiotimer)</script></div>
<input class="spaceradio" type="radio" value="1" name="radio1_timer_enable"  onclick="show_layer_ext(this, 'radio1', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp
<input class="spaceradio" type="radio" value="0" name="radio1_timer_enable" checked="checked" onclick="show_layer_ext(this, 'radio1', false)" /><script type="text/javascript">Capture(share.disable)</script>
</div>
<div id="radio1">
<table id="radio1_table"></table><br />
<div class="center">
<script type="text/javascript">
//<![CDATA[
	document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.allways_on + "\"  onclick=\"setWlTimer('all',true, 1);\" />");
	document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.allways_off + "\" onclick=\"setWlTimer('all',false, 1);\" />");
//]]>
</script>
</div>
</div>
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + share.copy + "\" onclick=\"copy_submit(this.form,'wlan1')\" />");
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + share.paste + "\" onclick=\"paste_submit(this.form,'wlan1')\" />");
//]]>
</script>
</fieldset>
<br />
<h2><script type="text/javascript">Capture(wl_basic.h2_vi)</script></h2>
<div class="center">
<script type="text/javascript">
//<![CDATA[
 document.write("<input class=\"button\" type=\"button\" value=\"" + wl_basic.add + "\" onclick=\"vifs_add_submit(this.form,'wlan1')\" />");
//]]>
</script>
</div><br />
<div id="footer" class="submitFooter"><script type="text/javascript">
//<![CDATA[
submitFooterButton(1,1);
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><dd class="definition"><script type="text/javascript">Capture(hwl_basic.right2)</script></dd></dl><br /><a href="javascript:openHelpWindow('HWireless.asp')"><script type="text/javascript">Capture(share.more)</script></a></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:35 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>