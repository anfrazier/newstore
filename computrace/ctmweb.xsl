<?xml version="1.0" 
?><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
>
<xsl:template match="/" 
>
<xsl:apply-templates 
/></xsl:template 
>
<xsl:template match="/ctmagent" 
>
<xsl:apply-templates 
/></xsl:template 
>


















<xsl:template match="ctmagent[@status='Intro']">
<html>
	<head>
		<title>Welcome To Computrace</title>
		<script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Manage_onclick()
{
    GFrm().HiddenNext.value="Password";
    GFrm().HiddenPressedButton.value="Manage=Manage";
    GFrm().submit();
}

function Install_onclick()
{
    GFrm().HiddenNext.value="Inst1";
    GFrm().HiddenPressedButton.value="Install=Install";
    GFrm().submit();
}

function Cancel_onclick()
{
    GFrm().HiddenNext.value="Cancel";
    GFrm().HiddenPressedButton.value="Cancel=Cancel";
    GFrm().submit();
}
function preload()
{
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("tIntro").style.visibility = "visible";
	}
	else
	{
		//document.all["ctinstall"].innerHTML = " ";
		//document.all["ctintro"].innerHTML = " ";
		GFrm().HiddenNext.value="Password";
		GFrm().HiddenPressedButton.value="Manage=Manage";
		GFrm().submit();
	}
}

		</script>
	</head>
	<body onload="javascript:preload();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
		<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
		<noscript>

Warning: Parts of this page require the use of scripts, which your browser does not currently allow.
<p>
			</p>
To enable script in Internet Explorer 5.01 or later
<p>
			</p>
On the <b>Tools menu</b>, select <b>Internet Options</b>. 
<p>
			</p>
Under the <b>Security</b> tab, click the <b>Local Intranet</b> content zone. 
<p>
			</p>
Do one of the following: 
<p>
			</p>
To use the default security setting (<b>Medium</b>), which allows script, click <b>Default 
				Level</b>. 
<p>
			</p>
To turn on script without changing other security settings, click <b>Custom Level</b>. In the Settings list, scroll down to <b>Active 
				scripting</b> and click <b>Enable</b>. 
<p>
			</p>
To enable script in other browsers
<p>
			</p>
Consult the documentation for your browser for steps to enable script.
<p>
			</p>
</noscript>
		<table id="tIntro" style="visibility=hidden" width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td style="background-color: #CCCCCC;	color: #333333;	font-size: 12px;font-weight:bold;"
					colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
			</tr>
			<tr>
				<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding: 2px 5px 2px 5px; "></td>
				<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding: 2px 5px 2px 5px; "><table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td style="	background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"></td>
							<td align="right" style="	background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
				<td align="center"><form name="Manage" method="post" action="ctmweb.xml" id="Manage" language="javascript">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr align="center">
								<td colspan="2" style="font-size:12px "><br />
									<img src="logo_computrace.gif" alt="computrace" width="250" height="54" /><br />
									<br />
									Welcome to Computrace (R) 8.01<br />
									Copyright of Absolute Software Corporation<br />
									<a href="http://www.absolute.com" target="_blank">http://www.absolute.com</a><br />
									<br />
									Click <b>Install</b> to begin Computrace installation.<br />
									Click <b>Manage</b> to access Computrace Manager.<br />
									<br />
								</td>
							</tr>
							<tr>
								<td align="right" width="50%"><input id="Install" type="submit" value="Install" name="Install" onclick="return Install_onclick()" /><img src="spacer.gif" alt=" " width="5" height="1" /></td>
								<td align="left" width="50%"><input id="Manage" type="submit" value="Manage" name="Manage" onclick="return Manage_onclick()" /></td>
							</tr>
							<tr>
								<td colspan="2"><input id="HiddenNext" type="hidden" value="Intro" name="HiddenNext" />
									<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL" />
									<input id="HiddenPrev" type="hidden" value="Intro" name="HiddenPrev" /> <input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL" />
									<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit" /> <input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL" />
									<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton" /></td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<td style="	background-color : #CCCCCC;	color : #333333;	font-size: 12px;	font-weight:bold; "
					colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
			</tr>
		</table>
	</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Password']">
<html>
<head>
<title>Password</title>

<script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Cancel_onclick()
{
    GFrm().HiddenNext.value="Cancel";
    GFrm().HiddenPressedButton.value="Cancel=Cancel";
    GFrm().submit();
}

function Next_onclick()
{
  if (GFrm().Password.value == "") 
  { 
      alert ("Please enter password"); 
      GFrm().Password.focus();
  }
  else
  {
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Next=Next";
    GFrm().submit();
  }
}
function Back_onclick()
{
    GFrm().HiddenNext.value="Intro";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();
}

function focusFirstItem()
{
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("Back").style.visibility = "visible";
	}
// This will only work IF we have
// an element to focus on
if ( document.forms[0] )
document.forms[0].elements[0].focus();
}
function validateform() 
{
  var frm = GFrm();
  if (frm.Password.value == "") 
  { 
      alert ("Please enter password"); 
      GFrm().HiddenNext.value="Password";
      GFrm().HiddenNextXSL.value="ctmweb.xsl";
      GFrm().HiddenPressedButton.value="Manage=Manage";

      frm.PassConf.focus();
      return false;
  }
  return true;
}

</script>
</head>
<body onLoad="javascript:focusFirstItem();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td style="background-color: #CCCCCC;	color: #333333;	font-size: 12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
	</tr>
	<tr>
		<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding: 2px 5px 2px 5px; "></td>
		<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding: 2px 5px 2px 5px; "><table width="100%"  border="0" cellspacing="0" cellpadding="0">
    	<tr>
    		<td style="	background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"></td>
    		<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a></td>
			</tr>
    </table></td>
	</tr>
	<tr>
	
	<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
	<td align="center"><form name="Manage" method="post" action="ctmweb.xml" id="Manage" language="javascript">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr align="center">
					<td colspan="2" style="font-size:12px"><img src="logo_computrace.gif" alt="computrace" width="250" height="54" /><br />
						<div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size:11px;color:#CC0000;"><xsl:value-of select="GUIMessage1"/></div><br />Please enter your password<br /><input name="Password"  type="password" id="Password" size="28" maxlength="15"/>
						<br /><br /></td>
				</tr>
				<tr>
					<td align="right"><input id="Back" style="visibility=hidden" type="button" value="Back" name="Back" onclick="return Back_onclick()"/></td>
					<td><img src="spacer.gif" alt=" " width="5" />
						<input id="Next" type="button" value="Next" name="Next" onclick="return Next_onclick()"/>
					  <img src="spacer.gif" alt=" " width="5" />
					  <input id="Cancel" type="button" value="Cancel" name="Cancel" onclick="return Cancel_onclick()"/></td>
				</tr>
				<tr>
					<td colspan="2"><input id="HiddenNext" type="hidden" value="Status" name="HiddenNext"/>
	<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
	<input id="HiddenPrev" type="hidden" value="Password" name="HiddenPrev"/>
	<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
	<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
	<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
	<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/></td>
				</tr>
			</table>
		</form></td>
	</tr>
	<tr>
		<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
	</tr>
</table>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Status']">
<html>
<head>
<title>Computrace Status</title>
<meta name="vs_defaultClientScript" content="JavaScript"/>
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
<script language="JavaScript" type="text/javascript">
var flrf = 1;
function Unload()
{
   if (flrf == 1)
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }
   
    return Fff;
}
function DoChk(a,b)
{
    if (a)
       a.checked = b;
}

function Rc() {
        var s;
        var s2;
        s = &quot;<xsl:value-of select="SntlSettings/ESN"/>&quot;;
        s2 = &quot;<xsl:value-of select="SntlDataseg/OemCTID"/>&quot;;
        GFrm().ESN.value=s+s2;

        s = &quot;<xsl:value-of select="SntlSettings/wVersionNumber"/>&quot;;
        GFrm().CTMVersion.value=s;
        s = &quot;<xsl:value-of select="SntlSettings/wCurrentVersion"/>&quot;;
        GFrm().CTMBuild.value=s;

        s = &quot;<xsl:value-of select="Modem_Call_Status"/>&quot;;

        if (s == 'SNTL_STATE_ACTIVE')
        {
            GFrm().AgentMode.value="Active";

        }
        else if (s == 'SNTL_STATE_ALERT' || s == 'SNTL_STATE_CALLING' || s == 'SNTL_STATE_CONNECT')
        {
            GFrm().AgentMode.value="Active";
        }
        else
        {
            GFrm().AgentMode.value="Call support";

//            DoChk(GFrm().RadioReq,true);
        }

        s = &quot;<xsl:value-of select="CommandLine"/>&quot;;
        s = &quot;<xsl:value-of select="SntlSettings/next_call_date"/>&quot;;
        GFrm().NextCallDateModem.value=s;
        s = &quot;<xsl:value-of select="SntlSettings/last_call_date"/>&quot;;
        if (s == 'Init')
        {
           s = 'No last call';
        }
        GFrm().LastCallDateModem.value=s;
        s = &quot;<xsl:value-of select="SntlDataseg/next_call_dateIp"/>&quot;;
        GFrm().NextCallDateIP.value=s;
        s = &quot;<xsl:value-of select="SntlDataseg/last_call_dateIp"/>&quot;;
        GFrm().LastCallDateIP.value=s;

        flrf =1;
        setTimeout('RefreshPage()',10000);
}
 function RefreshPage() {
   flrf = 0;
   //s = 'ctmweb.xml?Status=Status';
   //window.location.href= s;
   GFrm().submit();
 }
function Status_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Status=Status";
    setTimeout('RefreshPage()',1);
}

function Test_onclick()
{
    GFrm().HiddenNext.value="Test";
    GFrm().HiddenPressedButton.value="Test=Test";
    setTimeout('RefreshPage()',1);
}
function Options_onclick()
{
    GFrm().HiddenNext.value="Options";
    GFrm().HiddenPressedButton.value="Option=Option";
    setTimeout('RefreshPage()',1);
}
function Remove_onclick()
{
    GFrm().HiddenNext.value="Remove";
    GFrm().HiddenPressedButton.value="Remove=Remove";
    setTimeout('RefreshPage()',1);
}
function About_onclick()
{
    GFrm().HiddenNext.value="About";
    GFrm().HiddenPressedButton.value="About=About";
    setTimeout('RefreshPage()',1);
}
function preload()
{
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("ctinstall").innerHTML = "REMOVE";
		GetElmnt("ctinstall2").innerHTML = "|";
	}
}

        </script>
</head>
<body onload="javascript:preload();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Manage" language="javascript">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:Black;"></td>
			<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><table border="0" cellspacing="0" cellpadding="3" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;">
								<tr id="tStatus">
									<td style="background-color:White;color:#ff6600;"><a href="ctmweb.xml" onclick="return Status_onclick();" style="color:#ff6600; text-decoration:none;">STATUS</a></td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Test_onclick();">TEST CALL</a> </td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Options_onclick();">OPTIONS</a></td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Remove_onclick();"><span id="ctinstall"></span></a></td>
									<td><span id="ctinstall2"></span></td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return About_onclick();">ABOUT</a></td>
								</tr>
							</table></td>
						<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr align="center">
						<td><table border="0" cellspacing="5" style="font-size:12px">
								<tr align="center">
                	<td colspan="2" nowrap="nowrap" style="font-size:14px"><b>Agent Status<br /><br /></b></td>
             	  </tr>
								<tr>
									<td align="left" nowrap="nowrap">CTMWeb Build #</td>
								<td align="left" nowrap="nowrap"><input name="CTMBuild" type="text" size="40" readOnly="true"/></td>
								</tr>
								<tr>
									<td align="left" nowrap="nowrap">Agent build #</td>
								<td align="left" nowrap="nowrap"><input name="CTMVersion" type="text" size="40" readOnly="true"/></td>
								</tr>
								<tr>
									<td colspan="2" align="left" nowrap="nowrap"></td>
								</tr>
								<tr>
									<td align="left" nowrap="nowrap">Agent mode:</td>
									<td align="left" nowrap="nowrap"><input name="AgentMode" type="text" value="" size="40" readOnly="true"/></td>
								</tr>
								<tr>
                	<td align="left" nowrap="nowrap">ESN </td>
                	<td align="left" nowrap="nowrap"><input name="ESN" type="text" size="40" readOnly="true"/></td>
								</tr>
								<tr>
									<td align="left" nowrap="nowrap">Last IP call Date/Time:
										</td>
								<td align="left" nowrap="nowrap"><input name="LastCallDateIP" type="text" size="40" readOnly="true"/></td>
								</tr>
								<tr>
                	<td align="left" nowrap="nowrap">Next IP call Date/Time: </td>
                	<td align="left" nowrap="nowrap"><input name="NextCallDateIP" type="text" size="40" readOnly="true"/></td>
								</tr>
								<tr>
                	<td align="left" nowrap="nowrap">Last Modem call Date/Time: </td>
                	<td align="left" nowrap="nowrap"><input name="LastCallDateModem" type="text" value="new field" size="40" ID="Text1" readOnly="true"/></td>
								</tr>
								<tr>
                	<td align="left" nowrap="nowrap">Next Modem call Date/Time: </td>
                	<td align="left" nowrap="nowrap"><input name="NextCallDateModem" type="text" value="new field" size="40" ID="Text2" readOnly="true"/></td>
								</tr>
								<tr align="right">
									<td colspan="2" nowrap="nowrap"><input name="Cancel" type="submit" id="Cancel" value="Close" /></td>
								</tr>
							</table>
							<input type="hidden" value="Status" name="HiddenNext"/>
							<input type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
							<input type="hidden" value="Status" name="HiddenPrev"/>
							<input type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
							<input type="hidden" value="Cancel" name="HiddenExit"/>
							<input type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
							<input type="hidden" value="none" name="HiddenPressedButton"/>
						<br /> </td>
					</tr>
			</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
<script language="JavaScript" type="text/javascript">
Rc();
</script>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Test']">
<html>
<head>
<title>Test Call</title>
<script language="JavaScript" type="text/javascript">
var flrf =1;
function Unload()
{
   if (flrf == 1)
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

var szModem_Call_Status;
szModem_Call_Status = &quot;<xsl:value-of select="Modem_Call_Status"/>&quot;;
szCallSuccessfull = &quot;<xsl:value-of select="CallSuccessfull"/>&quot;;
var szDataLink;
szDataLink = &quot;<xsl:value-of select="DataLink"/>&quot;;
var szAppState;
szAppState = &quot;<xsl:value-of select="AppState"/>&quot;;
var szIpMode;
szIpMode = &quot;<xsl:value-of select="IpMode"/>&quot;;
var iFlag;
iFlag = 0;
if ((navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
{
   if (szModem_Call_Status == 'SNTL_STATE_ACTIVE')
      iFlag = 1;
   else
   {
      iFlag = 0;
      szDataLink = 'DL_WTCONNECT';
   }
}
else
{
   if (szDataLink == 'DL_IDLE')
      iFlag = 1;
   else
      iFlag = 0;

}
if (iFlag == 1)
{
   szModem_Call_Status = 'Passive.';
   if (szCallSuccessfull == '1')
      szModem_Call_Status = szModem_Call_Status + ' (Last call successful)';
   else
      szModem_Call_Status = szModem_Call_Status + ' (Last call failed)';
}
else
{
   if (szIpMode == '00')    // this will be Modem calls
   {
      if (szDataLink == 'DL_MDMSRCH')
         szModem_Call_Status = 'Looking for a modem';
      else if (szDataLink == 'DL_MDMINIT')
         szModem_Call_Status = 'Initialize Modem';
      else if (szDataLink == 'DL_MDMDL')
         szModem_Call_Status = 'Dialing. . .';
      else if (szDataLink == 'DL_WTCONNECT')
         szModem_Call_Status = 'Session';
      else if (szDataLink == 'DL_SESSION')
         szModem_Call_Status = 'Closing Session';
      else if (szDataLink == 'DL_SENDPACKET')
         szModem_Call_Status = 'Closing Session';
      else if (szDataLink == 'DL_HANGUP')
         szModem_Call_Status = 'Closing Session';
      else if (szDataLink == 'DL_CLOSEPORT')
         szModem_Call_Status = 'Closing Session';
      else
         szModem_Call_Status = szDataLink;
   }
   else  // this will be IP call
   {
      if (szDataLink == 'DL_OPENIPCONNECTION')
         szModem_Call_Status = 'Open connection';
      else if (szDataLink == 'DL_WTCONNECT')
         szModem_Call_Status = 'Session';
      else if (szDataLink == 'DL_IPSESSION')
         szModem_Call_Status = 'Session';
      else if (szDataLink == 'DL_SENDIPPACKET')
         szModem_Call_Status = 'Session';
      else if (szDataLink == 'DL_CLOSEIP')
         szModem_Call_Status = 'Closing connection';
      else if (szDataLink == 'DL_DNSSESSION')
         szModem_Call_Status = 'Resolving DNS';
      else if (szDataLink == 'DL_MDMDL')
         szModem_Call_Status = 'Connecting...';
      else
         szModem_Call_Status = szDataLink;
   }
}
var szDirectPort;
szDirectPort = &quot;<xsl:value-of select="DirectPort"/>&quot;;
var szDirectIrq;
szDirectIrq = &quot;<xsl:value-of select="DirectIRQ"/>&quot;;
var szCommPort;
szCommPort = &quot;<xsl:value-of select="CommPort"/>&quot;;
var szFriendlyName;
szFriendlyName = &quot;<xsl:value-of select="FriendlyName"/>&quot;;
function Rc()
{
        flrf = 1;
//      s = &quot;<xsl:value-of select="Modem_Call_Status"/>&quot;;

        s = &quot;<xsl:value-of select="CommandLine"/>&quot;;
      
		//if (s.indexOf('RadioModem') != -1)
            //GFrm().RadioModem.checked =true;
        //else
            //GFrm().RadioIp.checked =true;

        s = &quot;<xsl:value-of select="Modem_Call_Status"/>&quot;;
		var sDL;
		sDL = &quot;<xsl:value-of select="DataLink"/>&quot;;
        if (iFlag == 1)
        {
            GFrm().StartAgent.disabled = false;
            GFrm().StopAgent.disabled = true;
            setTimeout('RefreshPage()',10000);
        }
        else
        {
            GFrm().StartAgent.disabled = true;
            GFrm().StopAgent.disabled = false;
            setTimeout('RefreshPage()',3000);
        }


}

function RefreshPage()
{
    flrf = 0;
  
	//if (GFrm().RadioModem.checked)
        //s = 'ctmweb.xml?Test=Test+=RadioModem';
    //else
		//s = 'ctmweb.xml?Test=Test+=RadioIp';


    //window.location.href= s;
    GFrm().submit();
}
function Status_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Status=Status";
    setTimeout('RefreshPage()',1);
}

function Test_onclick()
{
    GFrm().HiddenNext.value="Test";
    GFrm().HiddenPressedButton.value="Test=Test";
    setTimeout('RefreshPage()',1);
}
function Options_onclick()
{
    GFrm().HiddenNext.value="Options";
    GFrm().HiddenPressedButton.value="Option=Option";
    setTimeout('RefreshPage()',1);
}
function Remove_onclick()
{
    GFrm().HiddenNext.value="Remove";
    GFrm().HiddenPressedButton.value="Remove=Remove";
    setTimeout('RefreshPage()',1);
}
function About_onclick()
{
    GFrm().HiddenNext.value="About";
    GFrm().HiddenPressedButton.value="About=About";
    setTimeout('RefreshPage()',1);
}
function preload()
{
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("ctinstall").innerHTML = "REMOVE";
		GetElmnt("ctinstall2").innerHTML = "|";
	}
}

        </script>
</head>
<body onload="javascript:preload();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Form1">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:Black;"></td>
			<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><table border="0" cellspacing="0" cellpadding="3" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;">
								<tr id="tTest">
									<td><a href="#" onclick="return Status_onclick()" style="color:#99CCFF; text-decoration:none;">STATUS</a></td>
									<td>|</td>
									<td style="background-color:White;color:#ff6600;"><a href="#" style="color:#ff6600; text-decoration:none;" onclick="return Test_onclick()">TEST CALL</a> </td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return Options_onclick()">OPTIONS</a></td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Remove_onclick();"><span id="ctinstall"></span></a></td>
									<td><span id="ctinstall2"></span></td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return About_onclick()">ABOUT</a></td>
								</tr>
							</table></td>
						<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr align="center">
						<td><table width="500" border="0" cellpadding="0" cellspacing="5" style="font-size:12px">
							<tr align="center">
              	<td nowrap="nowrap" style="font-size:14px"><b>Test Call<br /><br /></b></td>
							</tr>
								<tr>
                					<td align="left" nowrap="nowrap">
                						<input id="RadioIp" type="hidden" value="RadioIp" checked="checked" name="RadioGroup"/>
									</td>
             					</tr>
								<tr>
									<td align="left" nowrap="nowrap"> Press "Start" to begin a test call</td>
								</tr>
								<tr>
									<td align="left" nowrap="nowrap"></td>
								</tr>
								<tr>
                	<td nowrap="nowrap"><hr /></td>
								</tr>								
								<tr>
                	<td align="left" nowrap="nowrap">
									Call status: <font style="color:#CC0000;"><script language="javascript">document.write (szModem_Call_Status);</script>
									</font>
									</td>
               	</tr>
								<tr>
                	<td align="left" nowrap="nowrap"><hr /></td>
								</tr>
								<tr align="right">
									<td nowrap="nowrap">
									<input id="StartAgent" type="submit" value="Start" name="StartAgent"/>
									<img src="spacer.gif" alt=" " width="5" />
									<input id="StopAgent" type="submit" value="Stop" name="StopAgent"/>
									<img src="spacer.gif" alt=" " width="5" />
									<input name="Cancel" type="submit" id="Cancel" value="Close" /></td>
								</tr>
							</table>
							<input id="HiddenNext" type="hidden" value="Test" name="HiddenNext"/>
							<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
							<input id="HiddenPrev" type="hidden" value="Test" name="HiddenPrev"/>
							<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
							<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
							<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
							<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/>
						<br /> </td>
					</tr>
			</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>

        
</body>
<script language="JavaScript" type="text/javascript">
Rc();
</script>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Options']">
<html>
    <head>
        <title>Computrace Options</title>
        <script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

var szPBX0;
szPBX0 = &quot;<xsl:value-of select="SntlSettings/PREDIAL_PBX0"/>&quot;;
var s0;
s0 = &quot;<xsl:value-of select="SntlSettings/FirstReturnedDialStr"/>&quot;;

function Radio_onclick() {
    GFrm().Apply.disabled = false;
}
function CheckboxDisableModem_onclick() {
    GFrm().Apply.disabled = false;
}

function Rc()
{
    s = &quot;<xsl:value-of select="SntlSettings/InitString1"/>&quot;;
    s = &quot;<xsl:value-of select="SntlSettings/InitString2"/>&quot;;

    s = &quot;<xsl:value-of select="SntlDataseg/BootFromFloppy"/>&quot;;
    s = &quot;<xsl:value-of select="SntlDataseg/DirectPortAccess"/>&quot;;
//    if (s == '1')
//            GFrm().CheckboxDirectPort.checked =true;
//        else
//            GFrm().CheckboxDirectPort.checked =false;

//    s = &quot;<xsl:value-of select="SntlDataseg/AsyncDisable"/>&quot;;
//    if (s == '1')
//            GFrm().ModemCallout.checked =true;
//        else
//            GFrm().ModemCallout.checked =false;

//    s = &quot;<xsl:value-of select="SntlSettings/CustomPredial"/>&quot;;
//    GFrm().CustomPredial.value=s;

//    s = &quot;<xsl:value-of select="SntlSettings/FirstReturnedDialStr"/>&quot;;
//    if (s == '0')
//        GFrm().RadioDirectDial.checked =true;
//    if (s == '1')
//        GFrm().RadioPBX9.checked =true;
//    if (s == '2')
//        GFrm().RadioPBX8.checked =true;
//    if (s == '4')
//        GFrm().RadioCustom.checked =true;

    s = &quot;<xsl:value-of select="SntlDataseg/AuthProxyName"/>&quot;;
    GFrm().ProxyName.value=s;
    s = &quot;<xsl:value-of select="SntlDataseg/AuthProxyPassword"/>&quot;;
    GFrm().ProxyPass.value=s;


}
function RefreshPage() {
   GFrm().submit();
}

function Status_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Status=Status";
    setTimeout('RefreshPage()',1);
}

function Test_onclick()
{
    GFrm().HiddenNext.value="Test";
    GFrm().HiddenPressedButton.value="Test=Test";
    setTimeout('RefreshPage()',1);
}
function Options_onclick()
{
    GFrm().HiddenNext.value="Options";
    GFrm().HiddenPressedButton.value="Option=Option";
    setTimeout('RefreshPage()',1);
}
function Remove_onclick()
{
    GFrm().HiddenNext.value="Remove";
    GFrm().HiddenPressedButton.value="Remove=Remove";
    setTimeout('RefreshPage()',1);
}
function About_onclick()
{
    GFrm().HiddenNext.value="About";
    GFrm().HiddenPressedButton.value="About=About";
    setTimeout('RefreshPage()',1);
}
function validateform() {
	var frm = GFrm();
  if (frm.NewPass.value != frm.PassConf.value) { 
    alert ("Your confirmed password does not match the entered password"); 
		frm.PassConf.focus();
		return false;
	}
	if (frm.NewPass.value.indexOf(" ") > -1) {
		alert ("Please do not use spaces in the entered password");
		frm.NewPass.focus();
		return false;
	}
	return true;
	//frm.submit();
	//RefreshPage();
}
function focusFirstItem()
{
	if ((navigator.userAgent.indexOf('Mac OS X')>= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
	}
	else
	{
		document.all["MACPass"].innerHTML = " ";
	}
	
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("ctinstall").innerHTML = "REMOVE";
		GetElmnt("ctinstall2").innerHTML = "|";
		GetElmnt("chgpass").innerHTML="Change Agent Management Password:";
		GetElmnt("tPassword").style.visibility="visible";

	}

}
</script>
    </head>
<body onLoad="javascript:focusFirstItem();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Manage" onSubmit="return validateform(this);">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color:#CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:Black;"></td>
			<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><table border="0" cellspacing="0" cellpadding="3" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;">
								<tr id="tOptions">
									<td><a href="#" onclick="return Status_onclick()" style="color:#99CCFF; text-decoration:none;">STATUS</a></td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return Test_onclick()">TEST CALL</a> </td>
									<td>|</td>
									<td style="background-color:White;"><a href="#" style="color:#ff6600; text-decoration:none;" onclick="return Options_onclick()">OPTIONS</a></td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Remove_onclick();"><span id="ctinstall"></span></a></td>
									<td><span id="ctinstall2"></span></td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return About_onclick()">ABOUT</a></td>
								</tr>
							</table></td>
						<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr align="center">
						<td><table width="500" border="0" cellpadding="0" cellspacing="5" style="font-size:12px">
							<tr align="center">
              	<td colspan="2" nowrap="nowrap" style="font-size:14px;"><b>Options<br /><br /></b></td>
								
							</tr>
								<tr>
									<td colspan="2" align="left" nowrap="nowrap"><b>IP Proxy Authentication Account:</b><br /><br />
										<table border="0" cellspacing="5" cellpadding="0" style="font-size:12px" ID="Table1">
                    	<tr>
                    		<td>Name:</td>
                    		<td><input name="ProxyName" type="text" id="ProxyName" onclick="return Radio_onclick()" size="40" maxlength="27"/></td>
                   		</tr>
                    	<tr>
                    		<td>Password: </td>
                    		<td><input name="ProxyPass" type="password" id="ProxyPass" onclick="return Radio_onclick()" size="40" maxlength="13"/></td>
                   		</tr>
                    	</table>
                    	<hr />
										</td>
								</tr>
								<tr>
									<td colspan="2" align="left" nowrap="nowrap"><b><span id="chgpass"></span></b><br /><br />
									  <table id="tPassword" style="font-size:12px; visibility=hidden" border="0" cellspacing="5" cellpadding="0">
                    	<tr>
                    		<td>New Password:</td>
                    		<td><input name="NewPass" type="password" id="NewPass" onclick="return Radio_onclick()" size="30" maxlength="15"/></td>
                   		</tr>
                    	<tr>
                    		<td>Confirm Password:</td>
                    		<td><input name="PassConf" type="password" id="PassConf" onclick="return Radio_onclick()" size="30" maxlength="15"/></td>
                   		</tr>
                    	</table>
								  </td>
								</tr>
<span id="MACPass">
<tr>
<td><b>Enter Mac Admin password (required to modify agent):</b>
		<input name="MacAdmnPass" type="password" id="MacAdmnPass" size="32" maxlength="14" />
		</td>
</tr>
</span>
								<tr>
                	<td colspan="2" align="left" nowrap="nowrap"><hr /></td>
								</tr>
								<tr align="right">
									<td align="left" nowrap="nowrap"><input id="Upgrade" type="submit" value="Upgrade version" name="Upgrade"/></td>
									<td nowrap="nowrap">
									<input id="Apply" type="submit" value="Apply" disabled="true" name="Apply"/>
									<img src="spacer.gif" alt=" " width="5" />
									<input name="Cancel" type="submit" id="Cancel" value="Close"  /></td>
								</tr>
							</table>
							<input id="HiddenNext" type="hidden" value="Status" name="HiddenNext"/>
							<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
							<input id="HiddenPrev" type="hidden" value="Error" name="HiddenPrev"/>
							<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
							<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
							<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
							<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/>
						<br /> </td>
					</tr>
			</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
<script language="JavaScript" type="text/javascript">
Rc();
</script>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Remove']">
<html>
    <head>
        <title>Remove Computrace</title>
        <script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

function RefreshPage() {
   GFrm().submit();
}

function Status_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Status=Status";
    setTimeout('RefreshPage()',1);
}

function Test_onclick()
{
    GFrm().HiddenNext.value="Test";
    GFrm().HiddenPressedButton.value="Test=Test";
    setTimeout('RefreshPage()',1);
}
function Options_onclick()
{
    GFrm().HiddenNext.value="Options";
    GFrm().HiddenPressedButton.value="Option=Option";
    setTimeout('RefreshPage()',1);
}
function Remove_onclick()
{
    GFrm().HiddenNext.value="Remove";
    GFrm().HiddenPressedButton.value="Remove=Remove";
    setTimeout('RefreshPage()',1);
}
function About_onclick()
{
    GFrm().HiddenNext.value="About";
    GFrm().HiddenPressedButton.value="About=About";
    setTimeout('RefreshPage()',1);
}
function focusFirstItem()
{
	if ((navigator.userAgent.indexOf('Mac OS X')>= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("MACPass").style.visibility="visible";
	}
}
</script>
<script LANGUAGE="JavaScript" type="text/javascript">
function confirmSubmit()
{
var agree=confirm("Are you sure you wish to continue?");
if (agree)
return true ;
else
return false ;
}
</script>
</head>
<body onLoad="javascript:focusFirstItem();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form action="ctmweb.xml" method="post" name="Manage" id="Manage">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:Black;"></td>
			<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><table border="0" cellspacing="0" cellpadding="3" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;">
								<tr>
									<td><a href="#" onclick="return Status_onclick()" style="color:#99CCFF; text-decoration:none;">STATUS</a></td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return Test_onclick()">TEST CALL</a> </td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return Options_onclick()">OPTIONS</a></td>
									<td>|</td>
									<td style="background-color:White;"><a href="#" style="color:#ff6600; text-decoration:none;" onclick="return Remove_onclick()">REMOVE</a></td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onclick="return About_onclick()">ABOUT</a></td>
								</tr>
							</table></td>
						<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="70%" border="0" cellpadding="0" cellspacing="0" style="font-size:12px">
					<tr align="center">
						<td><table border="0" cellpadding="0" cellspacing="5" style="font-size:12px">
							<tr align="center">
              	<td style="font-size:14px"><b>Remove Computrace <br /><br /></b>
              		<hr /></td>
							</tr>
								<tr>
                	<td align="left"><table border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
                    	<tr>
                    		<td><img src="warning.gif" alt=" " width="32" height="32" /></td>
                    		<td>WARNING: </td>
                   		</tr>
                    	</table></td>
           	    </tr>
								<tr>
									<td align="center">If you wish to remove Computrace from your computer, <b>Click OK</b></td>
								</tr>
								<tr>
									<td align="left"></td>
								</tr>
								<tr>
                	<td align="left"><hr /></td>
								</tr>
<tr align="center"><td><table id="MACPass" style="font-size:12px; visibility=hidden" border="0" cellspacing="5" cellpadding="0">
<tr align="left"><td>Enter Mac Admin password (required to remove agent) :
		<input name="MacAdmnPass" type="password" id="MacAdmnPass" size="32" maxlength="14" />
		<hr />
		</td></tr></table></td>
</tr>

								<tr align="right">
									<td>
									<input id="ButtonRemoveOK" type="submit" value="OK" name="ButtonRemoveOK" onClick="return confirmSubmit();"/>
									<img src="spacer.gif" alt=" " width="5" />
									<input id="Cancel" type="submit" value="Cancel" name="Cancel"/>
									<img src="spacer.gif" alt=" " width="5" />
									<input name="Cancel" type="submit" id="Cancel" value="Close" /></td>
								</tr>
							</table>
							<input id="HiddenNext" type="hidden" value="Reboot" name="HiddenNext"/>
            <input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
            <input id="HiddenPrev" type="hidden" value="Error" name="HiddenPrev"/>
            <input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
            <input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
            <input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
            <input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/>
						<br /> </td>
					</tr>
			</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>		
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='About']">
<html>
    <head>
        <title>About Computrace</title>
        <meta name="vs_defaultClientScript" content="JavaScript"/>
        <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
        <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
        <meta name="ProgId" content="VisualStudio.HTML"/>
        <meta name="Originator" content="Microsoft Visual Studio.NET 7.0"/>
        <script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }


function RefreshPage() {
   GFrm().submit();
}

function Status_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="Status=Status";
    setTimeout('RefreshPage()',1);
}

function Test_onclick()
{
    GFrm().HiddenNext.value="Test";
    GFrm().HiddenPressedButton.value="Test=Test";
    setTimeout('RefreshPage()',1);
}
function Options_onclick()
{
    GFrm().HiddenNext.value="Options";
    GFrm().HiddenPressedButton.value="Option=Option";
    setTimeout('RefreshPage()',1);
}
function Remove_onclick()
{
    GFrm().HiddenNext.value="Remove";
    GFrm().HiddenPressedButton.value="Remove=Remove";
    setTimeout('RefreshPage()',1);
}
function About_onclick()
{
    GFrm().HiddenNext.value="About";
    GFrm().HiddenPressedButton.value="About=About";
    setTimeout('RefreshPage()',1);
}
function preload()
{
    sExecCommandLine = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
	if ((sExecCommandLine == "-all") || (navigator.userAgent.indexOf('Mac OS X') >= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		GetElmnt("ctinstall").innerHTML = "REMOVE";
		GetElmnt("ctinstall2").innerHTML = "|";
	}
}

       </script>

    </head>
<body onload="javascript:preload();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form action="ctmweb.xml" method="post" name="Manage" id="Manage">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:Black;"></td>
			<td style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><table border="0" cellspacing="0" cellpadding="3" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;">
								<tr id="tAbout">
									<td><a href="#" onClick="return Status_onclick()" style="color:#99CCFF; text-decoration:none;">STATUS</a></td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onClick="return Test_onclick()">TEST CALL</a> </td>
									<td>|</td>
									<td><a href="#" style="color:#99CCFF; text-decoration:none;" onClick="return Options_onclick()">OPTIONS</a></td>
									<td>|</td>
									<td><a href="ctmweb.xml" style="color:#99CCFF; text-decoration:none;" onclick="return Remove_onclick();"><span id="ctinstall"></span></a></td>
									<td><span id="ctinstall2"></span></td>
									<td style="background-color:White;"><a href="#" style="color:#ff6600; text-decoration:none;" onClick="return About_onclick()">ABOUT</a></td>
								</tr>
							</table></td>
						<td align="right" style="background-color:Black;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="70%" border="0" cellpadding="0" cellspacing="0" style="font-size:12px">
					<tr align="center">
						<td><table border="0" cellpadding="0" cellspacing="5" style="font-size:12px">
							<tr align="center">
              	<td><img src="logo_computrace.gif" alt=" " width="250" height="54" />
              		</td>
							</tr>
								<tr>
                	<td align="center"> CTMWeb Build # <xsl:value-of select="SntlSettings/wCurrentVersion"/><br />
									Agent build # <xsl:value-of select="SntlSettings/wVersionNumber"/><br /><br />
									US Patents: 5,764,892; 5,715,174; 5,802,280; 6,244,758<br /><br />Copyright (c) 1997-2004 Absolute Software Corporation.<br /><a href="http://www.computrace.com">http://www.computrace.com</a></td>
           	    </tr>
								<tr>
                	<td align="left">
									</td>
               	</tr>
								<tr>
                	<td align="left"><hr /></td>
								</tr>
								<tr align="right">
									<td>
									<input name="Cancel" type="submit" id="Cancel" value="Close" /></td>
								</tr>
							</table>
							<input id="HiddenNext" type="hidden" value="Status" name="HiddenNext"/>
            <input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
            <input id="HiddenPrev" type="hidden" value="Status" name="HiddenPrev"/>
            <input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
            <input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
            <input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
            <input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/>

						<br /> </td>
					</tr>
			</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>    
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Cancel']">
<html>
<head>
<title>Exit</title>
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function ExitCTM() {
	document.parentWindow.close();
}
</script>
</head>
<body onload="ExitCTM();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="80%"  border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr>
						<td align="center"><img src="logo_computrace.gif" alt=" " width="250" height="54" /><br /><br /></td>
					</tr>
					<tr>
						<td align="center">Thank you for using Computrace.
                <p></p>
                Close this window manually if it did not close automatically.</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</body>
</html>

</xsl:template>


















<xsl:template match="ctmagent[@status='Inst1']">
	<html>
	<head>
		<title>End User License Agreement</title>
<script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function AcceptAgr_onclick()
{
    GFrm().HiddenNext.value="Inst2";
    GFrm().HiddenPressedButton.value="AcceptArg=AcceptArg";
    GFrm().submit();
}

function Back_onclick()
{
    GFrm().HiddenNext.value="Intro";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();

}

function NoAcceptAgr_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="NoAcceptArg=NoAcceptArg";
    GFrm().submit();
}

		</script>
	</head>
<body onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:12px ">
					<tr>
						<td align="center"><br /><img src="logo_computrace.gif" alt=" " width="250" height="54" /><br /><br />
						</td>
					</tr>
					<tr>
						<td>
							<p align="center"><textarea id="Textarea1" name="Textarea1" rows="8" cols="80" style="font-size:12px">END-USER LICENSE AGREEMENT ("LICENSE") FOR ABSOLUTE'S SOFTWARE
 
PLEASE READ CAREFULLY THE FOLLOWING LEGAL AGREEMENT:

Use of the Absolute software product is required to enable the Absolute service ("Service") purchased by you, and is conditioned upon acceptance and compliance by you with this license and the attached Terms and Conditions of Service and, if applicable, Recovery Guarantee Terms and Conditions for the Service you purchased, copies of which are available online at www.absolute.com ("Online") for review and download from Absolute's website.  By installing, copying or using the Absolute software product you will be deemed to have accepted and agreed to be bound by this license and the attached Terms and Conditions of Service, and/or Recovery Guarantee Terms and Conditions.  If you do not agree to accept or be bound by this license or the Terms and Conditions of Service or, if applicable, the Recovery Guarantee Terms and Conditions, do not install, copy or use the Absolute software product and promptly remove the Absolute software product and any copies from your computer and return the software.
1.	Licensor. This license is being granted by Absolute Software Corporation ("ASC"), a company incorporated in the Province of British Columbia, Canada.
2.	License Grant. Absolute grants to you a non-exclusive, non-transferable right to use this Absolute software including any updates thereto provided to you by Absolute (the "Software"). This license to use the Software includes a sublicense to use included third party software and is conditioned upon your compliance with the terms of this license. You agree you will only copy the Software into a machine-readable or printed form as necessary to use it in accordance with this license or for backup purposes in support of your use of the Software.
3.	Term. This license is effective for the term of the service period you have purchased (which cannot exceed five years), unless terminated earlier as provided in this license, and only with respect to those computers covered by the Service. At the completion or early termination, the provisions of sections 5,7,8,9,11,13,14 and 16 of this license will survive and you will destroy the Software and all copies.
4.	Termination. This license is terminated automatically at the end of the purchased service term, or, if applicable, as provided under the Recovery Guarantee Terms and Conditions, including upon payment of a Recovery Guarantee. You may terminate this license at any point by destroying the Software and all copies. Absolute may terminate this license, without notice, if you fail to comply with any term or condition of this license or upon the termination of any Service provided to you by Absolute, its affiliates or authorized service providers in connection with the Software.
5.	Ownership of the Software. Absolute or its licensors may have patents or pending patent applications, trademarks, copyrights, trade secret rights or other intellectual property rights covering the Software and all materials delivered to you along with the Software (user manuals and other documentation). You acknowledge that the Software and such materials are the property of Absolute or its licensors and that the only rights you have with respect to the Software and related materials is the right to use them in accordance with the terms of this license.  The Software is protected by applicable intellectual property laws  (patent and copyright) and international treaties. You (a) acknowledge that no title to the intellectual property in the Software is transferred to you, (b) confirm that any copies of the Software you make will contain the same proprietary notices, which appear on and in the Software, and (c) agree that you will not copy the printed materials accompanying the Software.
6.	Modification; Reverse Engineering. You agree that you will not, and will not attempt to, (a) modify any part of the Software or (b) decompile, reverse assemble, reverse engineer, translate or disassemble any part of the Software.
7.	Other Restrictions. You may not (a) transfer, rent, lease, or sublicense the Software, (b) make any telecommunications data transmission of the Software, or (c) unless all CPUs or users are properly individually or site licensed by Absolute, permit use of the Software in a computer service business, network, timesharing, multiple CPU or multiple user arrangement.
8.	Software and Monitoring Service Limitations. The Software is provided to you "as is" without warranty of any kind, either express or implied. Absolute or its authorized reseller or its authorized service provider ("ASP") cannot guarantee that the Software will meet your other requirements or that operation of the Software will be uninterrupted or that the Software will be error-free. While Absolute has made reasonable effort to ensure that the Software works with certain operating systems and application software, Absolute can not check every possible combination of equipment or software available or that is subsequently installed by you. Furthermore, if you have purchased a Service that includes theft recovery services, subject to any "Recovery Guarantee" specifically offered with the Service by Absolute, its affiliates or authorized service providers, recovery of every computer which uses the Software can not be guaranteed. In particular, as Absolute, its affiliates, or authorized service providers will only co-ordinate recoveries in Canada, the United States of America, the United Kingdom, or Australia (collectively referred to as "Territories"), no guarantee or warranty is provided with respect to the operation of the Software, or the ability to recover a computer using the Software, if the computer is located or moved outside of these Territories. You bear the entire risk as to the quality and performance of the Software and the related Service, other than as specifically set forth in the Recovery Guarantee.
9.	Recovery Guarantee. If you have purchased a Service that includes a "Recovery Guarantee", a limited warranty will apply for the recovery of your stolen computer.  The Recovery Guarantee is subject to the Recovery Guarantee Terms and Conditions available at www.absolute.com. Please see the Recovery Guarantee Terms and Conditions for a full list of exceptions and restrictions.  The Recovery Guarantee is only available with certain Services within the Recovery territory, which is updated periodically.
10.	NO OTHER WARRANTY. OTHER THAN THE RECOVERY GUARANTEE, ABSOLUTE, AND ITS AUTHORIZED SERVICE PROVIDERS DISCLAIMS ALL WARRANTIES WITH RESPECT TO THE SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY RIGHTS. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF IMPLIED WARRANTIES OR LIMITATIONS ON HOW LONG AN IMPLIED WARRANTY MAY LAST, OR THE EXCLUSION OR LIMITATION OF INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE ABOVE LIMITATIONS OR EXCLUSIONS MAY NOT APPLY TO YOU. IN SUCH A CASE, ANY IMPLIED WARRANTIES RELATING TO THE SOFTWARE ARE LIMITED TO 30 DAYS. THIS WARRANTY GIVES YOU SPECIFIC LEGAL RIGHTS AND YOU MAY HAVE OTHER RIGHTS, WHICH VARY FROM JURISDICTION TO JURISDICTION.
11.	Customer Assistance. If the Software does not conform to the limited warranty set out in section 11 (the "Limited Warranty'), at the option of Absolute, Absolute, its affiliates or authorized service providers will either correct the error or help you work around or avoid the error. Absolute will not have any other obligation to you with respect to the Limited Warranty and you will have no other remedy against Absolute. The Limited Warranty is void if failure of the Software has resulted from accident, abuse or misapplication. Any replacement Software will be warranted for the remainder of the original Limited Warranty period.
12.	NO LIABILITY FOR CONSEQUENTIAL DAMAGES. NEITHER ABSOLUTE NOR ITS AFFILIATES, AUTHORIZED SERVICE PROVIDERS, SUPPLIERS OR LICENSORS ARE LIABLE TO YOU FOR ANY CONSEQUENTIAL, SPECIAL, INCIDENTAL OR INDIRECT DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF DATA OR COMPUTER TIME, LOSS OF BUSINESS PROFITS OR BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION OR ANY OTHER PECUNIARY LOSS) ARISING OUT OF THE DELIVERY, USE OR INABILITY TO USE THE SOFTWARE (INCLUDING THE FAILURE TO RECOVER A LOST COMPUTER), EVEN IF ABSOLUTE OR ITS AFFILIATES, AUTHORIZED SERVICE PROVIDERS, SUPPLIERS OR LICENSORS HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. THE LIABILITY OF ABSOLUTE AND ITS AFFILIATES, AUTHORIZED SERVICE PROVIDERS, SUPPLIERS AND LICENSORS FOR ANY CLAIM, WHETHER IN CONTRACT, TORT OR ANY OTHER THEORY OF LIABILITY, WILL NOT EXCEED THE LICENSE OR OTHER FEES PAID BY YOU, IF ANY.
13.	Export Restrictions. The export or re-export of Absolute software is prohibited to persons and organizations on the United States Government's Bureau of Industry and Security's Denied Persons list as well as to the following countries: Afghanistan, Angola, Cuba, Iran, Iraq, Libya, North Korea, Rwanda, Sudan and Syria (this list is subject to change). You hereby certify that the Software is not intended for shipment, either directly or indirectly, to any country in respect of which export restrictions or sanctions have been applied by the government of Canada or the United States.
14.	Severability. In the event of the invalidity of any provision of this license, the parties agree that such invalidity shall not affect the validity of the remaining portions of this license.
15.	Governing Law and Jurisdiction. This license is governed by the laws of the Province of British Columbia, Canada, and the laws of Canada applicable therein. The licensee irrevocably and exclusively commits that any dispute in respect of this license will be commenced and heard only in the courts of British Columbia and all courts having appellate jurisdiction there over.
16.	Entire Agreement. This End User License Agreement, along with the Terms and Conditions of Service and, if applicable, Recovery Guarantee Terms and Conditions comprise the entire agreement between you and Absolute, and supersedes any prior agreement or understanding, whether written or oral, relating to the subject matter of this license.
 2004 Absolute Software Corp. All rights reserved. Computrace and Absolute are registered trademarks of Absolute Software Corp. All other trademarks are property of their respective owners. Computrace US Patents #5,715,174, #5,764,892, #5,802,280, #6,244,758, #6,269,392, #6,300,863, and #6,507,914. Canadian Patent #2,305,370. U.K Patents #EP793823, and #GB2338101.  German Patent #695 125 34.6-08. Australian patent #699045.Laptop Retriever&#8482; is a pending trademark of Absolute Software Corporation. 
</textarea>
                <br /><br />
                <textarea id="Textarea2" name="Textarea2" rows="8"  cols="80" style="font-size:12px">The following terms and conditions apply only if you have purchased a software service.

Terms and Conditions of Service
 
The following terms set forth the computer security and tracking service (the "Service") provided by Absolute Software Corporation ("ASC"). Where a theft recovery service was purchased in the United States ASC's subsidiary Computer Recovery Inc. ("CRI") will perform recovery services.  Where the theft recovery service was purchased outside the United States an Authorized Service Partner ("ASP") will perform recovery services. For a list of ASP's please see Appendix A. The Service is performed for the legal owner of a computer who purchased the Service (the "Customer"). ASC, and as required CRI or ASP, will provide the Service to Customers who purchased the Service for (10) or more Computers ("Commercial Customers") online ("Online") at www.absolute.com and to customers who have purchased the Service for less than ten (10) Computers ("Consumer Customers") online ("Online") at www.absolute.com. The Service will be provided only for the time period purchased, which is generally either for one, two, three or four years (the "Service Term"), from date of purchase and only for the individual computer registered with ASC Online. 
1.	BY PURCHASING THE SERVICE, THE CUSTOMER IS AWARE THAT:
1.1.	ASC's, CRI's OR ASP's obligation to provide the Service is conditional upon the Customer complying with these Terms and Conditions of Service, the ASC End User License Agreement ("EULA") and/or the Recovery Guarantee Terms and Conditions.
1.2.	The Customer is deemed to have read and agreed to these Terms and Conditions of Service by installing and using the Computrace Agent software. This document was provided to the customer with the purchase documentation, and is also available Online at, www.absolute.com. 
1.3.	In order for ASC and CRI OR ASP to provide the Service, the Customer must install onto their computer a software agent (the "Computrace Agent") and activate the Service Online, and connect to the Internet from time to time.  To do so, follow the installation guide provided with the Computrace Agent software.  Additional installation tools are available for the Customer by contacting ASC at techsupport@absolute.com.  
1.4.	The Computrace Agent installed on the Customer computer will make automatic communication with a server at ASC's Monitoring Center on a regular basis while the computer is connected to the Internet or will use a dialup connection and disclose information that will enable ASC and/or CRI OR ASP to perform the Service purchased.
1.5.1.2.	It is the Customer's sole responsibility to ensure that the Computrace Agent remains installed on the computer, that the Computrace Agent automatically communicates with ASC's Monitoring Center on a regular basis, including but not limited to allowing agent access through Customer configured firewalls, and otherwise complies with "Computrace Best Practices" for the deployment and maintenance of the Computrace Agent. The "Computrace Best Practices" document is available by logging into your Customer account Online. 
1.6.1.3.	The Customer is required to maintain the secrecy of any passwords used to access the service management web site, Online and must keep passwords and other account activation material separate from the protected computer. 
1.7.1.4.	There are minimum system requirements to run the Computrace Agent software: 
a	For IBM compatible personal computers: a 486 or faster processor; Hayes-compatible modem or other connection to the Internet; and any of Microsoft Windows 95/98/2000/NT/Me/XP operating systems.
b	For Macintosh personal computers: G3 processor or above, a connection to the Internet, and Mac OS X version 10.2 or Panther operating system.
c	For Computrace Personal, the only supported operating system is Windows XP.
1.8.1.5.	If the Service purchased includes the CRI OR ASP Theft Recovery Service, then in the event of a theft:
a	The Customer must complete and submit an official police report with law enforcement in the jurisdiction in which the computer was stolen, and obtain a record of this report, including the police file number within seven (7) days of discovery of the theft and in no case more than fourteen (14) days after the actual date of theft.
b	The Customer must submit a complete Theft Report, including the police file number, to CRI within seven (7) days of discovery of the theft and in no case more than fourteen (14) days after the actual date of theft.
c	The Theft Report is available by logging-in through the Customer account Online at www.absolute.com, or it will be mailed to the Customer upon a request sent to forms@absolute.com, or by calling 1-604-608-4930.
d	ASC and CRI OR ASP will not be obligated to provide location or system status information, assist in a recovery or provide other support unless the theft has been reported in accordance with the procedures described above and as established by ASC from time to time Online.
e	If the Service purchased includes a Recovery Guarantee, such guarantee is subject to the Recovery Guarantee Terms and Conditions available Online.
f	For Consumer Customers who have purchased the Computrace Personal Service, the Consumer Customer may receive only one Theft Recovery Service per purchase, irrespective of the length of Service Term. The Service will immediately terminate upon recovery of the Customer Computer, and ASC will not be obligated to refund the Customer any portion of the purchase price paid for the Service applicable to the balance of the Service Term.
2.	THE SERVICE
2.1.	Service and Term. The Service is enabled by a software-based tool (the patented software agent  the "Computrace Agent") for computer security and tracking, and a monitoring server. Monitoring of all computers is provided through a Monitoring Center and servers operated by ASC, located in Vancouver, British Columbia, Canada.  If the Service is purchased in the United States and includes a Theft Recovery Service, then Theft Recovery Service is provided by CRI with a registered office in Springfield, Illinois, USA. Where the theft recovery service was purchased ;outside the United States a Authorized Service Partner ("ASP") will perform recovery services. For a complete list of ASP's please see Appendix A.
The Service Term begins on the date the Service is purchased.  ASC and CRI OR ASP are only obligated to provide the Service during the Service Term.  If the Customer purchased a Service with a Recovery Guarantee and receives payment under the Recovery Guarantee, the Service Term and Service will be immediately terminated, and ASC will not be obligated to refund the Customer any portion of the purchase price paid for the Service applicable to the balance of the Service Term.  
In order to ensure its full functionality, ASC will periodically make automatic updates to the Computrace Agent when it communicates with ASC's Monitoring Center.  The Customer hereby acknowledges and consents to such periodic updates without the need for further notification or consent.
2.2.2.1.	The Computrace Agent.  The Computrace Agent retains an Electronic Serial Number that uniquely identifies the computer.  When a computer installed with the Computrace Agent connects to the Internet or uses a direct dial-up modem connection, the Computrace Agent contacts ASC's Monitoring Center to report the computer's location (either its Internet Protocol ("IP") address or the phone number from which it is dialing).  This message is brief, silent, and requires no prompting by, or interaction with, the Customer. 
2.3.2.2.	Monitoring.  ASC's Monitoring Center provides a means of monitoring system status for computers that are installed with the Service.  ASC's Monitoring Center is located in Vancouver, British Columbia, Canada.  When the Computrace Agent calls into the Monitoring Center, ASC's monitoring server logs the call, auto-discovers and records the computer location, and instructs the Computrace Agent when to call again.  Computers installed with the Service must call in to ASC's Monitoring Center on a regular basis in order to transmit the data required for ASC to provide the Service.
2.4.2.3.	Customer Center.  All information provided by the Computrace Agent is archived, kept confidential, stored within a physically secure location, and accessed/used by ASC and CRI OR ASP solely as required in the performance of the Service.  Customers are able to access the account details of their computer, Online, 24 hours a day, seven days a week, through a secure socket layer, password-protected website ("Customer Center").  ASC will comply with applicable Canadian privacy laws in the handling of the information provided by the Computrace Agent.  ASC's Privacy Policy is available Online and is incorporated into this Agreement by reference.  ASC reserves the right to modify its Privacy Policy at any time without notice.
2.5.	Theft Recovery Service.  The computer Theft Recovery Service is provided by CRI OR ASP and is available exclusively in the Recovery Territory.  The Theft Recovery Service begins if and when a Customer properly files a fully completed Theft Report Online at www.absolute.com.  CRI OR ASP's recovery team will follow the audit trail logged by the Monitoring Center and use reasonable efforts to locate the missing computer.  Other than any Recovery Guarantee, ASC, CRI OR ASP does not warrant that it will be able to recover every computer that uses the Computrace Agent.  The CRI OR ASP recovery team will provide information to assist local law enforcement officials with the recovery of the computer.  The Customer will be informed of the status of their computer's recovery, primarily through e-mail communication to their designated e-mail address.  
CRI OR ASP coordinates with, and relies upon, local law enforcement officials to recover stolen computers.  Once a fully completed Theft Report has been properly submitted to CRI OR ASP, CRI OR ASP's recovery team may decide to disable the Customer's access to the website in order to eliminate additional security risks associated with recovery of the computer.  CRI OR ASP and ASC will share all information relating to the Customer and the computer with law enforcement, or ASC approved recovery personnel in order to assist in the recovery process. 
CRI OR ASP operates the Service in a professional manner at all times.  Further detail on the Theft Recovery Service is available at www.absolute.com.
Technical Support
Technical Support is for Customers Only. ASC and CRI OR ASP will work with and provide either phone based or electronic technical support to the Customer during the Service Term. 
Hours of Operation. ASC provides technical support for Customers exclusively in the English language, from 6:00 am to 6:00 pm Pacific Time, Monday through Friday, excluding statutory holidays. Commercial technical support can be reached at 1 604-630-3202 (Please note: this telephone number is in Canada), or at techsupport@absolute.com. Consumer technical support can be reached at 1-604-676-3642 (Please note: this telephone number is in Canada), or at techsupport@absolute.com.  The Customer may also receive support information Online. ASC and CRI OR ASP reserve the right to modify these support terms at any time without notice to the Customer. 
3.	CANCELLATION AND/OR TRANSFER RIGHTS 
3.1.	ASC and/or CRI OR ASP reserves the right to cancel this Agreement, or any Service, at any time, with or without cause, immediately upon electronic notification to the Customer at the last email address provided by Customer. Except as specified in the Recovery Guarantee Terms and Conditions, ASC and/or CRI OR ASP will refund a pro-rated portion of the purchase price to account for the unused Service Term. 
3.2.	The Customer may transfer the Computrace Agent and Service to another computer only by following the Computrace Best Practices guide, and by providing written notification to ASC at techsupport@absolute.com and only under the following circumstances: 
a	If a new computer was provided by the computer manufacturer or distributor as a replacement to the original computer; or
b	If the Customer has retired the Computrace Agent on the original computer on which the Service was applied, and wishes to transfer it to another computer owned by the Customer. 
3.3.	The Customer may not transfer this Agreement, or any Service, at any time, to another person, or subsequent owner of the Customer Computer. Prior to the Customer's sale or transfer of the Customer Computer to another owner, Customer must complete the process to remove the Computrace Agent from the Customer Computer and transfer it to a new computer owned by Customer in accordance with section 3.2) b. above.
4.	RECOVERY GUARANTEE 
Where a Service with a Recovery Guarantee offer is purchased in the United States, and subject to specified terms and conditions, CRI offers a limited warranty that CRI will recover a stolen laptop.  Where a Service with a Recovery Guarantee offer is purchased, outside of the United States, and subject to specified terms and conditions, ASC offers a limited warranty that ASP will recover a stolen laptop.   These limited warrantees are referred to collectively herein as the "Recovery Guarantee".    The Recovery Guarantee Terms and Conditions are attached and also available Online. 
5.	LIMITATIONS AND WARRANTIES
ASC and its affiliates do not guarantee that operation of the Computrace Agent will be uninterrupted or error-free, nor does it guarantee that will be able to recover every computer which uses the Computrace Agent. In particular, as CRI OR ASP will only co-ordinate recoveries in the Recovery Territory, no guarantee or warranty is provided with respect to the ability to recover a computer using the Computrace Agent if the computer is located or moved outside the Recovery Territory. 
Other than the Recovery Guarantee, ASC disclaims all warranties with respect to the Computrace Agent and the Service, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose. If your jurisdiction does not allow the exclusion of or other limitations on implied warranties, any implied warranty relating to the Computrace Agent is limited to 30 days. 
ASC is not liable to you for any consequential, special, incidental or indirect damages whatsoever, including, without limitation, damages for loss of data or computer time, loss of business profits or business interruption, loss of business information or any other pecuniary loss. 
Please see the Recovery Guarantee Terms and Conditions and the EULA for a full list of exceptions, restrictions and other terms and conditions relating to the Computrace Agent and the Service.
6.	GOVERNING LAW AND JURISDICTION
This Service is governed by the laws of the Province of British Columbia, Canada, and the laws of Canada applicable therein. The Customer irrevocably and exclusively commits that any dispute in respect of this Service will be commenced and heard only in the courts of British Columbia and all courts having appellate jurisdiction there over.
7.	CONSUMER PROTECTION LAWS 
This is a contract to which consumer protection laws in the Customer's jurisdiction may apply. Under such laws, the Customer may have the right to cancel this contract after receiving a copy of this contract by giving ASC notice of cancellation within the period of time as prescribed in such laws. It may not be necessary to give a reason for the cancellation. The Customer can send a notice of cancellation to the following electronic mail address - techsupport@absolute.com - or by some other method, such as certified mail, fax, electronic mail or personal delivery that will allow the Customer to prove that they gave notice.  If the Customer sends the notice of cancellation by mail, fax or electronic mail, it may not matter if ASC receives the notice after the prescribed period provided that the Customer sent it within the prescribed period. In addition to the above right, in some jurisdictions and in certain limited cases the Customer may, on notice to ASC, also be able to terminate this agreement at any time during the Service Term.  In such a case, the Customer may receive a full or partial refund of the subscription price paid for the balance of the unused Service Term.
</textarea>
<br /><br />
<textarea name="Textarea3" cols="80" rows="8" id="Textarea3" style="font-size:12px">The following terms and conditions apply only if you have purchased a product with the Recovery Guarantee.

Recovery Guarantee Terms and Conditions
 
PLEASE NOTE THAT THIS RECOVERY GUARANTEE IS NOT INSURANCE AND WE ARE NOT INSURING YOUR COMPUTER AGAINST THEFT
This Recovery Guarantee is a limited warranty offered through Computer Recovery Inc. ("CRI") in the United States and offered by Absolute Software Corporation ("ASC") through its Authorized Service Partner ("ASP") as listed in Appendix A outside of the United States, and is subject to several limitations and exceptions.  This limited warranty offer is only available with certain services that specifically include this Recovery Guarantee.  We believe our software will enable us to locate and assist law enforcement to recover your computer if it is stolen.  Generally, we can only find your stolen computer if you have properly installed the Computrace Agent software and it is properly running.  If you did not properly install, activate, operate and maintain the Computrace Agent software, CRI OR ASP will not be able to pay you any money under the Recovery Guarantee.  There are additional restrictions on this Recovery Guarantee, such as the computer must have been stolen in the Territory.  Please read closely all of the following terms and conditions of the Recovery Guarantee, as they describe all of the limitations and exceptions that will affect your ability to benefit under the Recovery Guarantee.
1.	DEFINITIONS: 
1.1.	"Activation" or "Activate" means the process of the Customer ensuring their service is turned on through an activation including the accurate listing and registration of the Customer Computer's: make; model and PSN within the Online service management web site.
1.2.	"ASC" means Absolute Software Corporation, a company organized under the laws of British Columbia, Canada, having an office at Suite 800, 111 Dunsmuir Street, Vancouver, B.C. V6B6A3. 
1.3.	"ASC Service" means the computer security and tracking service provided by ASC, and CRI OR ASP where a Theft Recovery Service was purchased, and is required to be performed.
1.4.	"Absolute Monitoring Center" means the monitoring center created and used by ASC to communicate with the Computrace Agent and collect the required location data.
1.5.	"Commercial Customer" means a customer who purchases an ASC Service for ten (10) or more Customer Computers.
1.6.	 "Computrace Agent" is the software agent installed on the Customer Computer, which communicates with Absolute's Monitoring Center to transmit data required for CRI OR ASP to perform the Theft Recovery Service. Communication is made via the Customer Computer's Internet connection or direct dial modem.
1.7.	"Computrace Best Practices" means the methods the Customer must use in order to properly install the Computrace Agent software on the Customer Computer; to ensure that the Computrace Agent remains installed on the Customer Computer; and to ensure that the Customer Computer is automatically communicating with the Absolute Monitoring Center on a regular basis. Please review the full Computrace Best Practices document by logging onto your customer account Online. 
1.8.	"Consumer Customer" means a customer who purchases an ASC Service for less than ten (10) Customer Computers.
1.9.	"CRI" means Computer Recovery Inc., a company organized under the laws of the state of Illinois, USA and an affiliate of ASC, having a registered office c/o National Corporate Research, Ltd., Suite 200, 118 West Edwards, Springfield, Illinois, USA 62704. 
1.10.	"ASP" means Authorized Service Partner, providing recovery services outside of the United States as listed in Appendix "A" and as amended by ASC in its sole discretion from time to time.
1.11.	 "Customer" means the legal owner of a computer who originally purchased an ASC Service that includes a CRI OR ASP Theft Recovery Service and a Recovery Guarantee, and is currently within a valid Service Term.  A Customer is either a "Commercial Customer" who purchased ComputraceComplete OR is a "Consumer Customer" who purchased Computrace Personal. 
1.12.	"ComputraceComplete" means the branded Theft Recovery Service purchased by Commercial Customers.
1.13.	 "Customer Computer" means the unique and specific computer including its unique PSN that the customer has purchased a Service Term for and has both: (1) installed the Computrace Agent on the computer and (2) has ensured the registration of the computer and PSN with ASC.  A Customer Computer can only be a central processing unit or a laptop, and cannot be a separate monitor, printer, other hardware device or another type of device with memory, such as a personal digital assistant, digital camera or mobile phone.
1.14.	"Computrace Personal" means the branded Theft Recovery Service purchased by Consumer Customers for less than ten (10) Customer Computers.
1.15.	"Online" means the ASC web site that services the customer.  Online for the Commercial Customer and the Consumer Customer means www.absolute.com
1.16.	"Physical Serial Number" (or "PSN") means the unique physical serial number, which identifies the Customer Computer installed with the software.
1.17.	"Recover" or "Recovery" means the Customer Computer has been located and returned to the Customer, or is in the process of being delivered to the Customer, or is either in possession of, or in process of being collected by, law enforcement.   
1.18.	"Recovery Guarantee Amount" means the dollar amount payable by CRI OR ASC to a Customer under this Recovery Guarantee.
1.19.	"Recovery Guarantee Submission Form" means the form provided by CRI OR ASC for the Customer to apply for a Recovery Guarantee Amount regarding a stolen computer.  This form is also available Online through the Customer account.   
1.20.	Recovery Period" means the length of time CRI OR ASP may take to recover the computer after the date CRI OR ASC receives the fully completed Theft Report.
a	For Commercial Customers "Recovery Period" means the sixty (60) day period following the date CRI OR ASC receives the Customer's fully completed Theft Report; and 
b	For Consumer Customers "Recovery Period" means the thirty (30) day period following the date CRI OR ASC receives the Customer's fully completed Theft Report and. 
c	The Recovery Period is deemed to be extended in the event the computer is recovered and delivered to the customer before the Guarantee payout is due. 
1.21.	"Recovery Territory" means the United States of America, Canada, Australia and the United Kingdom. 
1.22.	"Registration" means the process of the Customer ensuring the accurate registration and activation of the Customer Computer's make, model and PSN within the Online service management web site.
1.23.	"Service Term" means the period of time beginning on the date the Customer purchased the ASC Service and ending upon completion of the set length of time listed in the invoice for the ASC Service. Service Terms are for periods of 1,2,3 or 4 years.
1.24.	"Theft Recovery Service" means the recovery service performed by CRI OR ASP and included with the ASC Service purchased by the Customer, and is subject to the Terms and Conditions of Service available at www.absolute.com.
1.25.	"Theft Report" means the form provided by CRI OR ASC Online at www.absolute.com for the Customer to report a theft and begin the Theft Recovery Service.
2.	 RECOVERY GUARANTEE: 
Subject to the terms and conditions listed below, if the Customer has installed and properly operated the Computrace Agent and the Customer Computer is stolen from within the Territory during the Service Term and CRI OR ASP is unable to Recover the stolen computer within the Recovery Period, CRI OR ASC will pay to the Customer the specified Recovery Guarantee Amount.
CRI OR ASC's OBLIGATION TO PAY THE RECOVERY GUARANTEE AMOUNT IS SUBJECT TO AND LIMITED BY ALL OF THE FOLLOWING TERMS AND CONDITIONS: 
2.1.	As well as the Terms and Conditions contained in this document, CRI OR ASC Recovery Guarantee is subject to and limited by the Terms and Conditions of the CRI OR ASP Recovery Service.  
2.2.	If CRI OR ASP is not able to recover the stolen Customer Computer during the Recovery Period, CRI OR ASP will provide email notification of such to the Customer, along with a Recovery Guarantee Submission Form, which the customer must complete and submit to CRI OR ASC no later than 30 days after the conclusion of the Recovery Period. The Recovery Guarantee Submission Form will be deemed to have been received by ASC on the date of fax, email or mailing provided the Customer retains the documentation to support this date. Otherwise it will be deemed received on the date received by CRI OR ASC.
2.3.	The Computrace Agent software must have been correctly installed and activated on the Customer Computer according to the Computrace Agent Installation Guide, and the Computrace Agent software must have contacted the Absolute Monitoring Center at least once in the 30 (thirty) days prior to the date of the theft. For customers with multiple Absolute products, the recovery guarantee must have been assigned to the stolen computer prior to the last call before the date of theft.

Exception for K-12 and Higher Education Customers: Due to the summer vacation period within a school year, If the PC is stolen in the months of July, August or September the prior theft call-in date is extended from 30 to 60 days (Note: does not apply to Computrace Personal customers). All other Terms and conditions remain the same.
2.4.	If a Customer has concerns about data privacy and chooses the data delete service (selective or full system delete) on a stolen computer, the computer will no longer be eligible for the Recovery Guarantee (as the data delete function compromises the recovery ability) but Absolute will still attempt to recover the stolen computer. 
2.5.	The Computrace Agent software must not have been removed, either intentionally or inadvertently, from the computer after the most recent contact with the Absolute Monitoring Center, and prior to the date of the theft. Please refer to the Computrace Best Practices to ensure the Computrace Agent is not removed.
2.6.	The Customer must have accurately recorded or accurately verified the stolen Customer Computer's physical serial number, make and model in the appropriate field at the online service management site Online at the time of installation and activation of the Computrace Agent.
2.7.	Along with the Recovery Guarantee Submission Form, the Customer must also provide to CRI OR ASC via fax at (604) 730 2621, or email to forms@absolute.com or via regular mail: 
a	The proof of purchase of the stolen Customer Computer (which confirms date of purchase price, along with the make and model); 
b	Proof of purchase of the ASC Service purchased for the specific Customer Computer that was stolen; and
c	The Customer must provide any additional information or documentation as may be reasonably requested by CRI OR ASC. 
2.8.	The Customer cannot have installed or activated more copies of the Computrace Agent than the Customer has purchased and paid for.
2.9.	The Customer must exercise reasonable care and attention in securing any Customer Computer upon which Computrace Agent is installed.  If a Customer Computer is stolen and such theft was made possible or materially easier by the Customer's lack of exercising due care or attention, the Customer shall not be entitled to any Theft Recovery Service or a Recovery Guarantee Amount.  Examples of such a lack of exercising due care or attention include, without limitation: leaving a Customer Computer in an unlocked vehicle; leaving a Customer Computer on a table in a coffee shop in order to place an order or visit the restroom; not physically securing the Customer Computer to the table/desk if the Customer Computer is available for use publicly; keeping the Customer Computer in an unlocked or unsecured office, house or building; and the like.
2.10.	The Recovery Guarantee is limited to only one Recovery Guarantee Amount per purchase of the ASC Service regardless of length of Service Term.  
2.11.	Upon a Recovery Guarantee Amount being paid, the particular Service Term and monitoring is terminated immediately on the particular Customer Computer and PSN, and ASC will not be obligated to refund the Customer any portion of the purchase price paid for the ASC Service applicable to the balance of the Service Term.
2.12.	The Customer must have accepted and be in full compliance with the Terms and Conditions of Service and the End User License Agreement ("EULA") included with the Computrace Agent.
2.13.	The Customer must have installed the Computrace Agent software on the stolen Customer Computer; ensured that the Computrace Agent remained installed and functioning on the Customer Computer; and that the Customer Computer was automatically communicating with the Absolute Monitoring Center on a regular basis before it was stolen. These all form part of Computrace Best Practices with which the Customer must comply, for the proper deployment and maintenance of the Computrace Agent during the Service Term. The Computrace Best Practices" document is available by logging into your account Online.  
2.14.	The Customer is obliged to maintain secrecy of any passwords used to access the Online service management site and must keep passwords and other account activation material separate from the Customer Computer.
2.15.	If the Customer reassigns Computrace Agent, including the original PSN associated with a unique computer to a different computer owned by Customer during the Service Term, then the Customer must ensure the accurate registration and activation of the new computer's PSN, make and model within the Online service management site and must disable the Computrace Agent on the original computer.  
2.16.	Subsequent owners of the Customer Computer are not entitled to any benefits under this Recovery Guarantee.
2.17.	ASC and/or CRI reserves the right to terminate this Recovery Guarantee at any time during the Service Term and refund a pro-rated portion of purchase price to account for the unused Service Term.  Should ASC or CRI exercise this right, it will notify the Customer in writing and the termination shall be effective immediately upon such notification.
3.	RECOVERY GUARANTEE AMOUNT: 
ONLY IF the Customer Computer has not been Recovered during the Recovery Period and the Customer has fully complied with all of the above Recovery Guarantee Terms and Conditions; CRI OR ASC will pay the Customer one of the following amounts. The following amounts are paid out in United States dollars for United States domiciled customers, in Canadian dollars for Canadian domiciled customers, Australian dollars for Australian domiciled customers and British Pounds for United Kingdom domiciled customers:
3.1.	If the date CRI OR ASC receives the fully completed Theft Report is within one year of the start of the Service Term, CRI OR ASC will pay the lesser of 90% of the original proof of purchase price of the Customer Computer (before taxes and excluding accessories and software) OR $1000.00 dollars OR 500 British pounds. 
3.2.	If the date CRI OR ASC receives the fully completed Theft Report is after the first anniversary of the start of the Service Term and before the second anniversary of such Service Term, CRI OR ASC will pay the lesser of 80% of the original proof of purchase price of the Customer Computer (before taxes and excluding accessories and software) OR $800.00 dollars OR ?400 British pounds. 
3.3.	If the date CRI OR ASC receives the fully completed Theft Report is after the second anniversary of the start of the Service Term and before the third anniversary of such Service Term, CRI OR ASC will pay the lesser of 60% of the original proof of purchase price of the Customer Computer (before taxes and excluding accessories and software) OR $600.00 dollars OR ?300 British pounds. 
3.4.	 If the date CRI OR ASC receives the fully completed Theft Report is after the third anniversary of the start of the Service Term and before the end of the Service Term, CRI OR ASC will pay the lesser of 40% of the original proof of purchase price of the Customer Computer (before taxes and excluding accessories and software) OR $400.00 dollars OR ?200 British pounds. 
Subject to verification of the Recovery Guarantee Submission Form and compliance with the above terms and conditions of the Recovery Guarantee, CRI OR ASC will pay the calculated Recovery Guarantee Amount to the Customer within thirty (30) days from receipt of a fully completed Recovery Guarantee Submission Form, submitted in accordance with Sections 2.5 and 2.9 above.
This Recovery Guarantee gives you specific legal rights, and you may also have other rights which vary from State to State or Province to Province or jurisdiction to jurisdiction.
Hours of Operation: ASC provides customer support for Customers exclusively in the English language, from 6:00 am to 6:00 pm Pacific Time, Monday through Friday, excluding statutory holidays. Commercial Customer Service can be reached at 1 604-630-3202 or at techsupport@absolute.com. Consumer Customer Service can be reached at 1-604-676-3642 or at techsupport@absolute.com. The Customer may also receive support information Online.  ASC reserves the right to modify these support terms at any time without notice to the Customer.  
 2004 Absolute Software Corporation. All rights reserved. Computrace and Absolute are registered trademarks of Absolute Software Corporation. All other trademarks are property of their respective owners. Computrace US patents #5,715,174, #5,764,892, #5,802,280, #6,244,758, #6,269,392, #6,300,863, and #6,507,914. Canadian patent #2,305,370. U.K patents #EP793823, and #GB2338101.  Australian patent #699045. German patent #695 125 34.6-08.
</textarea> 
<br /><br />
<textarea name="Textarea4" cols="80" rows="8" id="Textarea3" style="font-size:12px">Appendix A

 
When a service with a Recovery Guarantee is purchased and becomes deemed payable by ASC, ASC makes payment to all qualified customers domiciled in International Countries. An Authorized Service Partner ("ASP") performs computer recovery services in International Countries. International Countries is defined as any country outside the United States that is listed below: For a complete list of ASP's and the specific countries that are eligible for service please see below:  ASC reserves the right to modify this list from time to time in its sole discretion. 

Australia: Tomora Technologies
Phone:	61 2 9953 0533
Fax:  61 2 8704 8582
Email: enquiries@tomora.com.au
Web: www.tomora.com.au

Canada: Absolute Software Corporation
Absolute Software Corporation
Suite 800 - 111 Dunsmuir Street
Vancouver, BC, Canada
V6B 6A3
Tel 1 800 220 0733 or 604 730 9851
Fax 604 730 2621
www.absolute.com

United Kingdom 
Eurotechnix Ltd of 5 Langley Business Court, Beedon Newbury, Berks, RG20 8RY  
Telephone: 01635 247100
www.eurotechnix.co.uk
</textarea> 
              </p>

						</td>
					</tr>
<form name="Manage" method="post" action="ctmweb.xml" id="Form1">

					<tr>
						<td align="center">
							<br />Do you accept all the terms of the License Agreement?<br />
								To install Computrace you must accept this agreement.<br /><br />
						</td>
					</tr>
					<tr>
						<td align="center">
							<input id="Back" type="submit" value="Back" name="Back" onclick="return Back_onclick();"/>
							<img src="spacer.gif" alt=" " width="5" />
							<input id="AcceptAgr" type="submit" value="Yes" name="AcceptAgr" onclick="return AcceptAgr_onclick();"/>
							<img src="spacer.gif" alt=" " width="5" />
							<input id="NoAcceptAgr" type="submit" value="No" name="NoAcceptAgr" onclick="return NoAcceptAgr_onclick();"/>
						</td>
					</tr>
					<tr>
						<td><input id="HiddenNext" type="hidden" value="Inst2" name="HiddenNext"/>
            <input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
            <input id="HiddenPrev" type="hidden" value="Intro" name="HiddenPrev"/>
            <input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
            <input id="HiddenExit" type="hidden" value="Confirm" name="HiddenExit"/>
            <input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
            <input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/><br /><br />

						</td>
					</tr>
</form>

				</table>
			</td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>

</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Inst2']">
<html>
	<head>
		<title>Computrace Install</title>
		<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Back_onclick()
{
    GFrm().HiddenNext.value="Inst1";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();
}

function Next_onclick()
{
    GFrm().HiddenNext.value="InstPass";
    GFrm().HiddenPressedButton.value="Next=Next";
    GFrm().submit();
}

function Confirm2_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="Confirm2=Confirm2";
    GFrm().submit();
}

function preload()
{
	if ((navigator.userAgent.indexOf('Mac OS X')>= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{
		document.all["winname"].innerHTML = " ";
	}

}
		</script>
	</head>
<body onload="javascript:preload();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Form1">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center">
			<table id="Table1" cellspacing="1" width="80%" cellpadding="1" border="0" style="font-size:12px ">
				<tr>
					<td align="center"><br /><img src="logo_computrace.gif" alt="Logo" width="250" height="54" /></td>
				</tr>
				<tr><td><table border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
          	<tr>
          		<td><img src="warning.gif" alt=" " width="32" height="32" /></td>
          		<td><b>Warning</b> </td>
          		</tr>
          	</table></td>
					</tr>
				<tr>
					<td>
						<p><br />It is strongly recommended that you exit all 
							<span id="winname">Windows</span></p>
							applications before running this installation.
						<p>Before installing Computrace, be aware of the following:</p>
						<ol>
							<li> Use a virus-scanning program to make sure that you don't have a virus on your 
									hard drive.</li>
							<li> Disable all resident virus-scanning programs (re-activate upon completion of 
									Computrace install).</li>
							<li> For security reasons, do not copy any components of Computrace to your hard 
									drive.</li>
							<li> You will need details of the computer including make, model, serial number.</li>
						</ol></td>
				</tr>
				<tr>
					<td align="right" style="HEIGHT: 29px"><input id="Submit1" type="submit" value="Back" name="Back" language="javascript" onclick="return Back_onclick()" /><img src="spacer.gif" alt=" " width="5" />
						<input id="Submit2" type="submit" value="Next" name="Next" language="javascript" onclick="return Next_onclick()" /><img src="spacer.gif" alt=" " width="5" />
						<input id="Submit3" type="submit" value="Cancel" name="Confirm2" language="javascript"
							onclick="return Confirm2_onclick()" /> </td>
				</tr>
				<tr>
					<td><input id="Hidden1" type="hidden" value="InstPass" name="HiddenNext" /> 
							<input id="Hidden2" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL" />
							<input id="Hidden3" type="hidden" value="Inst1" name="HiddenPrev" /> 
							<input id="Hidden4" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL" />
							<input id="Hidden5" type="hidden" value="Confirm" name="HiddenExit" /> 
							<input id="Hidden6" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL" />
							<input id="Hidden7" type="hidden" value="none" name="HiddenPressedButton" />
					</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>		
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='InstPass']">
<html>
<head>
<title>Enter Password</title>
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Back_onclick()
{
    GFrm().HiddenNext.value="Inst2";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();
}

function Next_onclick()
{
    GFrm().HiddenNext.value="InstStatus";
    GFrm().HiddenPressedButton.value="InstallParam=Next";
    GFrm().submit();
}

function Confirm2_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="Confirm2=Cancel";
    GFrm().submit();
}
function focusFirstItem()
{
// This will only work IF we have
// an element to focus on
if ( document.forms[0] )
document.forms[0].elements[0].focus();
}


function validateform() {
	var frm = document.Manage;
  if (frm.Passinst.value == "") { 
    alert ("Please select a password"); 
		frm.Passinst.focus();
		return false;
	}
	if (frm.Passinst.value != frm.ConfPassInst.value) { 
    alert ("Your confirmed password does not match the entered password"); 
		frm.ConfPassInst.focus();
		return false;
	}
	if (frm.Passinst.value.indexOf(" ") > -1) {
		alert ("Please do not use spaces in the entered password");
		frm.Passinst.focus();
		return false;
	}
	return Next_onclick();
}
</script>		
</head>
<body onLoad="javascript:focusFirstItem();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form id="Form1" name="Manage" action="ctmweb.xml" method="post" onSubmit="return validateform();">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table id="Table1" width="80%" cellspacing="0" cellpadding="5" border="0" style="font-size:12px">
					<tr align="center">
						<td colspan="2"><br /><img src="logo_computrace.gif" alt=" " width="250" height="54" /></td>
					</tr>
					<tr>
						<td colspan="2"><br />Please enter password twice that you will remember:
							<p>This will be used to protect your copy of Computrace and will allow access to the Computrace Manager.</p></td>
					</tr>
					<tr>
						<td> New Password: </td>
						<td><input name="Passinst" type="password" id="PassInst" size="40" maxlength="15" />
						</td>
					</tr>
					<tr>
						<td> Confirm Password: </td>
						<td><input name="ConfPassInst" type="password" id="ConfPassInst" size="40" maxlength="15" />
						</td>
					</tr>
					<tr align="right">
						<td colspan="2"><input language="javascript" id="Back" onClick="return Back_onclick()" type="button" value="Back" name="Back" /><img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="InstallParam" type="submit" value="Next" name="InstallParam" /><img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="Confirm2" onClick="return Confirm2_onclick()" type="button" value="Cancel" name="Confirm2" />
						</td>
					</tr>
					<tr>
						<td colspan="2"><input id="HiddenNext" type="hidden" value="InstStatus" name="HiddenNext" />
							<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL" />
							<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL" />
							<input id="HiddenExit" type="hidden" value="Confirm" name="HiddenExit" />
							<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL" />
							<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton" />
							<input id="HiddenPrev" type="hidden" value="InstPass" name="HiddenPrev" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='InstStatus']">
<html>
<head>
<title>Install Computrace</title>
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
	function GetElmnt(ElmntName)
	{
		var myReference = null;
		if( document.layers ) //(Only Netscape layers compliant will be true here) or
			myReference = document.layers[ElmntName];
		else
		{
		 if( document['divID'] ) //(Only Netscape alternative compliant will be true here) or
			myReference = document[ElmntName];
		 else
		 {
		  if( document.all ) //(Only IE4+ compliant will be true here) or
			myReference = document.all[ElmntName];
		  else
		  {
		   if( document.getElementById ) //(DOM compliant browsers will be true here)
			myReference = document.getElementById(ElmntName);
		  }
		 }
		}
		return myReference;
        }

function GFrm3()
{
    var Fff;
    if (document.Manage3)
        Fff = document.Manage3;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage3")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[2].firstChild;
    return Fff;
}

function Back_onclick()
{
    GFrm().HiddenNext.value="InstPass";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();
}

function Next_onclick()
{
    GFrm().HiddenNext.value="Status";
    GFrm().HiddenPressedButton.value="InstallParam=Finish";
    GFrm().submit();
}

function Confirm2_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="Confirm2=Cancel";
    GFrm().submit();
}

function IPOpt_onclick()
{
    GFrm3().HiddenNext.value="IPOpt";
    GFrm3().HiddenPressedButton.value="IPOpt=IP Option";
    GFrm3().submit();

}

function DialingOpt_onclick()
{
    GFrm3().HiddenNext.value="DialOpt";
    GFrm3().HiddenPressedButton.value="DialingOpt=Dialing options";
    GFrm3().submit();
}

function focusFirstItem()
{
    var S1 = "+edrive+otrack+trace113D6K347EAA0SKO0000";
    var S2 = "9269210207";
    var S3 = "5948730959";
    var S4 = S2 + S3;
    if (S1.indexOf(S4) > -1)
    {
    }
    else
    {
        S2 = S1.substr(20,20);
        GFrm().FieldEsN.value = S2;
        GFrm().FieldEsN.disabled = true;

    }
            sMakeInst = &quot;<xsl:value-of select="MakeInst"/>&quot;;
            GFrm().ComputerMake.value = sMakeInst;
            sModelInst = &quot;<xsl:value-of select="ModelInst"/>&quot;;
            GFrm().ComputerModel.value = sModelInst;
            sSerialNumberInst = &quot;<xsl:value-of select="SerialNumberInst"/>&quot;;
            GFrm().ComputerSerial.value = sSerialNumberInst;
            sAssetNumberInst = &quot;<xsl:value-of select="AssetNumberInst"/>&quot;;
            GFrm().ComputerAsset.value = sAssetNumberInst;

	if ((navigator.userAgent.indexOf('Mac OS X')>= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
	{

	}
	else
	{
		GetElmnt("MACPass").innerHTML = " ";
	}
// This will only work IF we have
// an element to focus on
if ( document.forms[0] )
document.forms[0].elements[0].focus();
}

function validateform() {
    if (GFrm().FieldEsN.value.length == 20)
    {
        if (GFrm().FieldEsN.value.substr(16,4) == '0000')
        {
           GFrm().ESNInst.value = GFrm().FieldEsN.value;
        }
        else
        {
           alert("Last 4 digits in ESN have to be 0000");
           GFrm().FieldEsN.focus();
           return false;
        }
    }
    else
    {
       alert("ESN has to be 20 characters of length");
       GFrm().FieldEsN.focus();
       return false;
    }
    
    if (GFrm().ComputerMake.value == "" || GFrm().ComputerMake.value.length >=20)
    {
       alert("Make has to be maximum 19 characters of length");
       GFrm().ComputerMake.focus();
       return false;
    }
	
    if (GFrm().ComputerModel.value == "" || GFrm().ComputerModel.value.length >=20)
    {
       alert("Model has to be maximum 19 characters of length");
       GFrm().ComputerModel.focus();
       return false;
    }

    if (GFrm().ComputerSerial.value == "" || GFrm().ComputerSerial.value.length >=15)
    {
       alert("Serial has to be maximum 14 characters of length");
       GFrm().ComputerSerial.focus();
       return false;
    }

    if ((navigator.userAgent.indexOf('Mac OS X')>= 0) || (navigator.userAgent.indexOf('Mac_PowerPC') >= 0))
    {
       if (GFrm().MacAdmnPass.value == "")
       {
          alert("Please input Mac Admin Password");
          GFrm().MacAdmnPass.focus();
          return false;
       }
    }
    
    return Next_onclick();
}


		</script>
</head>
<body onLoad="javascript:focusFirstItem();" onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form id="Manage" name="Manage" action="ctmweb.xml" method="post" onSubmit="return validateform();">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table id="Table1"	cellspacing="0" cellpadding="5" width="80%" border="0" style="font-size:12px ">
					<tr align="center">
						<td colspan="2"><br /><img src="logo_computrace.gif" alt=" " width="250" height="54" /></td>
					</tr>
<span id="MACPass">
<tr>
<td>Mac Admin password (required to install) :</td>
<td>
		<input name="MacAdmnPass" type="password" id="MacAdmnPass" size="32" maxlength="14" />
		</td>
</tr>
</span>
					<tr>
						<td>ESN: </td>
						<td><input name="FieldEsN" type="text" id="FieldEsN" size="32" maxlength="20" />
						<input name="ESNInst" id="ESNInst" type="hidden"/>
						</td>
					</tr>
					<tr>
						<td>Computer Make: </td>
						<td><input name="ComputerMake" type="text" id="ComputerMake" size="32" maxlength="19" /></td>
					</tr>
					<tr>
						<td>Computer Model:</td>
						<td><input name="ComputerModel" type="text" id="ComputerModel" size="32" maxlength="19" /></td>
					</tr>
					<tr>
						<td>Computer Serial Number: </td>
						<td><input name="ComputerSerial" type="text" id="ComputerSerial" size="32" maxlength="14" /></td>
					</tr>
					<tr>
						<td>Computer Asset Number:</td>
						<td><input name="ComputerAsset" type="text" id="ComputerAsset" size="32" maxlength="14" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input language="javascript" id="IPOpt" onclick="return IPOpt_onclick()" type="button"
							value="IP Options" name="IPOpt" />
						</td>
					</tr>
					<tr align="right">
						<td colspan="2"><br /><br /><input language="javascript" id="Back" onclick="return Back_onclick()" type="button" value="Back"
							name="Back" />
							<img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="InstallParam" type="submit"
							value="Finish" name="InstallParam" />
							<img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="Confirm2" onclick="return Confirm2_onclick()" type="button"
							value="Cancel" name="Confirm2" />
						</td>
					</tr>
					<tr>
						<td colspan="2"><input id="HiddenExit" type="hidden" value="Confirm" name="HiddenExit" />
							<input id="HiddenNext" type="hidden" value="InstDone" name="HiddenNext" />
							<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL" />
							<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL" />
							<input id="HiddenPrev" type="hidden" value="Error" name="HiddenPrev" />
							<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL" />
							<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton" />
							</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
<form id="Manage3" name="Manage3" action="ctmweb.xml" method="post">
	<input id="Hidden1" type="hidden" value="InstStatus" name="HiddenNext"/>
	<input id="Hidden2" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
	<input id="Hidden3" type="hidden" value="InstPass" name="HiddenPrev"/>
	<input id="Hidden4" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
	<input id="Hidden5" type="hidden" value="Confirm2" name="HiddenExit"/>
	<input id="Hidden6" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
	<input id="Hidden7" type="hidden" value="none" name="HiddenPressedButton"/>
</form>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='IPOpt']">
<html>
<head>
<title>IP Options</title>
<meta name="vs_defaultClientScript" content="JavaScript" />
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
<meta name="GENERATOR" content="Microsoft FrontPage 4.0" />
<meta name="ProgId" content="FrontPage.Editor.Document" />
<meta name="Originator" content="Microsoft Visual Studio.NET 7.0" />
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Back_onclick()
{
    GFrm().HiddenNext.value="InstStatus";
    GFrm().HiddenPressedButton.value="Confirm2=Confirm2";
    GFrm().submit();
}

function Next_onclick()
{
    GFrm().HiddenNext.value="IPOpt";
    GFrm().HiddenPressedButton.value="Next=Next";
    GFrm().submit();
}

function Confirm2_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="Confirm=Confirm";
    GFrm().submit();
}

		</script>
</head>
<body onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Form1">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="80%" border="0" cellpadding="0" cellspacing="5" id="Table1" style="font-size:12px">
					<tr>
						<td colspan="2">IP Proxy Authentication Account:</td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><input name="ProxInst" type="text" id="ProxInst" size="40" maxlength="27" />
						</td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input name="InstProxP" type="password" id="InstProxP" size="40" maxlength="13" />
						</td>
					</tr>
					<tr align="right">
						<td colspan="2"><input language="javascript" id="InstallParam" onclick="return Back_onclick()" type="submit"
							value="Done" name="Param" />
							<img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="Next" disabled="yes" onclick="return Next_onclick()" type="submit"
							value="Next" name="Next" />
							<img src="spacer.gif" alt=" " width="5" />
							<input language="javascript" id="Confirm2" onclick="return Confirm2_onclick()" type="submit"
							value="Cancel" name="Confirm2" />
						</td>
					</tr>
					<tr>
						<td colspan="2"><input id="HiddenNext" type="hidden" size="11" value="Inst2" name="HiddenNext" />
							<input id="HiddenNextXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenNextXSL" />
							<input id="HiddenPrev" type="hidden" size="11" value="Intro" name="HiddenPrev" />
							<input id="HiddenPrevXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenPrevXSL" />
							<input id="HiddenExit" type="hidden" size="11" value="Confirm" name="HiddenExit" />
							<input id="HiddenExitXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenExitXSL" />
							<input id="HiddenPressedButton" type="hidden" size="11" value="none" name="HiddenPressedButton" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='DialOpt']">
<html>
<head>
<title>Modem Options</title>
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
function Back_onclick()
{
    GFrm().HiddenNext.value="InstStatus";
    GFrm().HiddenPressedButton.value="Back=Back";
    GFrm().submit();
}

function Next_onclick()
{
    GFrm().HiddenNext.value="DialOpt";
    GFrm().HiddenPressedButton.value="Next=Next";
    GFrm().submit();
}

function Confirm2_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="Confirm2=Confirm2";

    GFrm().submit();
}

function VerifyModem_onclick()
{
    GFrm().HiddenNext.value="Confirm";
    GFrm().HiddenPressedButton.value="VerifyModem=VerifyModem";
    GFrm().submit();
}

		</script>
</head>
<body onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Manage">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table id="Table1" cellspacing="0" cellpadding="5" width="80%" border="0" style="font-size:12px">
		<tr>
			<td><br /><br />Set Dialing Options:</td>
		</tr>
		<tr>
			<td><input id="RbDirectInst" type="radio" value="Radio1" name="RGInst" />
				Direct Dial (1877 555-1234) </td>
		</tr>
		<tr>
			<td><input id="RbPBX9inst" type="radio" value="Radio2" name="RGInst" />
				PBX9 (9, 1877 555-1234) </td>
		</tr>
		<tr>
			<td><input id="RbPBX8Inst" type="radio" value="Radio3" name="RGInst" />
				PBX8 (8, 1877 555-1234) </td>
		</tr>
		<tr>
			<td><input id="RbCustomInst" type="radio" value="Radio4" name="RGInst" />
				Custom Pre-dial<br />
				<input id="InstCustomPr" type="text" size="21" name="Text1" />
                </td>
		</tr>
		<tr>
			<td align="right"><input language="javascript" id="InstallParam" onClick="return Back_onclick()" type="submit"
							value="Done" name="InstallParam" />
				<img src="spacer.gif" alt=" " width="5" />
				<input language="javascript" id="Next" disabled="yes" onClick="return Next_onclick()" type="submit"
							value="Next" name="Next" />
				<img src="spacer.gif" alt=" " width="5" />				<input language="javascript" id="Confirm2" onClick="return Confirm2_onclick()" type="submit"
							value="Cancel" name="Confirm2" />
			</td>
		</tr>
		<tr>
			<td>
				<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL" />
				<input id="HiddenExit" type="hidden" value="Confirm1" name="HiddenExit" />
				<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL" />
                                <input id="HiddenNext" type="hidden" value="InstStatus" name="HiddenNext" />
				<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL" />
				<input id="HiddenPrev" type="hidden" value="Intro" name="HiddenPrev" />

				<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton" /></td>
		</tr>
	</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Error']">
<html>
<head>
<title>Computrace Error</title>
<script language="JavaScript" type="text/javascript">
function Unload()
{
   if ((window.event.altKey) ||
       ((window.event.clientX &lt; document.body.offsetWidth) &amp;&amp;
        (window.event.clientX &gt; document.body.clientWidth)
       )
      )
      window.open("ctmweb.xml?Cancel=Cancel_HiddenNext=Cancel")
}

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
//function Rc()
//{
//    s = &quot;<xsl:value-of select="ErrorMessage"/>&quot;;
//    GFrm().ErrorCode.value=s;
//}
</script>
</head>
<body onbeforeunload="return Unload();" style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Manage" language="javascript">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="80%"  border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr>
						<td>Computrace error: <xsl:value-of select="GUIMessage2"/><xsl:value-of select="ErrorMessage"/></td>
					</tr>
					<tr>
						<td align="right"><input id="Cancel" type="submit" value="OK" name="Cancel"/></td>
					</tr>
					<tr>
						<td><input id="HiddenNext" type="hidden" value="Error" name="HiddenNext"/>
							<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
							<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>							
							<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='PostError']">
<html>
<head>
<title>Error</title>
<meta name="vs_defaultClientScript" content="JavaScript"/>
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0"/>
<meta name="ProgId" content="VisualStudio.HTML"/>
<meta name="Originator" content="Microsoft Visual Studio.NET 7.0"/>
<script language="JavaScript" type="text/javascript">
function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}
function Rc()
{
    s = &quot;<xsl:value-of select="RelayLine"/>&quot;;
    GFrm().LastPostCommand.value=s;
    s = &quot;<xsl:value-of select="ExecCommandLine"/>&quot;;
    GFrm().OriginalCommandLine.value=s;
    s = &quot;<xsl:value-of select="ErrorMessage"/>&quot;;
    GFrm().ErrorCode.value=s;
    GFrm().submit();

}
</script>
</head>
<body ms_positioning="GridLayout" onload='return Rc();'>
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="http://alexd4/ctmweb/cterror.asp" id="Manage" language="javascript">
	<input id="Cancel" type="submit" value="OK" name="Cancel"/>
	
	Computrace error: <xsl:value-of select="GUIMessage2"/>
	<input id="ErrorCode" type="text" size="3" name="ErrorCode"/>
	<xsl:value-of select="ErrorMessage"/>
	Code:	<input id="LastPostCommand" size="600" type="text" name="LastPostCommand" />
	<input id="OriginalCommandLine" size="600" type="text" name="OriginalCommandLine" />
	<input id="HiddenNext" type="hidden" value="Error" name="HiddenNext"/>
	<input id="HiddenNextXSL" type="hidden" value="ctmweb.xsl" name="HiddenNextXSL"/>
	<input id="HiddenPrev" type="hidden" value="Error" name="HiddenPrev"/>
	<input id="HiddenPrevXSL" type="hidden" value="ctmweb.xsl" name="HiddenPrevXSL"/>
	<input id="HiddenExit" type="hidden" value="Cancel" name="HiddenExit"/>
	<input id="HiddenExitXSL" type="hidden" value="ctmweb.xsl" name="HiddenExitXSL"/>
	<input id="HiddenPressedButton" type="hidden" value="none" name="HiddenPressedButton"/>
</form>
</body>
<script language="JavaScript" type="text/javascript">
//setTimeout('Rc()', 1000);
</script>
</html>
</xsl:template>


















<xsl:template match="ctmagent[@status='Confirm']">
<html>
<head>
<title>Confirm Exit</title>
<script language="JavaScript" type="text/javascript" id="clientEventHandlersJS">

function GFrm()
{
    var Fff;
    if (document.Manage)
        Fff = document.Manage;
    else
    {   
        i = 0;
        while(document.firstChild.childNodes[i].firstChild)
        {
            if (document.firstChild.childNodes[i].firstChild.name == "Manage")
            {
               Fff = document.firstChild.childNodes[i].firstChild;
               break;
            }
            i++;
        }
    }

//        Fff = document.firstChild.childNodes[1].firstChild;
    return Fff;
}

function Cancel_onclick()
{
    GFrm().HiddenNext.value="Cancel";
    GFrm().HiddenPressedButton.value="Cancel=Cancel";
    GFrm().submit();
}

function Resume_onclick()
{
    GFrm().HiddenNext.value="Inst1";
    GFrm().HiddenPressedButton.value="Resume=Resume";
    GFrm().submit();
}
</script>
</head>
<body style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;background-color: #FFFFFF;margin : 0px 0px 0px 0px; ">
<iframe style="height:0px;width:0px;visibility:hidden" src="about:blank"></iframe>
<form name="Manage" method="post" action="ctmweb.xml" id="Form1">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td style="background-color: #CCCCCC;" colspan="2"><img src="spacer.gif" alt="" height="6" /></td>
		</tr>
		<tr>
			<td style="background-color:#3E3F9A;"></td>
			<td style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;padding : 2px 5px 2px 5px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td align="right" style="background-color:#3E3F9A;color:#F0F0F0;font-size:12px;font-weight:bold;"><a href="#" style="color:#CCCCCC; text-decoration:none; ">Help</a><img src="spacer.gif" alt=" " width="6" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td width="14"><img src="Absolute_logo_vertical.gif" width="20" height="234" alt="www.absolute.com" /></td>
			<td align="center"><table width="80%"  border="0" cellspacing="0" cellpadding="0" style="font-size:12px">
					<tr>
						<td align="center"><p>This computrace installation is not completed. 
							To continue setup select resume, to quit select Exit</p>
							<input id="Resume" type="submit" value="Resume" name="Resume" language="javascript" onClick="return Resume_onclick()"/>
							<img src="spacer.gif" alt="" width="5" />
							<input id="Cancel" type="submit" value="Exit" name="Cancel" language="javascript" onClick="return Cancel_onclick()"/>
							<br />
							<input id="HiddenNext" type="hidden" size="11" value="Cancel" name="HiddenNext"/>
							<input id="HiddenNextXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenNextXSL"/>
							<input id="HiddenPrev" type="hidden" size="11" value="Inst1" name="HiddenPrev"/>
							<input id="HiddenPrevXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenPrevXSL"/>
							<input id="HiddenExit" type="hidden" size="11" value="Cancel" name="HiddenExit"/>
							<input id="HiddenExitXSL" type="hidden" size="11" value="ctmweb.xsl" name="HiddenExitXSL"/>
							<input id="HiddenPressedButton" type="hidden" size="11" value="none" name="HiddenPressedButton"/>
						</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td style="	background-color:#CCCCCC;color:#333333;font-size:12px;font-weight:bold;" colspan="2"><img src="spacer.gif" alt="" height="20" /></td>
		</tr>
	</table>
</form>
</body>
</html>
</xsl:template></xsl:stylesheet
>