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
<title>DD-WRT (build 65498) - IPv6</title>
<script type="text/javascript">history.pushState({urlPath:'IPV6.asp'}, "DD-WRT (build 65498) - IPv6", 'IPV6.asp')
</script><script type="text/javascript">
//<![CDATA[
function to_submit(F) {F.save_button.value = sbutton.saving;apply(F);}function to_apply(F) {F.apply_button.value = sbutton.applied;applytake(F);}var update;addEvent(window, "load", function() {stickControl(1);show_layer_ext(document.setup.ipv6_enable,'idipv6', 0 == 1);show_layer_ext(document.setup.dhcp6c_custom,'iddhcp6c_custom', 0 == 1);show_layer_ext(document.setup.dhcp6s_enable,'iddhcp6s_enabled', 0 == 1);show_layer_ext(document.setup.dhcp6s_custom,'iddhcp6s_custom', 0 == 1);show_layer_ext(document.setup.radvd_enable,'idradvd', 1 == 1);show_layer_ext(document.setup.radvd_custom,'idradvd_custom', 0 == 1);show_layer_ext(document.setup.ipv6_typ,'idipv6_native', false);show_layer_ext(document.setup.ipv6_typ,'idipv6_6in4', false);if( "" == "ipv6native" ){show_layer_ext(document.setup.ipv6_typ,'idipv6_native', true);} else if ( "" == "ipv6in4" ) {show_layer_ext(document.setup.ipv6_typ,'idipv6_native', true);show_layer_ext(document.setup.ipv6_typ,'idipv6_6in4', true);}update = new StatusbarUpdate();update.start();});addEvent(window, "unload", function() {update.stop();});
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
<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path></svg></a><li><a href="index.asp"><script type="text/javascript">Capture(bmenu.setupbasic)</script></a></li>
<li><span><script type="text/javascript">Capture(bmenu.setupipv6)</script></span></li>
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
</div><div id="main"><div id="contents"><form name="setup" action="http://192.168.1.1/apply.cgi" method="post" spellcheck="false"><input type="hidden" name="submit_button" value="IPV6" /><input type="hidden" name="action" value="Apply" /><input type="hidden" name="change_action" /><input type="hidden" name="submit_type" /><input type="hidden" name="commit" value="1"/><h2><script type="text/javascript">Capture(management.ipv6_h2)</script></h2><fieldset><legend><script type="text/javascript">Capture(management.ipv6_legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_srv)</script></div><input class="spaceradio" type="radio" value="1" name="ipv6_enable"  onclick="show_layer_ext(this, 'idipv6', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="ipv6_enable" checked="checked" onclick="show_layer_ext(this, 'idipv6', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="idipv6"><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_typ)</script></div><select name="ipv6_typ"><option value="ipv6native" ><script type="text/javascript">Capture(management.ipv6_native)</script></option>
<option value="ipv6pd" ><script type="text/javascript">Capture(management.ipv6_px_del)</script></option>
<option value="ipv6in4" ><script type="text/javascript">Capture(management.ipv6_6in4st)</script></option>
</select></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_pf_len)</script></div><input class="text" size="2" maxlength="2" name="ipv6_pf_len" value="64" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dns)</script> 1</div><input class="text" size="40" maxlength="40" name="ipv6_dns1" value="" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dns)</script> 2</div><input class="text" size="40" maxlength="40" name="ipv6_dns2" value="" /></div><!-- only if native is selected--><div id="idipv6_native"><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_prefix)</script></div><input class="text" size="40" maxlength="40" name="ipv6_prefix" value="" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_addr)</script></div><input class="text" size="40" maxlength="40" name="ipv6_addr" value="" /></div></div><!-- end only native selected--><!-- only if 6in4 is selected--><div id="idipv6_6in4"><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_tun_end_ipv4)</script></div><input class="text" size="20" maxlength="20" name="ipv6_tun_end_ipv4" value="" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_tun_client_addr)</script></div><input class="text" size="40" maxlength="40" name="ipv6_tun_client_addr" value="" />/<input class="text" size="2" maxlength="2" name="ipv6_tun_client_addr_pref" value="64" /></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_tun_upd_url)</script></div><input class="text" size="46" maxlength="150" name="ipv6_tun_upd_url" value="See tunnelbroker account" /></div></div><!-- end only 6in4 selected--><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.mtu)</script></div><input class="text" size="5" maxlength="4" type="number" min="1280" max="1480" name="ipv6_mtu" value="1452" /></div><fieldset><legend><script type="text/javascript">Capture(management.ipv6_dhcp6c_legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6c_norelease)</script></div><input class="spaceradio" type="radio" value="1" name="dhcp6c_norelease" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="dhcp6c_norelease" checked="checked"/><script type="text/javascript">Capture(share.disable)</script></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6c_cust)</script></div><input class="spaceradio" type="radio" value="1" name="dhcp6c_custom"  onclick="show_layer_ext(this, 'iddhcp6c_custom', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="dhcp6c_custom" checked="checked" onclick="show_layer_ext(this, 'iddhcp6c_custom', false)" /><script type="text/javascript">Capture(share.disable)</script>&nbsp;<input class="spaceradio" type="radio" value="2" name="dhcp6c_custom"  onclick="show_layer_ext(this, 'iddhcp6c_custom', false)" /><script type="text/javascript">Capture(service.dnsmasq_ipv6)</script></div><div id="iddhcp6c_custom"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6c_conf)</script></div><textarea id="dhcp6c_conf" name="dhcp6c_conf" cols="80" rows="4"></textarea><script type="text/javascript">
//<![CDATA[
var dhcp6c_conf = fix_cr( '' );document.getElementById("dhcp6c_conf").value = dhcp6c_conf;
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(management.ipv6_dhcp6s_legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6s)</script></div><input class="spaceradio" type="radio" value="1" name="dhcp6s_enable"  onclick="show_layer_ext(this, 'iddhcp6s_enabled', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="dhcp6s_enable" checked="checked" onclick="show_layer_ext(this, 'iddhcp6s_enabled', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="iddhcp6s_enabled"><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6s_seq_ips)</script></div><input class="spaceradio" type="radio" value="1" name="dhcp6s_seq_ips"  /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="dhcp6s_seq_ips" checked="checked" /><script type="text/javascript">Capture(share.disable)</script></div><div id="iddhcp6s_hosts"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6s_hosts)</script></div><textarea id="dhcp6s_hosts" name="dhcp6s_hosts" cols="80" rows="4"></textarea><script type="text/javascript">
//<![CDATA[
var dhcp6s_hosts = fix_cr( '' );document.getElementById("dhcp6s_hosts").value = dhcp6s_hosts;
//]]>
</script></div><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6s_cust)</script></div><input class="spaceradio" type="radio" value="1" name="dhcp6s_custom"  onclick="show_layer_ext(this, 'iddhcp6s_custom', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="dhcp6s_custom" checked="checked" onclick="show_layer_ext(this, 'iddhcp6s_custom', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="iddhcp6s_custom"><div class="label"><script type="text/javascript">Capture(management.ipv6_dhcp6s_conf)</script></div><textarea id="dhcp6s_conf" name="dhcp6s_conf" cols="80" rows="4"></textarea><script type="text/javascript">
//<![CDATA[
var dhcp6s_conf = fix_cr( '' );document.getElementById("dhcp6s_conf").value = dhcp6s_conf;
//]]>
</script></div></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(management.ipv6_rad_legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_rad_enable)</script></div><input class="spaceradio" type="radio" value="1" name="radvd_enable" checked="checked" onclick="show_layer_ext(this, 'idradvd', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="radvd_enable"  onclick="show_layer_ext(this, 'idradvd', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="idradvd"><div class="setting"><div class="label"><script type="text/javascript">Capture(management.ipv6_rad)</script></div><input class="spaceradio" type="radio" value="1" name="radvd_custom"  onclick="show_layer_ext(this, 'idradvd_custom', true)" /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="radvd_custom" checked="checked" onclick="show_layer_ext(this, 'idradvd_custom', false)" /><script type="text/javascript">Capture(share.disable)</script></div><div id="idradvd_custom"><div class="label"><script type="text/javascript">Capture(management.ipv6_radconf)</script></div><textarea id="radvd_conf" name="radvd_conf" cols="80" rows="4"></textarea><script type="text/javascript">
//<![CDATA[
var radvd_conf = fix_cr( '' );document.getElementById("radvd_conf").value = radvd_conf;
//]]>
</script></div></div></fieldset></div></fieldset><br/><div id="footer" class="submitFooter"><script type="text/javascript">
//<![CDATA[
submitFooterButton(1,1);
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><dt class="term"><script type="text/javascript">Capture(management.ipv6_h2)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hipv6.right2)</script></dd></dl><br /><!-- Hide more... there is no help page here https://svn.dd-wrt.com/ticket/7478<a href="javascript:openHelpWindow('HIPV6.asp')"><script type="text/javascript">Capture(share.more)</script></a>--></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:36 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>