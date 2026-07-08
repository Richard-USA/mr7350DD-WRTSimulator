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
<title>DD-WRT (build 65498) - MAC Address Clone</title>
<script type="text/javascript">history.pushState({urlPath:'WanMAC.asp'}, "DD-WRT (build 65498) - MAC Address Clone", 'WanMAC.asp')
</script><script type="text/javascript">
//<![CDATA[
function to_submit(F) {F.submit_type.value = "";F.change_action.value = "";F.save_button.value = sbutton.saving;apply(F);}function to_apply(F) {F.submit_type.value = "";F.change_action.value = "";F.apply_button.value = sbutton.applied;applytake(F);}function CloneMAC(F) {F.change_action.value="gozila_cgi";F.submit_type.value = "clone_mac";F.submit();}function SelMac(val) {show_layer_ext(document.mac.mac_clone_enable,'idmac', val == "1");setElementsActive("def_hwaddr", "def_whwaddr_5", val == "1");}var update;addEvent(window, "load", function() {SelMac("0");update = new StatusbarUpdate();update.start();});addEvent(window, "unload", function() {update.stop();});
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
<li><a href="IPV6.asp"><script type="text/javascript">Capture(bmenu.setupipv6)</script></a></li>
<li><a href="DDNS.asp"><script type="text/javascript">Capture(bmenu.setupddns)</script></a></li>
<li><span><script type="text/javascript">Capture(bmenu.setupmacclone)</script></span></li>
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
</div><div id="main"><div id="contents"><form name="mac" action="http://192.168.1.1/apply.cgi" method="post"><input type="hidden" name="submit_button" value="WanMAC" /><input type="hidden" name="action" value="Apply"/><input type="hidden" name="change_action"/><input type="hidden" name="submit_type" /><h2><script type="text/javascript">Capture(wanmac.h2)</script></h2><fieldset><legend><script type="text/javascript">Capture(wanmac.legend)</script></legend><div class="setting"><div class="label"><script type="text/javascript">Capture(wanmac.wan)</script></div><input class="spaceradio" type="radio" value="1" name="mac_clone_enable" onclick="SelMac(this.value)"  /><script type="text/javascript">Capture(share.enable)</script>&nbsp;<input class="spaceradio" type="radio" value="0" name="mac_clone_enable" onclick="SelMac(this.value)" checked="checked" /><script type="text/javascript">Capture(share.disable)</script></div><div id="idmac"><div class="setting"><span class="padding-left"><script type="text/javascript">
//<![CDATA[
document.write("<input class=\"button\" type=\"button\" name=\"clone_b\" value=\"" + sbutton.wanmac + "\" onclick=\"CloneMAC(this.form);\" />");
//]]>
</script>&nbsp;</span><input type="hidden" name="def_hwaddr" value="6" /><input class="num" size="2" maxlength="2" name="def_hwaddr_0" onblur="valid_mac(this,0)" value="E8" />:<input class="num" size="2" maxlength="2" name="def_hwaddr_1" onblur="valid_mac(this,1)" value="9F" />:<input class="num" size="2" maxlength="2" name="def_hwaddr_2" onblur="valid_mac(this,1)" value="80" />:<input class="num" size="2" maxlength="2" name="def_hwaddr_3" onblur="valid_mac(this,1)" value="78" />:<input class="num" size="2" maxlength="2" name="def_hwaddr_4" onblur="valid_mac(this,1)" value="55" />:<input class="num" size="2" maxlength="2" name="def_hwaddr_5" onblur="valid_mac(this,1)" value="18" /></div><!-- disable this as its buggy/doesnt work use Networking tab to modify wireless interfaces MAC<hr width="90%" /><br /><div class="setting"><div class="label"><script type="text/javascript">Capture(wanmac.wlan)</script></div><input type="hidden" name="def_whwaddr" value="6" /><input class="num" size="2" maxlength="2" name="def_whwaddr_0" onblur="valid_mac(this,0)" value="E8" />:<input class="num" size="2" maxlength="2" name="def_whwaddr_1" onblur="valid_mac(this,1)" value="9F" />:<input class="num" size="2" maxlength="2" name="def_whwaddr_2" onblur="valid_mac(this,1)" value="80" />:<input class="num" size="2" maxlength="2" name="def_whwaddr_3" onblur="valid_mac(this,1)" value="78" />:<input class="num" size="2" maxlength="2" name="def_whwaddr_4" onblur="valid_mac(this,1)" value="55" />:<input class="num" size="2" maxlength="2" name="def_whwaddr_5" onblur="valid_mac(this,1)" value="19" /></div> --></div></fieldset><br /><div id="footer" class="submitFooter"><script type="text/javascript">
//<![CDATA[
submitFooterButton(1,1);
//]]>
</script></div></form></div></div><div id="helpContainer"><div id="help"><h2><script type="text/javascript">Capture(share.help)</script></h2><dl><dt class="term"><script type="text/javascript">Capture(wanmac.legend)</script>:</dt><dd class="definition"><script type="text/javascript">Capture(hwanmac.right2)</script></dd></dl><br /><a href="javascript:openHelpWindow('HWanMAC.asp');"><script type="text/javascript">Capture(share.more)</script></a></div></div><div id="floatKiller"></div><div id="statusInfo"><div class="info"><script type="text/javascript">Capture(share.firmware)</script>:&nbsp;<script type="text/javascript">
//<![CDATA[
document.write("<a title=\"" + share.about + "\" href=\"javascript:openAboutWindow()\">DD-WRT v3.0-r65498 std (07/02/26)</a>");
//]]>
</script></div><div class="info"><script type="text/javascript">Capture(share.time)</script>:  <span id="uptime"> 01:09:36 up 9 min,  load average: 0.00, 0.01, 0.00</span></div><div class="info">WAN<span id="ipinfo">: Disabled</span></div></div></div></div></body></html>