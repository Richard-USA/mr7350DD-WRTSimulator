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
<title>DD-WRT (build 65498) - WAN Status</title>
<script type="text/javascript">history.pushState({urlPath:'Status_Internet.asp'}, "DD-WRT (build 65498) - WAN Status", 'Status_Internet.asp')
</script><script type="text/javascript">
//<![CDATA[
var update;var dummy="";function DHCPAction(F,I) {F.change_action.value="gozila_cgi";F.submit_type.value = I;apply(F);}function connect(F,I) {F.change_action.value="gozila_cgi";F.submit_type.value = I;apply(F);}function speedtest(F) {F.change_action.value="gozila_cgi";F.submit_type.value = "speedtest";apply(F);}function ttraff_remove_submit(F) {if(!confirm(status_inet.delete_confirm)) {return false;}F.change_action.value="gozila_cgi";F.submit_type.value = "delete_ttraffdata";apply(F);}var d = new Date();var count = d.getFullYear() * 12 + d.getMonth();function get_month(count) {return count % 12 + 1;}function get_year(count) {return parseInt (count / 12);}function load_file(count) {return "/ttgraph.cgi?" + get_month(count) + "-" + get_year(count);}function do_show_prev() {count--;do_refresh()}function do_refresh() {var f = document.getElementById('graph');f.src = load_file(count);}function do_show_next() {count++;do_refresh()}function reloadIt() {do_refresh();setTimeout("reloadIt()", 30000);}addEvent(window, "load", function() {setElementVisible("wan_show", "0" == "0");setElementVisible("wan_showtraff", "1" == "1" && ("0" == "0" && "disabled" != "disabled" || "" != "") );setElementVisible("wan_showdisabled", "0" == "1");setElementVisible("wan_info", "disabled" != "disabled");setElementVisible("wan_dhcp", "disabled" == "dhcp" || "disabled" == "dhcp_auth");setElementVisible("wan_connection", "disabled" != "dhcp" && "disabled" != "dhcp_auth" && "disabled" != "static");setElementVisible("wan_signal", "disabled" == "3g");setElementVisible("wan_acname", "disabled" == "pppoe");setElementVisible("ipv6", "0" == "1");update = new StatusUpdate("Status_Internet.live.asp", 3);update.onUpdate("wan_shortproto", function(u) {setElementVisible("wan_info", u.wan_shortproto != "disabled");setElementVisible("wan_dhcp", u.wan_shortproto == "dhcp" || u.wan_shortproto == "dhcp_auth");setElementVisible("wan_connection", u.wan_shortproto != "dhcp" && u.wan_shortproto != "dhcp_auth" && u.wan_shortproto != "static");});update.start();});addEvent(window, "unload", function() {update.stop();});
//]]>
</script></head><body class="gui" onload="reloadIt()"><div id="wrapper"><div id="content"><div id="header"><div id="logo"><h1>DD-WRT Control Panel</h1></div><div id="menu">
<div id="menuMain">
<ul id="menuMainList">
<li><a href="index.asp"><script type="text/javascript">Capture(bmenu.setup)</script></a></li>
<li><a href="Wireless_Basic.asp"><script type="text/javascript">Capture(bmenu.wireless)</script></a></li>
<li><a href="Services.asp"><script type="text/javascript">Capture(bmenu.services)</script></a></li>
<li><a href="Firewall.asp"><script type="text/javascript">Capture(bmenu.security)</script></a></li>
<li><a href="Filters.asp"><script type="text/javascript">Capture(bmenu.accrestriction)</script></a></li>
<li><a href="ForwardSpec.asp"><script type="text/javascript">Capture(bmenu.applications)</script></a></li>
<li><a href="Management.asp"><script type="text/javascript">Capture(bmenu.admin)</script></a></li>
<li class="current"><span><script type="text/javascript">Capture(bmenu.statu)</script></span>
<div id="menuSub">
<ul id="menuSubList">
<script type="text/javascript">
//<![CDATA[
 document.write("<a id=\"logout\" title=\"" + share.logout + "\" aria-label=\"" + share.logout + "\" href=\"dologout.asp\">");
//]]>
</script>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="logout" viewBox="0 0 16 16">
<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"></path>
<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path></svg></a><li><a href="Status_Router.asp"><script type="text/javascript">Capture(bmenu.statuRouter)</script></a></li>
<li><span><script type="text/javascript">Capture(bmenu.statuInet)</script></span></li>
<li><a href="Status_Lan.asp"><script type="text/javascript">Capture(bmenu.statuLAN)</script></a></li>
<li><a href="Status_Wireless.asp"><script type="text/javascript">Capture(bmenu.statuWLAN)</script></a></li>
<li><a href="Status_Bandwidth.asp"><script type="text/javascript">Capture(bmenu.statuBand)</script></a></li>
<li><a href="Info.htm"><script type="text/javascript">Capture(bmenu.statuSysInfo)</script></a></li>
</ul>
</div>
</li>
</ul>
</div>
</div>
</div><div id="main"><div id="contents"><form name="status" action="http://192.168.1.1/apply.cgi" method="post"><input type="hidden" name="submit_button" value="Status_Internet" /><input type="hidden" name="action" value="Apply" /><input type="hidden" name="change_action" /><input type="hidden" name="submit_type" /><h2><script type="text/javascript">Capture(status_inet.h11)</script></h2><fieldset><legend><script type="text/javascript">Capture(status_inet.conft)</script></legend><div class="setting" id="wan_showdisabled"><div class="label"><script type="text/javascript">Capture(idx.conn_type)</script></div><script type="text/javascript">Capture(share.disabled)</script></div><div id="wan_show" style="display:none"><div class="setting"><div class="label"><script type="text/javascript">Capture(idx.conn_type)</script></div><script type="text/javascript">Capture(share.disabled)</script>&nbsp;</div><div id="wan_info" style="display:none"><div class="setting" id="wan_connection"><div class="label"><script type="text/javascript">Capture(status_inet.www_loginstatus)</script></div><script type="text/javascript">
//<![CDATA[
document.write("<span id=\"wan_status\">" + "&nbsp;" + "&nbsp;<input class=\"button\" type=\"button\" value=\"" + dummy + "\" onclick=\"connect(this.form, 'dummy_disabled');\"></span>");
//]]>
</script></div><div class="setting" id="wan_signal"><div class="label"><script type="text/javascript">Capture(status_inet.sig_status)</script></div><span id="wan_3g_signal">n.A.</span></div><div class="setting" id="wan_acname"><div class="label"><script type="text/javascript">Capture(status_inet.acname)</script></div><span id="pppoe_ac_name"></span>&nbsp;</div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.wanuptime)</script></div><span id="wan_uptime"></span>&nbsp;</div><div class="setting" id="ipv6"><div class="label"><script type="text/javascript">Capture(share.ipv6)</script></div><span id="wan_ipv6addr"><script type="text/javascript">Capture(share.disabled)</script></span>&nbsp;</div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.ipv4)</script></div><span id="wan_ipaddr"><script type="text/javascript">Capture(share.disabled)</script></span>&nbsp;</div><div class="setting"><div class="label"><script type="text/javascript">Capture(share.gateway)</script></div><span id="wan_gateway">0.0.0.0</span>&nbsp;</div><div id="wan_dhcp"><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.leasetime)</script></div><span id="dhcp_remaining"></span>&nbsp;</div><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.dhcprel + "\" onclick=\"DHCPAction(this.form,'release');\">");document.write("<input class=\"button\" type=\"button\" value=\"" + sbutton.dhcpren + "\" onclick=\"DHCPAction(this.form,'renew');\">");
//]]>
</script></div></div></div></div></fieldset><br /><h2><script type="text/javascript">Capture(status_inet.speed)</script></h2><fieldset><legend><script type="text/javascript">Capture(status_inet.speedtest)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.test)</script></div><script>
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" value=\"" + status_inet.test +"\" onclick=\"speedtest(this.form);\">");
//]]>
</script></div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.sponsor)</script></div><span id="speed_sponsor">&nbsp;</span></div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.town)</script></div><span id="speed_town">&nbsp;</span></div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.country)</script></div><span id="speed_country">&nbsp;</span></div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.latency)</script></div><span id="speed_latency">0</span>&nbsp;ms</div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.down)</script></div><span id="speed_down">0</span>&nbsp;Mbit/s</div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.up)</script></div><span id="speed_up">0</span>&nbsp;Mbit/s</div></fieldset><div id="wan_showtraff" style="display:none"><h2><script type="text/javascript">Capture(status_inet.traff)</script> </h2><fieldset><legend><script type="text/javascript">Capture(status_inet.traff_tot)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.traffin)</script></div><span id="ttraff_in">0</span>&nbsp;MiB</div><div class="setting"><div class="label"><script type="text/javascript">Capture(status_inet.traffout)</script></div><span id="ttraff_out">3</span>&nbsp;MiB</div></fieldset><br /><fieldset class="center"><legend><script type="text/javascript">Capture(status_inet.traff_mon)</script></legend><script type="text/javascript">
//<![CDATA[
document.write("<iframe id=\"graph\" src=\"" + load_file(count) + "\" title=\"" + service.ttraff_legend + "\" width=\"560\" height=\"370\" frameborder=\"0\" type=\"text/html\"></iframe>");
//]]>
</script><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" value=\"" + status_inet.previous + "\" onclick=\"do_show_prev();\">");document.write("<input class=\"button\" type=\"button\" value=\"" + status_inet.next + "\" onclick=\"do_show_next();\">");
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(status_inet.dataadmin)</script></legend><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"backup_button\" value=\"" + sbutton.backup + "\" onclick=\"window.location.href='/traffdata.bak';\" />");document.write("<input class=\"button\" type=\"button\" name=\"restore_button\" value=\"" + sbutton.restore + "\" onclick=\"openWindow('Traff_admin.asp', 600, 180);\" />");document.write("<input class=\"button\" type=\"button\" name=\"delete_button\" value=\"" + sbutton.del + "\" onclick=\"ttraff_remove_submit(this.form);\" />");
//]]>
</script></fieldset><br /></div><div class="submitFooter nostick"><script type="text/javascript">
//<![CDATA[
var autoref = sbutton.autorefresh;submitFooterButton(0,0,0,autoref);
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><dt class="term"><script type="text/javascript">Capture(status_inet.conft)</script>: </dt><dd class="definition"><script type="text/javascript">Capture(hstatus_inet.right2)</script></dd><dt class="term"><script type="text/javascript">Capture(status_inet.traff_tot)</script>: </dt><dd class="definition"><script type="text/javascript">Capture(hstatus_inet.right4)</script></dd><dt class="term"><script type="text/javascript">Capture(status_inet.traff_mon)</script>: </dt><dd class="definition"><script type="text/javascript">Capture(hstatus_inet.right6)</script></dd></dl><br /><a href="javascript:openHelpWindow('HStatusWan.asp');"><script type="text/javascript">Capture(share.more)</script></a></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:39 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>