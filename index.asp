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
<title>DD-WRT (build 65498) - Setup</title>
<script type="text/javascript">history.pushState({urlPath:'index.asp'}, "DD-WRT (build 65498) - Setup", 'index.asp')
</script><script type="text/javascript">
//<![CDATA[
var wan_proto = "disabled";var dhcp_win = null;function pptpUseDHCP(F, val) {setElementsActive("wan_ipaddr_0", "wan_gateway_3", val==0)}function l2tpUseDHCP(F, val) {setElementsActive("wan_ipaddr_0", "wan_gateway_3", val==0)}function valid_mtu(I) {var start = null;var end = null;if(wan_proto == "pppoe") {start = 576;end = 1492;} else if (wan_proto == "pptp" || wan_proto == "l2tp") {start = 1200;end = 1492;} else {start = 576;end = 16320;}valid_range(I,start,end,"MTU");}function SelMTU(num,F) {mtu_enable_disable(F,num);}function mtu_enable_disable(F,I) {if ( I == "0" ) {choose_disable(F.wan_mtu);} else {choose_enable(F.wan_mtu);}}function valid_value(F) {if (!('0' == '1')) {if (F.now_proto.value == "pptp" || F.now_proto.value == "static") {pptp_dhcp = "";if (F.now_proto.value == "pptp" &&F.wan_ipaddr_0.value == "0" &&F.wan_ipaddr_1.value == "0" &&F.wan_ipaddr_2.value == "0" &&F.wan_ipaddr_3.value == "0") {pptp_dhcp = "skip";}if (!F.pptp_use_dhcp || F.pptp_use_dhcp.value == "0") {if(pptp_dhcp != "skip" && F.wan_ipaddr && !valid_ip(F,"F.wan_ipaddr","IP",ZERO_NO|MASK_NO)) {return false;}}}}if (F.now_proto.value == "pppoe_dual") {pptp_dhcp = "";if (!F.pptp_use_dhcp || F.pptp_use_dhcp.value == "0") {if(pptp_dhcp != "skip" && F.wan_ipaddr_static && !valid_ip(F,"F.wan_ipaddr_static","IP",ZERO_NO|MASK_NO)) {return false;}}}if(F.now_proto.value == "pptp" || F.now_proto.value == "l2tp") {if(F.ppp_username.value == "") {alert(errmsg.err0);F.ppp_username.focus();return false;}}if(!0) {if(!valid_dhcp_server(F))return false;}if(F.router_name)if(F.router_name.value == "") {alert(errmsg.err1);F.router_name.focus();return false;}if(document.setup)if(document.setup.now_proto) {if(document.setup.now_proto.value == "pptp")pptpUseDHCP(document.setup, '1');if(document.setup.now_proto.value == "l2tp")l2tpUseDHCP(document.setup, '1');}return true;}function valid_dhcp_server(F) {if(F.lan_proto == null)return true;if (F.lan_proto.selectedIndex == 0)return true;if (F.wan_dns0 != null)if (!valid_ip(F,"F.wan_dns0","DNS",MASK_NO))return false;if (F.wan_dns1 != null)if (!valid_ip(F,"F.wan_dns1","DNS",MASK_NO))return false;if (F.wan_dns2 != null)if (!valid_ip(F,"F.wan_dns2","DNS",MASK_NO))return false;if (F.wan_wins != null)if (!valid_ip(F,"F.wan_wins","WINS",MASK_NO))return false;return true;}function SelDHCP(T,F) {dhcp_enable_disable(F,T);}function dhcp_enable_disable(F,T) {var start = '';var end = '';var total = F.elements.length;choose_disable(F.dhcp_start_0);for(var i=0 ; i < total ; i++) {if(F.elements[i].name == "dhcp_start_1")start = i;if(F.elements[i].name == "wan_wins_3")end = i;}if(start == '' || end == '')return true;if( T == "static" ) {for(i = start; i<=end ;i++) {choose_disable(F.elements[i]);}} else {for(i = start; i<=end ;i++) {choose_enable(F.elements[i]);}}return true;}function dhcp_show_static_dns(val) {var i = 0;if (val) {tag = document.getElementById("dhcp_static_dns0").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = false;$("dhcp_static_dns0").setStyle({display: 'block'});tag = document.getElementById("dhcp_static_dns1").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = false;$("dhcp_static_dns1").setStyle({display: 'block'});tag = document.getElementById("dhcp_static_dns2").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = false;$("dhcp_static_dns2").setStyle({display: 'block'});} else {tag = document.getElementById("dhcp_static_dns0").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = true;$("dhcp_static_dns0").setStyle({display: 'none'});tag = document.getElementById("dhcp_static_dns1").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = true;$("dhcp_static_dns1").setStyle({display: 'none'});tag = document.getElementById("dhcp_static_dns2").getElementsByTagName("input");for (i = 0; i < tag.length; i ++)tag[i].disabled = true;$("dhcp_static_dns2").setStyle({display: 'none'});}}function ppp_enable_disable(F,I) {if( I == "0") {choose_disable(F.ppp_idletime);choose_enable(F.ppp_redialperiod);} else {choose_enable(F.ppp_idletime);choose_disable(F.ppp_redialperiod);}}function SelWAN(num,F) {F.change_action.value="gozila_cgi";F.submit_type.value = "wan_proto";F.wan_proto.value=F.wan_proto.options[num].value;F.submit();}function SelDHCPFWD(num,F) {F.change_action.value="gozila_cgi";F.submit_type.value = "dhcpfwd";F.dhcpfwd_enable.value = F.dhcpfwd_enable.options[num].value;F.submit();}function submitcheck(F) {if(valid_value(F)) {if(F._dns_dnsmasq) {F.dns_dnsmasq.value = F._dns_dnsmasq.checked ? 1 : 0;}if(F._wan_priority) {F.wan_priority.value = F._wan_priority.checked ? 1 : 0;}if(F._lan_dhcp) {F.lan_dhcp.value = F._lan_dhcp.checked ? 1 : 0;}if(F._auth_dnsmasq) {F.auth_dnsmasq.value = F._auth_dnsmasq.checked ? 1 : 0;}if(F._dns_redirect) {F.dns_redirect.value = F._dns_redirect.checked ? 1 : 0;}if(F._dns_redirectdot) {F.dns_redirectdot.value = F._dns_redirectdot.checked ? 1 : 0;}if(F._recursive_dns) {F.recursive_dns.value = F._recursive_dns.checked ? 1 : 0;}if(F._ppp_mlppp) {F.ppp_mlppp.value = F._ppp_mlppp.checked ? 1 : 0;}if(F._ignore_wan_dns) {F.ignore_wan_dns.value = F._ignore_wan_dns.checked ? 1 : 0;}F.submit_type.value = "";F.change_action.value = "";F.save_button.value = sbutton.saving;}}function toggle_layer(checkbox, label) {if(checkbox.checked) {show_layer_ext(this,label,true);} else {show_layer_ext(this,label,false);}}function to_submit(F) {submitcheck(F);apply(F);}function to_apply(F) {submitcheck(F);applytake(F);}var update;addEvent(window, "load", function() {stickControl(1);mtu_enable_disable(document.setup,'0');if (document.setup.now_proto.value == "pppoe" ||document.setup.now_proto.value == "pptp" ||document.setup.now_proto.value == "l2tp" ||document.setup.now_proto.value == "heartbeat")ppp_enable_disable(document.setup,'0');dhcp_enable_disable(document.setup,'dhcp');show_layer_ext(document.setup.ntp_enable, 'idntp', 1 == 1);show_layer_ext(document.setup.pptp_use_dhcp, 'idpptpdhcp', 1 == 0);show_layer_ext(document.setup.l2tp_use_dhcp, 'idl2tpdhcp', 1 == 0);show_layer_ext(document.setup.reconnect_enable, 'idreconnect', 0 == 1);if (document.setup.wan_select_enable)show_layer_ext(document.setup.wan_select_enable, 'wanselect', 0 == 1);if (document.setup.now_proto.value == "pptp")dhcp_show_static_dns(1);if (document.setup.now_proto.value == "pppoe_dual")dhcp_show_static_dns(1);if (document.setup.now_proto.value == "l2tp")dhcp_show_static_dns(1);update = new StatusbarUpdate();update.start();});addEvent(window, "unload", function() {update.stop();});
//]]>
</script></head><body class="gui"><div id="wrapper"><div id="content"><div id="header"><div id="logo"><h1>DD-WRT Control Panel</h1></div><div id="menu">
<div id="menuMain">
<ul id="menuMainList">
<li class="current"><span><script type="text/javascript">Capture(bmenu.setup)</script></span>
<div id="menuSub">
<ul id="menuSubList">
<script type="text/javascript">
//<![CDATA[
 document.write("<a id=\"logout\" title=\"" + share.logout + "\" aria-label=\"" + share.logout + "\" href=\"dologout.asp\">");
//]]>
</script>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="logout" viewBox="0 0 16 16">
<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"></path>
<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path></svg></a><li><span><script type="text/javascript">Capture(bmenu.setupbasic)</script></span></li>
<li><a href="IPV6.asp"><script type="text/javascript">Capture(bmenu.setupipv6)</script></a></li>
<li><a href="DDNS.asp"><script type="text/javascript">Capture(bmenu.setupddns)</script></a></li>
<li><a href="WanMAC.asp"><script type="text/javascript">Capture(bmenu.setupmacclone)</script></a></li>
<li><a href="Routing.asp"><script type="text/javascript">Capture(bmenu.setuprouting)</script></a></li>
<li><a href="Networking.asp"><script type="text/javascript">Capture(bmenu.networking)</script></a></li>
<li><a href="eop-tunnel.asp"><script type="text/javascript">Capture(bmenu.setupeop)</script></a></li>
</ul>
</div>
</li>
<li><a href="Wireless_Basic.asp"><script type="text/javascript">Capture(bmenu.wireless)</script></a></li>
<li><a href="Services.asp"><script type="text/javascript">Capture(bmenu.services)</script></a></li>
<li><a href="Firewall.asp"><script type="text/javascript">Capture(bmenu.security)</script></a></li>
<li><a href="Filters.asp"><script type="text/javascript">Capture(bmenu.accrestriction)</script></a></li>
<li><a href="ForwardSpec.asp"><script type="text/javascript">Capture(bmenu.applications)</script></a></li>
<li><a href="Management.asp"><script type="text/javascript">Capture(bmenu.admin)</script></a></li>
<li><a href="Status_Router.asp"><script type="text/javascript">Capture(bmenu.statu)</script></a></li>
</ul>
</div>
</div>
</div><div id="main"><div id="contents"><form name="setup" action="http://192.168.1.1/apply.cgi" method="post" autocomplete="new-password"><input type="hidden" name="submit_button" value="index" /><input type="hidden" name="action" value="Apply" /><input type="hidden" name="change_action"/><input type="hidden" name="submit_type" /><input type="hidden" name="now_proto" value="disabled" /><input type="hidden" name="dns_dnsmasq" value="0" /><input type="hidden" name="wan_priority" value="0" /><input type="hidden" name="lan_dhcp" value="0" /><input type="hidden" name="auth_dnsmasq" value="0" /><input type="hidden" name="dns_redirect" value="0" /><input type="hidden" name="dns_redirectdot" value="0" /><input type="hidden" name="recursive_dns" value="0" /><input type="hidden" name="ppp_mlppp" value="0" /><input type="hidden" name="ignore_wan_dns" value="0" /><input type="hidden" name="lan_ipaddr" value="4" /><input type="hidden" name="dhcp_start" value="4" /><h2><script type="text/javascript">Capture(idx.h2);</script></h2><!--<h2><script type="text/javascript">Capture(idx.h22);</script></h2>--><!--<h2><script type="text/javascript">Capture(idx.h22);</script></h2>--><fieldset><legend><script type="text/javascript">Capture(idx.legend)</script></legend><!--<div class="setting"><div class="label"><script type="text/javascript">Capture(idx.conn_type)</script></div><script type="text/javascript">Capture(share.disabled)</script></div>--><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.conn_type)</script></div><select name="wan_proto" onchange="SelWAN(this.form.wan_proto.selectedIndex,this.form)"><script type="text/javascript">
//<![CDATA[
document.write("<option value=\"disabled\" selected=\"selected\" >" + share.disabled + "</option>");
document.write("<option value=\"static\"  >" + idx.static_ip + "</option>");
document.write("<option value=\"dhcp\"  >" + idx.dhcp + "</option>");
document.write("<option value=\"dhcp_auth\"  >" + idx.dhcp_auth + "</option>");

//]]>
</script>
<option value="pppoe"  >PPPoE</option>
<option value="pppoe_dual" ><script type="text/javascript">Capture(idx.pppoe_dual)</script></option>
<option value="pptp"  >PPTP</option>
<option value="l2tp"  >L2TP</option>
<option value="heartbeat"  ><script type="text/javascript">Capture(idx.heartbeat_sig)</script></option>
</select></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(idx.optional)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(share.routername)</script></div><input maxlength="39" name="router_name" size="20" onblur="valid_name(this,&#34;Router%20Name&#34;)" value="DD-WRT"/></div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.hostname)</script></div><input maxlength="39" name="wan_hostname" size="20" onblur="valid_name(this,&#34;Host%20Name&#34;)" value=""/></div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.domainname)</script></div><input maxlength="79" name="wan_domain" size="20" onblur="valid_name(this,&#34;Domain%20name&#34;,SPACE_NO)" value="" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.mtu)</script></div><select name="mtu_enable" onchange="SelMTU(this.form.mtu_enable.selectedIndex,this.form)"><script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected >" + share.auto + "</option>");document.write("<option value=\"1\"  >" + share.manual + "</option>");
//]]>
</script></select>&nbsp;<input class="num" maxlength="5" onblur="valid_mtu(this)" size="5" name="wan_mtu" value="1500" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.sfe)</script></div><select name="sfe"><option value="0" ><script type="text/javascript">Capture(share.disable)</script></option><option value="1" selected="selected">SFE</option><option value="3" >NSS-ECM</option><option value="4" >NSS-SFE</option><option value="5" >NSS-ECM-SFE</option></select></div><!--<div class="setting"><div class="label"><script type="text/javascript">Capture(idx.sfe)</script></div><select name="sfe"><option value="0" ><script type="text/javascript">Capture(share.disable)</script></option><option value="1" selected="selected">SFE</option><option value="2" >CTF</option></select></div>--><!--<div class="setting"><div class="label"><script type="text/javascript">Capture(idx.fa)</script></div><select name="ctf_fa_mode"><option value="0" ><script type="text/javascript">Capture(share.disable)</script></option><option value="1" >CTF</option><option value="2" >CTF & FA</option></select></div>--><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.nss)</script></div><input class="spaceradio" type="radio" value="1" name="nss" checked="checked" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="nss"  /><script type="text/javascript">Capture(share.disable)</script></div><!--<div class="setting"><div class="label"><script type="text/javascript">Capture(idx.sfe)</script></div><input class="spaceradio" type="radio" value="1" name="sfe" checked="checked" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="sfe"  /><script type="text/javascript">Capture(share.disable)</script></div>--><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.stp)</script></div><input class="spaceradio" type="radio" value="1" name="lan_stp"  /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="lan_stp" checked="checked" /><script type="text/javascript">Capture(share.disable)</script></div></fieldset><br /><h2><script type="text/javascript">Capture(idx.h23)</script></h2><fieldset><legend><script type="text/javascript">Capture(idx.routerip)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.lan_dhcp)</script></div><input type="checkbox" value="1" name="_lan_dhcp"  /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.lanip)</script></div><input class="num" maxlength="3" size="3" onblur="valid_range(this,1,223,'IP')" name="lan_ipaddr_0" value="192"/>.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,'IP')" name="lan_ipaddr_1" value="168"/>.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,'IP')" name="lan_ipaddr_2" value="1"/>.<input class="num" maxlength="3" size="3" onblur="valid_range(this,1,255,'IP')" name="lan_ipaddr_3" value="1"/> / <input class="num" maxlength="3" size="3" name="lan_netmask" onblur="valid_range(this,0,32,service.vpnd_mask)" value="24"/></div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.gateway)</script></div><input type="hidden" name="lan_gateway" value="4" /><input class="num" maxlength="3" size="3" name="lan_gateway_0" onblur="valid_range(this,0,255,share.gateway)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_gateway_1" onblur="valid_range(this,0,255,share.gateway)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_gateway_2" onblur="valid_range(this,0,255,share.gateway)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_gateway_3" onblur="valid_range(this,0,255,share.gateway)" value="0"/></div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.localdns)</script></div><input type="hidden" name="lan_dns" value="4" /><input class="num" maxlength="3" size="3" name="lan_dns_0" onblur="valid_range(this,0,255,share.localdns)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_dns_1" onblur="valid_range(this,0,255,share.localdns)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_dns_2" onblur="valid_range(this,0,255,share.localdns)" value="0"/>.<input class="num" maxlength="3" size="3" name="lan_dns_3" onblur="valid_range(this,0,255,share.localdns)" value="0"/></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(idx.dhcp_legend)</script></legend>
<div class="setting" name="dhcp_settings">
<div class="label"><script type="text/javascript">Capture(idx.dhcp_type)</script></div>
<select class="num" size="1" name="dhcpfwd_enable" onchange=SelDHCPFWD(this.form.dhcpfwd_enable.selectedIndex,this.form)>
<script type="text/javascript">
//<![CDATA[
document.write("<option value=\"0\" selected=\"selected\" >" + idx.dhcp_srv + "</option>");
document.write("<option value=\"1\"  >" + idx.dhcp_fwd + "</option>");
//]]>
</script>
</select>
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dhcp_srv)</script></div><input class="spaceradio" type="radio" name="lan_proto" value="dhcp" onclick="SelDHCP('dhcp',this.form)" checked="checked" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;
<input class="spaceradio" type="radio" name="lan_proto" value="static" onclick="SelDHCP('static',this.form)"  /><script type="text/javascript">Capture(share.disable)</script></div><input type="hidden" name="dhcp_check" /><div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dhcp_start)</script></div>
<input class="num" maxlength="3" size="3" onblur="valid_range(this,1,254,idx.dhcp_start)" name="dhcp_start_0" value="192" disabled="true" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,idx.dhcp_start)" name="dhcp_start_1" value="168" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,idx.dhcp_start)" name="dhcp_start_2" value="1" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,idx.dhcp_start)" name="dhcp_start_3" value="64" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dhcp_maxusers)</script></div><input class="num" name="dhcp_num" size="5" value="190" /></div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dhcp_lease)</script></div><input class="num" name="dhcp_lease" size="5" maxlength="5" onblur="valid_range(this,0,99999,idx.dhcp_lease)" value="1440" > <script type="text/javascript">Capture(share.minutes)</script></input></div>
<div class="setting" id="dhcp_static_dns0">
<div class="label"><script type="text/javascript">Capture(idx_static.dns)</script> 1</div><input type="hidden" name="wan_dns" value="4" /><input class="num" name="wan_dns0_0" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns0_1" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns0_2" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns0_3" size="3" maxlength="3" onblur="valid_range(this,0,254,idx_static.dns)" value="0" />
</div>
<div class="setting" id="dhcp_static_dns1">
<div class="label"><script type="text/javascript">Capture(idx_static.dns)</script> 2</div><input class="num" name="wan_dns1_0" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns1_1" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns1_2" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns1_3" size="3" maxlength="3" onblur="valid_range(this,0,254,idx_static.dns)" value="0" />
</div>
<div class="setting" id="dhcp_static_dns2">
<div class="label"><script type="text/javascript">Capture(idx_static.dns)</script> 3</div><input class="num" name="wan_dns2_0" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns2_1" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns2_2" size="3" maxlength="3" onblur="valid_range(this,0,255,idx_static.dns)" value="0" />.<input class="num" name="wan_dns2_3" size="3" maxlength="3" onblur="valid_range(this,0,254,idx_static.dns)" value="0" />
</div><div class="setting">
<div class="label">WINS</div>
<input type="hidden" name="wan_wins" value="4" />
<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,&#34;WINS&#34;)" name="wan_wins_0" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,&#34;WINS&#34;)" name="wan_wins_1" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,&#34;WINS&#34;)" name="wan_wins_2" value="0" />.<input class="num" maxlength="3" size="3" onblur="valid_range(this,0,255,&#34;WINS&#34;)" name="wan_wins_3" value="0" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.dns_dnsmasq)</script></div>
<input type="checkbox" name="_dns_dnsmasq" value="1" checked="checked" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.auth_dnsmasq)</script></div>
<input type="checkbox" name="_auth_dnsmasq" value="1" checked="checked" />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.force_dnsmasq)</script></div>
<input type="checkbox" name="_dns_redirect" value="1"  />
</div>
<div class="setting">
<div class="label"><script type="text/javascript">Capture(idx.force_dnsmasqdot)</script></div>
<input type="checkbox" name="_dns_redirectdot" value="1"  />
</div>
</fieldset><br />
<fieldset><legend><script type="text/javascript">Capture(idx.legend3)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.ntp_client)</script></div><input class="spaceradio" type="radio" name="ntp_enable" value="1" checked="checked" onclick="show_layer_ext(this, 'idntp', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" name="ntp_enable" value="0"  onclick="show_layer_ext(this, 'idntp', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="idntp"><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.timeset)</script></div><select name="time_zone"><option value="Africa/Abidjan" >Africa/Abidjan</option>
<option value="Africa/Accra" >Africa/Accra</option>
<option value="Africa/Addis_Ababa" >Africa/Addis_Ababa</option>
<option value="Africa/Algiers" >Africa/Algiers</option>
<option value="Africa/Asmara" >Africa/Asmara</option>
<option value="Africa/Asmera" >Africa/Asmera</option>
<option value="Africa/Bamako" >Africa/Bamako</option>
<option value="Africa/Bangui" >Africa/Bangui</option>
<option value="Africa/Banjul" >Africa/Banjul</option>
<option value="Africa/Bissau" >Africa/Bissau</option>
<option value="Africa/Blantyre" >Africa/Blantyre</option>
<option value="Africa/Brazzaville" >Africa/Brazzaville</option>
<option value="Africa/Bujumbura" >Africa/Bujumbura</option>
<option value="Africa/Cairo" >Africa/Cairo</option>
<option value="Africa/Casablanca" >Africa/Casablanca</option>
<option value="Africa/Ceuta" >Africa/Ceuta</option>
<option value="Africa/Conakry" >Africa/Conakry</option>
<option value="Africa/Dakar" >Africa/Dakar</option>
<option value="Africa/Dar_es_Salaam" >Africa/Dar_es_Salaam</option>
<option value="Africa/Djibouti" >Africa/Djibouti</option>
<option value="Africa/Douala" >Africa/Douala</option>
<option value="Africa/El_Aaiun" >Africa/El_Aaiun</option>
<option value="Africa/Freetown" >Africa/Freetown</option>
<option value="Africa/Gaborone" >Africa/Gaborone</option>
<option value="Africa/Harare" >Africa/Harare</option>
<option value="Africa/Johannesburg" >Africa/Johannesburg</option>
<option value="Africa/Juba" >Africa/Juba</option>
<option value="Africa/Kampala" >Africa/Kampala</option>
<option value="Africa/Khartoum" >Africa/Khartoum</option>
<option value="Africa/Kigali" >Africa/Kigali</option>
<option value="Africa/Kinshasa" >Africa/Kinshasa</option>
<option value="Africa/Lagos" >Africa/Lagos</option>
<option value="Africa/Libreville" >Africa/Libreville</option>
<option value="Africa/Lome" >Africa/Lome</option>
<option value="Africa/Luanda" >Africa/Luanda</option>
<option value="Africa/Lubumbashi" >Africa/Lubumbashi</option>
<option value="Africa/Lusaka" >Africa/Lusaka</option>
<option value="Africa/Malabo" >Africa/Malabo</option>
<option value="Africa/Maputo" >Africa/Maputo</option>
<option value="Africa/Maseru" >Africa/Maseru</option>
<option value="Africa/Mbabane" >Africa/Mbabane</option>
<option value="Africa/Mogadishu" >Africa/Mogadishu</option>
<option value="Africa/Monrovia" >Africa/Monrovia</option>
<option value="Africa/Nairobi" >Africa/Nairobi</option>
<option value="Africa/Ndjamena" >Africa/Ndjamena</option>
<option value="Africa/Niamey" >Africa/Niamey</option>
<option value="Africa/Nouakchott" >Africa/Nouakchott</option>
<option value="Africa/Ouagadougou" >Africa/Ouagadougou</option>
<option value="Africa/Porto-Novo" >Africa/Porto-Novo</option>
<option value="Africa/Sao_Tome" >Africa/Sao_Tome</option>
<option value="Africa/Timbuktu" >Africa/Timbuktu</option>
<option value="Africa/Tripoli" >Africa/Tripoli</option>
<option value="Africa/Tunis" >Africa/Tunis</option>
<option value="Africa/Windhoek" >Africa/Windhoek</option>
<option value="America/Adak" >America/Adak</option>
<option value="America/Anchorage" >America/Anchorage</option>
<option value="America/Anguilla" >America/Anguilla</option>
<option value="America/Antigua" >America/Antigua</option>
<option value="America/Araguaina" >America/Araguaina</option>
<option value="America/Argentina/Buenos_Aires" >America/Argentina/Buenos_Aires</option>
<option value="America/Argentina/Catamarca" >America/Argentina/Catamarca</option>
<option value="America/Argentina/ComodRivadavia" >America/Argentina/ComodRivadavia</option>
<option value="America/Argentina/Cordoba" >America/Argentina/Cordoba</option>
<option value="America/Argentina/Jujuy" >America/Argentina/Jujuy</option>
<option value="America/Argentina/La_Rioja" >America/Argentina/La_Rioja</option>
<option value="America/Argentina/Mendoza" >America/Argentina/Mendoza</option>
<option value="America/Argentina/Rio_Gallegos" >America/Argentina/Rio_Gallegos</option>
<option value="America/Argentina/Salta" >America/Argentina/Salta</option>
<option value="America/Argentina/San_Juan" >America/Argentina/San_Juan</option>
<option value="America/Argentina/San_Luis" >America/Argentina/San_Luis</option>
<option value="America/Argentina/Tucuman" >America/Argentina/Tucuman</option>
<option value="America/Argentina/Ushuaia" >America/Argentina/Ushuaia</option>
<option value="America/Aruba" >America/Aruba</option>
<option value="America/Asuncion" >America/Asuncion</option>
<option value="America/Atikokan" >America/Atikokan</option>
<option value="America/Atka" >America/Atka</option>
<option value="America/Bahia" >America/Bahia</option>
<option value="America/Bahia_Banderas" >America/Bahia_Banderas</option>
<option value="America/Barbados" >America/Barbados</option>
<option value="America/Belem" >America/Belem</option>
<option value="America/Belize" >America/Belize</option>
<option value="America/Blanc-Sablon" >America/Blanc-Sablon</option>
<option value="America/Boa_Vista" >America/Boa_Vista</option>
<option value="America/Bogota" >America/Bogota</option>
<option value="America/Boise" >America/Boise</option>
<option value="America/Buenos_Aires" >America/Buenos_Aires</option>
<option value="America/Cambridge_Bay" >America/Cambridge_Bay</option>
<option value="America/Campo_Grande" >America/Campo_Grande</option>
<option value="America/Cancun" >America/Cancun</option>
<option value="America/Caracas" >America/Caracas</option>
<option value="America/Catamarca" >America/Catamarca</option>
<option value="America/Cayenne" >America/Cayenne</option>
<option value="America/Cayman" >America/Cayman</option>
<option value="America/Chicago" >America/Chicago</option>
<option value="America/Chihuahua" >America/Chihuahua</option>
<option value="America/Ciudad_Juarez" >America/Ciudad_Juarez</option>
<option value="America/Coral_Harbour" >America/Coral_Harbour</option>
<option value="America/Cordoba" >America/Cordoba</option>
<option value="America/Costa_Rica" >America/Costa_Rica</option>
<option value="America/Coyhaique" >America/Coyhaique</option>
<option value="America/Creston" >America/Creston</option>
<option value="America/Cuiaba" >America/Cuiaba</option>
<option value="America/Curacao" >America/Curacao</option>
<option value="America/Danmarkshavn" >America/Danmarkshavn</option>
<option value="America/Dawson" >America/Dawson</option>
<option value="America/Dawson_Creek" >America/Dawson_Creek</option>
<option value="America/Denver" >America/Denver</option>
<option value="America/Detroit" >America/Detroit</option>
<option value="America/Dominica" >America/Dominica</option>
<option value="America/Edmonton" >America/Edmonton</option>
<option value="America/Eirunepe" >America/Eirunepe</option>
<option value="America/El_Salvador" >America/El_Salvador</option>
<option value="America/Ensenada" >America/Ensenada</option>
<option value="America/Fort_Nelson" >America/Fort_Nelson</option>
<option value="America/Fort_Wayne" >America/Fort_Wayne</option>
<option value="America/Fortaleza" >America/Fortaleza</option>
<option value="America/Glace_Bay" >America/Glace_Bay</option>
<option value="America/Godthab" >America/Godthab</option>
<option value="America/Goose_Bay" >America/Goose_Bay</option>
<option value="America/Grand_Turk" >America/Grand_Turk</option>
<option value="America/Grenada" >America/Grenada</option>
<option value="America/Guadeloupe" >America/Guadeloupe</option>
<option value="America/Guatemala" >America/Guatemala</option>
<option value="America/Guayaquil" >America/Guayaquil</option>
<option value="America/Guyana" >America/Guyana</option>
<option value="America/Halifax" >America/Halifax</option>
<option value="America/Havana" >America/Havana</option>
<option value="America/Hermosillo" >America/Hermosillo</option>
<option value="America/Indiana/Indianapolis" >America/Indiana/Indianapolis</option>
<option value="America/Indiana/Knox" >America/Indiana/Knox</option>
<option value="America/Indiana/Marengo" >America/Indiana/Marengo</option>
<option value="America/Indiana/Petersburg" >America/Indiana/Petersburg</option>
<option value="America/Indiana/Tell_City" >America/Indiana/Tell_City</option>
<option value="America/Indiana/Vevay" >America/Indiana/Vevay</option>
<option value="America/Indiana/Vincennes" >America/Indiana/Vincennes</option>
<option value="America/Indiana/Winamac" >America/Indiana/Winamac</option>
<option value="America/Indianapolis" >America/Indianapolis</option>
<option value="America/Inuvik" >America/Inuvik</option>
<option value="America/Iqaluit" >America/Iqaluit</option>
<option value="America/Jamaica" >America/Jamaica</option>
<option value="America/Jujuy" >America/Jujuy</option>
<option value="America/Juneau" >America/Juneau</option>
<option value="America/Kentucky/Louisville" >America/Kentucky/Louisville</option>
<option value="America/Kentucky/Monticello" >America/Kentucky/Monticello</option>
<option value="America/Knox_IN" >America/Knox_IN</option>
<option value="America/Kralendijk" >America/Kralendijk</option>
<option value="America/La_Paz" >America/La_Paz</option>
<option value="America/Lima" >America/Lima</option>
<option value="America/Los_Angeles" >America/Los_Angeles</option>
<option value="America/Louisville" >America/Louisville</option>
<option value="America/Lower_Princes" >America/Lower_Princes</option>
<option value="America/Maceio" >America/Maceio</option>
<option value="America/Managua" >America/Managua</option>
<option value="America/Manaus" >America/Manaus</option>
<option value="America/Marigot" >America/Marigot</option>
<option value="America/Martinique" >America/Martinique</option>
<option value="America/Matamoros" >America/Matamoros</option>
<option value="America/Mazatlan" >America/Mazatlan</option>
<option value="America/Mendoza" >America/Mendoza</option>
<option value="America/Menominee" >America/Menominee</option>
<option value="America/Merida" >America/Merida</option>
<option value="America/Metlakatla" >America/Metlakatla</option>
<option value="America/Mexico_City" >America/Mexico_City</option>
<option value="America/Miquelon" >America/Miquelon</option>
<option value="America/Moncton" >America/Moncton</option>
<option value="America/Monterrey" >America/Monterrey</option>
<option value="America/Montevideo" >America/Montevideo</option>
<option value="America/Montreal" >America/Montreal</option>
<option value="America/Montserrat" >America/Montserrat</option>
<option value="America/Nassau" >America/Nassau</option>
<option value="America/New_York" >America/New_York</option>
<option value="America/Nipigon" >America/Nipigon</option>
<option value="America/Nome" >America/Nome</option>
<option value="America/Noronha" >America/Noronha</option>
<option value="America/North_Dakota/Beulah" >America/North_Dakota/Beulah</option>
<option value="America/North_Dakota/Center" >America/North_Dakota/Center</option>
<option value="America/North_Dakota/New_Salem" >America/North_Dakota/New_Salem</option>
<option value="America/Nuuk" >America/Nuuk</option>
<option value="America/Ojinaga" >America/Ojinaga</option>
<option value="America/Panama" >America/Panama</option>
<option value="America/Pangnirtung" >America/Pangnirtung</option>
<option value="America/Paramaribo" >America/Paramaribo</option>
<option value="America/Phoenix" >America/Phoenix</option>
<option value="America/Port-au-Prince" >America/Port-au-Prince</option>
<option value="America/Port_of_Spain" >America/Port_of_Spain</option>
<option value="America/Porto_Acre" >America/Porto_Acre</option>
<option value="America/Porto_Velho" >America/Porto_Velho</option>
<option value="America/Puerto_Rico" >America/Puerto_Rico</option>
<option value="America/Punta_Arenas" >America/Punta_Arenas</option>
<option value="America/Rainy_River" >America/Rainy_River</option>
<option value="America/Rankin_Inlet" >America/Rankin_Inlet</option>
<option value="America/Recife" >America/Recife</option>
<option value="America/Regina" >America/Regina</option>
<option value="America/Resolute" >America/Resolute</option>
<option value="America/Rio_Branco" >America/Rio_Branco</option>
<option value="America/Rosario" >America/Rosario</option>
<option value="America/Santa_Isabel" >America/Santa_Isabel</option>
<option value="America/Santarem" >America/Santarem</option>
<option value="America/Santiago" >America/Santiago</option>
<option value="America/Santo_Domingo" >America/Santo_Domingo</option>
<option value="America/Sao_Paulo" >America/Sao_Paulo</option>
<option value="America/Scoresbysund" >America/Scoresbysund</option>
<option value="America/Shiprock" >America/Shiprock</option>
<option value="America/Sitka" >America/Sitka</option>
<option value="America/St_Barthelemy" >America/St_Barthelemy</option>
<option value="America/St_Johns" >America/St_Johns</option>
<option value="America/St_Kitts" >America/St_Kitts</option>
<option value="America/St_Lucia" >America/St_Lucia</option>
<option value="America/St_Thomas" >America/St_Thomas</option>
<option value="America/St_Vincent" >America/St_Vincent</option>
<option value="America/Swift_Current" >America/Swift_Current</option>
<option value="America/Tegucigalpa" >America/Tegucigalpa</option>
<option value="America/Thule" >America/Thule</option>
<option value="America/Thunder_Bay" >America/Thunder_Bay</option>
<option value="America/Tijuana" >America/Tijuana</option>
<option value="America/Toronto" >America/Toronto</option>
<option value="America/Tortola" >America/Tortola</option>
<option value="America/Vancouver" >America/Vancouver</option>
<option value="America/Virgin" >America/Virgin</option>
<option value="America/Whitehorse" >America/Whitehorse</option>
<option value="America/Winnipeg" >America/Winnipeg</option>
<option value="America/Yakutat" >America/Yakutat</option>
<option value="America/Yellowknife" >America/Yellowknife</option>
<option value="Antarctica/Casey" >Antarctica/Casey</option>
<option value="Antarctica/Davis" >Antarctica/Davis</option>
<option value="Antarctica/DumontDUrville" >Antarctica/DumontDUrville</option>
<option value="Antarctica/Macquarie" >Antarctica/Macquarie</option>
<option value="Antarctica/Mawson" >Antarctica/Mawson</option>
<option value="Antarctica/McMurdo" >Antarctica/McMurdo</option>
<option value="Antarctica/Palmer" >Antarctica/Palmer</option>
<option value="Antarctica/Rothera" >Antarctica/Rothera</option>
<option value="Antarctica/South_Pole" >Antarctica/South_Pole</option>
<option value="Antarctica/Syowa" >Antarctica/Syowa</option>
<option value="Antarctica/Troll" >Antarctica/Troll</option>
<option value="Antarctica/Vostok" >Antarctica/Vostok</option>
<option value="Arctic/Longyearbyen" >Arctic/Longyearbyen</option>
<option value="Asia/Aden" >Asia/Aden</option>
<option value="Asia/Almaty" >Asia/Almaty</option>
<option value="Asia/Amman" >Asia/Amman</option>
<option value="Asia/Anadyr" >Asia/Anadyr</option>
<option value="Asia/Aqtau" >Asia/Aqtau</option>
<option value="Asia/Aqtobe" >Asia/Aqtobe</option>
<option value="Asia/Ashgabat" >Asia/Ashgabat</option>
<option value="Asia/Ashkhabad" >Asia/Ashkhabad</option>
<option value="Asia/Atyrau" >Asia/Atyrau</option>
<option value="Asia/Baghdad" >Asia/Baghdad</option>
<option value="Asia/Bahrain" >Asia/Bahrain</option>
<option value="Asia/Baku" >Asia/Baku</option>
<option value="Asia/Bangkok" >Asia/Bangkok</option>
<option value="Asia/Barnaul" >Asia/Barnaul</option>
<option value="Asia/Beijing" >Asia/Beijing</option>
<option value="Asia/Beirut" >Asia/Beirut</option>
<option value="Asia/Bishkek" >Asia/Bishkek</option>
<option value="Asia/Brunei" >Asia/Brunei</option>
<option value="Asia/Calcutta" >Asia/Calcutta</option>
<option value="Asia/Chita" >Asia/Chita</option>
<option value="Asia/Choibalsan" >Asia/Choibalsan</option>
<option value="Asia/Chongqing" >Asia/Chongqing</option>
<option value="Asia/Chungking" >Asia/Chungking</option>
<option value="Asia/Colombo" >Asia/Colombo</option>
<option value="Asia/Dacca" >Asia/Dacca</option>
<option value="Asia/Damascus" >Asia/Damascus</option>
<option value="Asia/Dhaka" >Asia/Dhaka</option>
<option value="Asia/Dili" >Asia/Dili</option>
<option value="Asia/Dubai" >Asia/Dubai</option>
<option value="Asia/Dushanbe" >Asia/Dushanbe</option>
<option value="Asia/Famagusta" >Asia/Famagusta</option>
<option value="Asia/Gaza" >Asia/Gaza</option>
<option value="Asia/Harbin" >Asia/Harbin</option>
<option value="Asia/Hebron" >Asia/Hebron</option>
<option value="Asia/Ho_Chi_Minh" >Asia/Ho_Chi_Minh</option>
<option value="Asia/Hong_Kong" >Asia/Hong_Kong</option>
<option value="Asia/Hovd" >Asia/Hovd</option>
<option value="Asia/Irkutsk" >Asia/Irkutsk</option>
<option value="Asia/Istanbul" >Asia/Istanbul</option>
<option value="Asia/Jakarta" >Asia/Jakarta</option>
<option value="Asia/Jayapura" >Asia/Jayapura</option>
<option value="Asia/Jerusalem" >Asia/Jerusalem</option>
<option value="Asia/Kabul" >Asia/Kabul</option>
<option value="Asia/Kamchatka" >Asia/Kamchatka</option>
<option value="Asia/Karachi" >Asia/Karachi</option>
<option value="Asia/Kashgar" >Asia/Kashgar</option>
<option value="Asia/Kathmandu" >Asia/Kathmandu</option>
<option value="Asia/Katmandu" >Asia/Katmandu</option>
<option value="Asia/Khandyga" >Asia/Khandyga</option>
<option value="Asia/Kolkata" >Asia/Kolkata</option>
<option value="Asia/Krasnoyarsk" >Asia/Krasnoyarsk</option>
<option value="Asia/Kuala_Lumpur" >Asia/Kuala_Lumpur</option>
<option value="Asia/Kuching" >Asia/Kuching</option>
<option value="Asia/Kuwait" >Asia/Kuwait</option>
<option value="Asia/Macao" >Asia/Macao</option>
<option value="Asia/Macau" >Asia/Macau</option>
<option value="Asia/Magadan" >Asia/Magadan</option>
<option value="Asia/Makassar" >Asia/Makassar</option>
<option value="Asia/Manila" >Asia/Manila</option>
<option value="Asia/Muscat" >Asia/Muscat</option>
<option value="Asia/Nicosia" >Asia/Nicosia</option>
<option value="Asia/Novokuznetsk" >Asia/Novokuznetsk</option>
<option value="Asia/Novosibirsk" >Asia/Novosibirsk</option>
<option value="Asia/Omsk" >Asia/Omsk</option>
<option value="Asia/Oral" >Asia/Oral</option>
<option value="Asia/Phnom_Penh" >Asia/Phnom_Penh</option>
<option value="Asia/Pontianak" >Asia/Pontianak</option>
<option value="Asia/Pyongyang" >Asia/Pyongyang</option>
<option value="Asia/Qatar" >Asia/Qatar</option>
<option value="Asia/Qostanay" >Asia/Qostanay</option>
<option value="Asia/Qyzylorda" >Asia/Qyzylorda</option>
<option value="Asia/Rangoon" >Asia/Rangoon</option>
<option value="Asia/Riyadh" >Asia/Riyadh</option>
<option value="Asia/Saigon" >Asia/Saigon</option>
<option value="Asia/Sakhalin" >Asia/Sakhalin</option>
<option value="Asia/Samarkand" >Asia/Samarkand</option>
<option value="Asia/Seoul" >Asia/Seoul</option>
<option value="Asia/Shanghai" >Asia/Shanghai</option>
<option value="Asia/Singapore" >Asia/Singapore</option>
<option value="Asia/Srednekolymsk" >Asia/Srednekolymsk</option>
<option value="Asia/Taipei" >Asia/Taipei</option>
<option value="Asia/Tashkent" >Asia/Tashkent</option>
<option value="Asia/Tbilisi" >Asia/Tbilisi</option>
<option value="Asia/Tehran" >Asia/Tehran</option>
<option value="Asia/Tel_Aviv" >Asia/Tel_Aviv</option>
<option value="Asia/Thimbu" >Asia/Thimbu</option>
<option value="Asia/Thimphu" >Asia/Thimphu</option>
<option value="Asia/Tokyo" >Asia/Tokyo</option>
<option value="Asia/Tomsk" >Asia/Tomsk</option>
<option value="Asia/Ujung_Pandang" >Asia/Ujung_Pandang</option>
<option value="Asia/Ulaanbaatar" >Asia/Ulaanbaatar</option>
<option value="Asia/Ulan_Bator" >Asia/Ulan_Bator</option>
<option value="Asia/Urumqi" >Asia/Urumqi</option>
<option value="Asia/Ust-Nera" >Asia/Ust-Nera</option>
<option value="Asia/Vientiane" >Asia/Vientiane</option>
<option value="Asia/Vladivostok" >Asia/Vladivostok</option>
<option value="Asia/Yakutsk" >Asia/Yakutsk</option>
<option value="Asia/Yangon" >Asia/Yangon</option>
<option value="Asia/Yekaterinburg" >Asia/Yekaterinburg</option>
<option value="Asia/Yerevan" >Asia/Yerevan</option>
<option value="Atlantic/Azores" >Atlantic/Azores</option>
<option value="Atlantic/Bermuda" >Atlantic/Bermuda</option>
<option value="Atlantic/Canary" >Atlantic/Canary</option>
<option value="Atlantic/Cape_Verde" >Atlantic/Cape_Verde</option>
<option value="Atlantic/Faeroe" >Atlantic/Faeroe</option>
<option value="Atlantic/Faroe" >Atlantic/Faroe</option>
<option value="Atlantic/Jan_Mayen" >Atlantic/Jan_Mayen</option>
<option value="Atlantic/Madeira" >Atlantic/Madeira</option>
<option value="Atlantic/Reykjavik" >Atlantic/Reykjavik</option>
<option value="Atlantic/South_Georgia" >Atlantic/South_Georgia</option>
<option value="Atlantic/St_Helena" >Atlantic/St_Helena</option>
<option value="Atlantic/Stanley" >Atlantic/Stanley</option>
<option value="Australia/ACT" >Australia/ACT</option>
<option value="Australia/Adelaide" >Australia/Adelaide</option>
<option value="Australia/Brisbane" >Australia/Brisbane</option>
<option value="Australia/Broken_Hill" >Australia/Broken_Hill</option>
<option value="Australia/Canberra" >Australia/Canberra</option>
<option value="Australia/Currie" >Australia/Currie</option>
<option value="Australia/Darwin" >Australia/Darwin</option>
<option value="Australia/Eucla" >Australia/Eucla</option>
<option value="Australia/Hobart" >Australia/Hobart</option>
<option value="Australia/LHI" >Australia/LHI</option>
<option value="Australia/Lindeman" >Australia/Lindeman</option>
<option value="Australia/Lord_Howe" >Australia/Lord_Howe</option>
<option value="Australia/Melbourne" >Australia/Melbourne</option>
<option value="Australia/NSW" >Australia/NSW</option>
<option value="Australia/North" >Australia/North</option>
<option value="Australia/Perth" >Australia/Perth</option>
<option value="Australia/Queensland" >Australia/Queensland</option>
<option value="Australia/South" >Australia/South</option>
<option value="Australia/Sydney" >Australia/Sydney</option>
<option value="Australia/Tasmania" >Australia/Tasmania</option>
<option value="Australia/Victoria" >Australia/Victoria</option>
<option value="Australia/West" >Australia/West</option>
<option value="Australia/Yancowinna" >Australia/Yancowinna</option>
<option value="Brazil/Acre" >Brazil/Acre</option>
<option value="Brazil/DeNoronha" >Brazil/DeNoronha</option>
<option value="Brazil/East" >Brazil/East</option>
<option value="Brazil/West" >Brazil/West</option>
<option value="Canada/Atlantic" >Canada/Atlantic</option>
<option value="Canada/Central" >Canada/Central</option>
<option value="Canada/East-Saskatchewan" >Canada/East-Saskatchewan</option>
<option value="Canada/Eastern" >Canada/Eastern</option>
<option value="Canada/Mountain" >Canada/Mountain</option>
<option value="Canada/Newfoundland" >Canada/Newfoundland</option>
<option value="Canada/Pacific" >Canada/Pacific</option>
<option value="Canada/Saskatchewan" >Canada/Saskatchewan</option>
<option value="Canada/Yukon" >Canada/Yukon</option>
<option value="Chile/Continental" >Chile/Continental</option>
<option value="Chile/EasterIsland" >Chile/EasterIsland</option>
<option value="Cuba" >Cuba</option>
<option value="Egypt" >Egypt</option>
<option value="Eire" >Eire</option>
<option value="Etc/GMT+1" >Etc/GMT+1</option>
<option value="Etc/GMT+10" >Etc/GMT+10</option>
<option value="Etc/GMT+11" >Etc/GMT+11</option>
<option value="Etc/GMT+12" >Etc/GMT+12</option>
<option value="Etc/GMT+2" >Etc/GMT+2</option>
<option value="Etc/GMT+3" >Etc/GMT+3</option>
<option value="Etc/GMT+4" >Etc/GMT+4</option>
<option value="Etc/GMT+5" >Etc/GMT+5</option>
<option value="Etc/GMT+6" >Etc/GMT+6</option>
<option value="Etc/GMT+7" >Etc/GMT+7</option>
<option value="Etc/GMT+8" >Etc/GMT+8</option>
<option value="Etc/GMT+9" >Etc/GMT+9</option>
<option value="Etc/GMT-1" >Etc/GMT-1</option>
<option value="Etc/GMT-10" >Etc/GMT-10</option>
<option value="Etc/GMT-11" >Etc/GMT-11</option>
<option value="Etc/GMT-12" >Etc/GMT-12</option>
<option value="Etc/GMT-13" >Etc/GMT-13</option>
<option value="Etc/GMT-14" >Etc/GMT-14</option>
<option value="Etc/GMT-2" >Etc/GMT-2</option>
<option value="Etc/GMT-3" >Etc/GMT-3</option>
<option value="Etc/GMT-4" >Etc/GMT-4</option>
<option value="Etc/GMT-5" >Etc/GMT-5</option>
<option value="Etc/GMT-6" >Etc/GMT-6</option>
<option value="Etc/GMT-7" >Etc/GMT-7</option>
<option value="Etc/GMT-8" >Etc/GMT-8</option>
<option value="Etc/GMT-9" >Etc/GMT-9</option>
<option value="Etc/Greenwich" >Etc/Greenwich</option>
<option value="Etc/Zulu" >Etc/Zulu</option>
<option value="Europe/Amsterdam" >Europe/Amsterdam</option>
<option value="Europe/Andorra" >Europe/Andorra</option>
<option value="Europe/Astrakhan" >Europe/Astrakhan</option>
<option value="Europe/Athens" >Europe/Athens</option>
<option value="Europe/Belfast" >Europe/Belfast</option>
<option value="Europe/Belgrade" >Europe/Belgrade</option>
<option value="Europe/Berlin" selected="selected">Europe/Berlin</option>
<option value="Europe/Bratislava" >Europe/Bratislava</option>
<option value="Europe/Brussels" >Europe/Brussels</option>
<option value="Europe/Bucharest" >Europe/Bucharest</option>
<option value="Europe/Budapest" >Europe/Budapest</option>
<option value="Europe/Busingen" >Europe/Busingen</option>
<option value="Europe/Chisinau" >Europe/Chisinau</option>
<option value="Europe/Copenhagen" >Europe/Copenhagen</option>
<option value="Europe/Dublin" >Europe/Dublin</option>
<option value="Europe/Gibraltar" >Europe/Gibraltar</option>
<option value="Europe/Guernsey" >Europe/Guernsey</option>
<option value="Europe/Helsinki" >Europe/Helsinki</option>
<option value="Europe/Isle_of_Man" >Europe/Isle_of_Man</option>
<option value="Europe/Istanbul" >Europe/Istanbul</option>
<option value="Europe/Jersey" >Europe/Jersey</option>
<option value="Europe/Kaliningrad" >Europe/Kaliningrad</option>
<option value="Europe/Kiev" >Europe/Kiev</option>
<option value="Europe/Kirov" >Europe/Kirov</option>
<option value="Europe/Kyiv" >Europe/Kyiv</option>
<option value="Europe/Lisbon" >Europe/Lisbon</option>
<option value="Europe/Ljubljana" >Europe/Ljubljana</option>
<option value="Europe/London" >Europe/London</option>
<option value="Europe/Luxembourg" >Europe/Luxembourg</option>
<option value="Europe/Madrid" >Europe/Madrid</option>
<option value="Europe/Malta" >Europe/Malta</option>
<option value="Europe/Mariehamn" >Europe/Mariehamn</option>
<option value="Europe/Minsk" >Europe/Minsk</option>
<option value="Europe/Monaco" >Europe/Monaco</option>
<option value="Europe/Moscow" >Europe/Moscow</option>
<option value="Europe/Nicosia" >Europe/Nicosia</option>
<option value="Europe/Oslo" >Europe/Oslo</option>
<option value="Europe/Paris" >Europe/Paris</option>
<option value="Europe/Podgorica" >Europe/Podgorica</option>
<option value="Europe/Prague" >Europe/Prague</option>
<option value="Europe/Riga" >Europe/Riga</option>
<option value="Europe/Rome" >Europe/Rome</option>
<option value="Europe/Samara" >Europe/Samara</option>
<option value="Europe/San_Marino" >Europe/San_Marino</option>
<option value="Europe/Sarajevo" >Europe/Sarajevo</option>
<option value="Europe/Saratov" >Europe/Saratov</option>
<option value="Europe/Simferopol" >Europe/Simferopol</option>
<option value="Europe/Skopje" >Europe/Skopje</option>
<option value="Europe/Sofia" >Europe/Sofia</option>
<option value="Europe/Stockholm" >Europe/Stockholm</option>
<option value="Europe/Tallinn" >Europe/Tallinn</option>
<option value="Europe/Tirane" >Europe/Tirane</option>
<option value="Europe/Tiraspol" >Europe/Tiraspol</option>
<option value="Europe/Ulyanovsk" >Europe/Ulyanovsk</option>
<option value="Europe/Uzhgorod" >Europe/Uzhgorod</option>
<option value="Europe/Vaduz" >Europe/Vaduz</option>
<option value="Europe/Vatican" >Europe/Vatican</option>
<option value="Europe/Vienna" >Europe/Vienna</option>
<option value="Europe/Vilnius" >Europe/Vilnius</option>
<option value="Europe/Volgograd" >Europe/Volgograd</option>
<option value="Europe/Warsaw" >Europe/Warsaw</option>
<option value="Europe/Zagreb" >Europe/Zagreb</option>
<option value="Europe/Zaporozhye" >Europe/Zaporozhye</option>
<option value="Europe/Zurich" >Europe/Zurich</option>
<option value="GB" >GB</option>
<option value="GB-Eire" >GB-Eire</option>
<option value="Greenwich" >Greenwich</option>
<option value="HST" >HST</option>
<option value="Hongkong" >Hongkong</option>
<option value="Iceland" >Iceland</option>
<option value="Indian/Antananarivo" >Indian/Antananarivo</option>
<option value="Indian/Chagos" >Indian/Chagos</option>
<option value="Indian/Christmas" >Indian/Christmas</option>
<option value="Indian/Cocos" >Indian/Cocos</option>
<option value="Indian/Comoro" >Indian/Comoro</option>
<option value="Indian/Kerguelen" >Indian/Kerguelen</option>
<option value="Indian/Mahe" >Indian/Mahe</option>
<option value="Indian/Maldives" >Indian/Maldives</option>
<option value="Indian/Mauritius" >Indian/Mauritius</option>
<option value="Indian/Mayotte" >Indian/Mayotte</option>
<option value="Indian/Reunion" >Indian/Reunion</option>
<option value="Iran" >Iran</option>
<option value="Israel" >Israel</option>
<option value="Jamaica" >Jamaica</option>
<option value="Japan" >Japan</option>
<option value="Kwajalein" >Kwajalein</option>
<option value="Libya" >Libya</option>
<option value="Mexico/BajaNorte" >Mexico/BajaNorte</option>
<option value="Mexico/BajaSur" >Mexico/BajaSur</option>
<option value="Mexico/General" >Mexico/General</option>
<option value="NZ" >NZ</option>
<option value="NZ-CHAT" >NZ-CHAT</option>
<option value="Navajo" >Navajo</option>
<option value="PRC" >PRC</option>
<option value="Pacific/Apia" >Pacific/Apia</option>
<option value="Pacific/Auckland" >Pacific/Auckland</option>
<option value="Pacific/Bougainville" >Pacific/Bougainville</option>
<option value="Pacific/Chatham" >Pacific/Chatham</option>
<option value="Pacific/Chuuk" >Pacific/Chuuk</option>
<option value="Pacific/Easter" >Pacific/Easter</option>
<option value="Pacific/Efate" >Pacific/Efate</option>
<option value="Pacific/Enderbury" >Pacific/Enderbury</option>
<option value="Pacific/Fakaofo" >Pacific/Fakaofo</option>
<option value="Pacific/Fiji" >Pacific/Fiji</option>
<option value="Pacific/Funafuti" >Pacific/Funafuti</option>
<option value="Pacific/Galapagos" >Pacific/Galapagos</option>
<option value="Pacific/Gambier" >Pacific/Gambier</option>
<option value="Pacific/Guadalcanal" >Pacific/Guadalcanal</option>
<option value="Pacific/Guam" >Pacific/Guam</option>
<option value="Pacific/Honolulu" >Pacific/Honolulu</option>
<option value="Pacific/Johnston" >Pacific/Johnston</option>
<option value="Pacific/Kanton" >Pacific/Kanton</option>
<option value="Pacific/Kiritimati" >Pacific/Kiritimati</option>
<option value="Pacific/Kosrae" >Pacific/Kosrae</option>
<option value="Pacific/Kwajalein" >Pacific/Kwajalein</option>
<option value="Pacific/Majuro" >Pacific/Majuro</option>
<option value="Pacific/Marquesas" >Pacific/Marquesas</option>
<option value="Pacific/Midway" >Pacific/Midway</option>
<option value="Pacific/Nauru" >Pacific/Nauru</option>
<option value="Pacific/Niue" >Pacific/Niue</option>
<option value="Pacific/Norfolk" >Pacific/Norfolk</option>
<option value="Pacific/Noumea" >Pacific/Noumea</option>
<option value="Pacific/Pago_Pago" >Pacific/Pago_Pago</option>
<option value="Pacific/Palau" >Pacific/Palau</option>
<option value="Pacific/Pitcairn" >Pacific/Pitcairn</option>
<option value="Pacific/Pohnpei" >Pacific/Pohnpei</option>
<option value="Pacific/Ponape" >Pacific/Ponape</option>
<option value="Pacific/Port_Moresby" >Pacific/Port_Moresby</option>
<option value="Pacific/Rarotonga" >Pacific/Rarotonga</option>
<option value="Pacific/Saipan" >Pacific/Saipan</option>
<option value="Pacific/Samoa" >Pacific/Samoa</option>
<option value="Pacific/Tahiti" >Pacific/Tahiti</option>
<option value="Pacific/Tarawa" >Pacific/Tarawa</option>
<option value="Pacific/Tongatapu" >Pacific/Tongatapu</option>
<option value="Pacific/Truk" >Pacific/Truk</option>
<option value="Pacific/Wake" >Pacific/Wake</option>
<option value="Pacific/Wallis" >Pacific/Wallis</option>
<option value="Pacific/Yap" >Pacific/Yap</option>
<option value="Poland" >Poland</option>
<option value="Portugal" >Portugal</option>
<option value="ROC" >ROC</option>
<option value="ROK" >ROK</option>
<option value="Singapore" >Singapore</option>
<option value="Turkey" >Turkey</option>
<option value="US/Alaska" >US/Alaska</option>
<option value="US/Aleutian" >US/Aleutian</option>
<option value="US/Arizona" >US/Arizona</option>
<option value="US/Central" >US/Central</option>
<option value="US/East-Indiana" >US/East-Indiana</option>
<option value="US/Eastern" >US/Eastern</option>
<option value="US/Hawaii" >US/Hawaii</option>
<option value="US/Indiana-Starke" >US/Indiana-Starke</option>
<option value="US/Michigan" >US/Michigan</option>
<option value="US/Mountain" >US/Mountain</option>
<option value="US/Pacific" >US/Pacific</option>
<option value="US/Pacific-New" >US/Pacific-New</option>
<option value="US/Samoa" >US/Samoa</option>
<option value="Zulu" >Zulu</option>
</select></div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.srvipname)</script></div><input maxlength="128" size="36" name="ntp_server" value="" placeholder="2.pool.ntp.org 212.18.3.19 88.99.174.22" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.ntp_timer)</script></div><input class="num" maxlength="6" size="6" name="ntp_timer" onblur="valid_range(this,3600,604800,idx.ntp_timer)" value="3600" />&nbsp;<script type="text/javascript">Capture(share.seconds)</script><span class="default">(Default: 3600, Range: 3600 - 604800)</span></div></div></fieldset><br /><div id="footer" class="submitFooter"><script type="text/javascript">
//<![CDATA[
submitFooterButton(1,1);
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><!--<dt class="term"><script type="text/javascript">Capture(sas.title)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.sas)</script></dd>--><dt class="term"><script type="text/javascript">Capture(idx.dhcp)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right2)</script></dd><dt class="term"><script type="text/javascript">Capture(share.hostname)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right4)</script></dd><dt class="term"><script type="text/javascript">Capture(share.domainname)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right6)</script></dd><dt class="term"><script type="text/javascript">Capture(idx.lanip)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right8)</script></dd><dt class="term"><script type="text/javascript">Capture(share.subnet)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right10)</script></dd><dt class="term"><script type="text/javascript">Capture(idx.dhcp_srv)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right12)</script></dd><dt class="term"><script type="text/javascript">Capture(idx.dhcp_start)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right14)</script></dd><dt class="term"><script type="text/javascript">Capture(idx.dhcp_maxusers)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right16)</script></dd><dt class="term"><script type="text/javascript">Capture(idx.legend3)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hidx.right18)</script></dd></dl><br/><a href="javascript:openHelpWindow('HSetup.asp');"><script type="text/javascript">Capture(share.more)</script></a></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:35 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>