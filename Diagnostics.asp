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
<title>DD-WRT (build 65498) - Diagnostics and Commands</title>
<script type="text/javascript">history.pushState({urlPath:'Diagnostics.asp'}, "DD-WRT (build 65498) - Diagnostics and Commands", 'Diagnostics.asp')
</script><script type="text/javascript">
//<![CDATA[
function to_submit(F, I) {if(!valid(F, I)) return;F.submit_type.value = I;var applytype=0;if (I == "start") {F.ping.value = sbutton.cmd;applytype=1;}else {if (I == "startup") {F.startup.value = sbutton.saving;}if (I == "shutdown") {F.shutdown.value = sbutton.saving;}if (I == "firewall") {F.firewall.value = sbutton.saving;}if (I == "custom") {F.custom.value = sbutton.saving;}if (I == "usb") {F.usb.value = sbutton.saving;}}if (applytype) {applytake(F);}else {apply(F);}}function valid(F,I) {if(I == "start" && F.ping_ip.value == ""){alert(errmsg.err12);F.ping_ip.focus();return false;}return true;}var update;addEvent(window, "load", function() {stickControl(1);update = new StatusbarUpdate();update.start();});addEvent(window, "unload", function() {update.stop();});
//]]>
</script></head><body class="gui"><div id="wrapper"><div id="content"><div id="header"><div id="logo"><h1>DD-WRT Control Panel</h1></div><div id="menu">
<div id="menuMain">
<ul id="menuMainList">
<li><a href="index.asp"><script type="text/javascript">Capture(bmenu.setup)</script></a></li>
<li><a href="Wireless_Basic.asp"><script type="text/javascript">Capture(bmenu.wireless)</script></a></li>
<li><a href="Services.asp"><script type="text/javascript">Capture(bmenu.services)</script></a></li>
<li><a href="Firewall.asp"><script type="text/javascript">Capture(bmenu.security)</script></a></li>
<li><a href="Filters.asp"><script type="text/javascript">Capture(bmenu.accrestriction)</script></a></li>
<li><a href="ForwardSpec.asp"><script type="text/javascript">Capture(bmenu.applications)</script></a></li>
<li class="current"><span><script type="text/javascript">Capture(bmenu.admin)</script></span>
<div id="menuSub">
<ul id="menuSubList">
<script type="text/javascript">
//<![CDATA[
 document.write("<a id=\"logout\" title=\"" + share.logout + "\" aria-label=\"" + share.logout + "\" href=\"dologout.asp\">");
//]]>
</script>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="logout" viewBox="0 0 16 16">
<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"></path>
<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path></svg></a><li><a href="Management.asp"><script type="text/javascript">Capture(bmenu.adminManagement)</script></a></li>
<li><a href="Alive.asp"><script type="text/javascript">Capture(bmenu.adminAlive)</script></a></li>
<li><a href="Sysctl.asp"><script type="text/javascript">Capture(bmenu.adminSysctl)</script></a></li>
<li><span><script type="text/javascript">Capture(bmenu.adminDiag)</script></span></li>
<li><a href="Wol.asp"><script type="text/javascript">Capture(bmenu.adminWol)</script></a></li>
<li><a href="Factory_Defaults.asp"><script type="text/javascript">Capture(bmenu.adminFactory)</script></a></li>
<li><a href="Upgrade.asp"><script type="text/javascript">Capture(bmenu.adminUpgrade)</script></a></li>
<li><a href="config.asp"><script type="text/javascript">Capture(bmenu.adminBackup)</script></a></li>
</ul>
</div>
</li>
<li><a href="Status_Router.asp"><script type="text/javascript">Capture(bmenu.statu)</script></a></li>
</ul>
</div>
</div>
</div><div id="main"><div id="contents"><form name="ping" action="http://192.168.1.1/apply.cgi" method="post" spellcheck="false"><input type="hidden" name="submit_button" value="Diagnostics" /><input type="hidden" name="action" value="Apply" /><input type="hidden" name="submit_type" /><input type="hidden" name="change_action" value="gozila_cgi" /><h2><script type="text/javascript">Capture(diag.h2)</script></h2><fieldset><legend><script type="text/javascript">Capture(diag.legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(diag.cmd)</script></div><textarea id="ping_ip" name="ping_ip" rows="6" cols="80" style="font-family: Courier, 'Courier New', monospace" wrap="off"></textarea></div><script type="text/javascript">
//<![CDATA[
var table = new Array();var h = Math.floor(windo.getWindoSize().height * 0.4);if(table.length > 0) {document.write("<div class=\"pre_label\">" + diag.output + "</div>");document.write("<pre style=\"height:" + ((h > 200) ? h : 200) + "px;\">" + table.join("\n") + "</pre>");}
//]]>
</script></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(diag.startup)</script></legend><pre id="startup"></pre><br /><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"button_start\" value=\"" + sbutton.cptotext + "\" onclick=\"this.form.ping_ip.value = document.getElementById('startup').firstChild.data\" />")
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(diag.shutdown)</script></legend><pre id="shutdown"></pre><br /><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"button_shutdown\" value=\"" + sbutton.cptotext + "\" onclick=\"this.form.ping_ip.value = document.getElementById('shutdown').firstChild.data\" />")
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(diag.firewall)</script></legend><pre id="firewall"></pre><br /><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"button_firewall\" value=\"" + sbutton.cptotext + "\" onclick=\"this.form.ping_ip.value = document.getElementById('firewall').firstChild.data\" />")
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(diag.usb)</script></legend><pre id="usb"></pre><br /><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"button_usb\" value=\"" + sbutton.cptotext + "\" onclick=\"this.form.ping_ip.value = document.getElementById('usb').firstChild.data\" />")
//]]>
</script></div></fieldset><br /><fieldset><legend><script type="text/javascript">Capture(diag.custom)</script></legend><pre id="custom"></pre><br /><div class="center"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"button_custom\" value=\"" + sbutton.cptotext + "\" onclick=\"this.form.ping_ip.value = document.getElementById('custom').firstChild.data\" />")
//]]>
</script></div></fieldset><br /><div id="footer" class="submitFooter"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button green_btn\" type=\"button\" name=\"ping\" value=\"" + sbutton.runcmd + "\" onclick=\"to_submit(this.form, 'start');\" />");document.write("<input class=\"button\" type=\"button\" name=\"startup\" value=\"" + sbutton.startup + "\" onclick=\"to_submit(this.form, 'startup');\" />");document.write("<input class=\"button\" type=\"button\" name=\"shutdown\" value=\"" + sbutton.shutdown + "\" onclick=\"to_submit(this.form, 'shutdown');\" />");document.write("<input class=\"button\" type=\"button\" name=\"firewall\" value=\"" + sbutton.firewall + "\" onclick=\"to_submit(this.form, 'firewall');\" />");document.write("<input class=\"button\" type=\"button\" name=\"usb\" value=\"" + sbutton.usb + "\" onclick=\"to_submit(this.form, 'usb');\" />");document.write("<input class=\"button\" type=\"button\" name=\"custom\" value=\"" + sbutton.custom + "\" onclick=\"to_submit(this.form, 'custom');\" />");
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><dt class="term"><script type="text/javascript">Capture(diag.cmd)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hdiag.right2)</script></dd></dl><br /><a href="javascript:openHelpWindow('HDiagnostics.asp');"><script type="text/javascript">Capture(share.more)</script></a></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:38 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>