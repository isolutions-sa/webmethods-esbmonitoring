<HTML>
<HEAD>

<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">


  <TITLE>Integration Server Extended Settings</TITLE>
  <LINK REL="stylesheet" TYPE="text/css" HREF="webMethods.css">
  <SCRIPT SRC="webMethods.js.txt"></SCRIPT>
</HEAD>

%ifvar mode equals('edit')%

   <BODY onLoad="setNavigation('emailNotification.dsp?fileName=/opt/softwareag/IntegrationServer/instances/default/packages/ESBMonitoring/config/emailNotification.properties', '');">
%else%

   <BODY onLoad="setNavigation('emailNotification.dsp?fileName=/opt/softwareag/IntegrationServer/instances/default/packages/ESBMonitoring/config/emailNotification.properties', '');">

%endif%
  <TABLE WIDTH="100%">
    <TR>
      <TD class="menusection-Settings" colspan="4">
        Email Notification Parameters</TD>
    </TR>
    <TR>

%ifvar action equals('change')%
  %rename propertyFile Todd -copy%
  %invoke ESBMonitoring.emailNotification.services.packages:updatePkgProperties%
    %ifvar message%
      <tr><td colspan="4">&nbsp;</td></tr>
      <TR><TD class="message" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%value fileContent%</TD></TR>
    %endif%
  %endinvoke%
%endif%


    <TR>
      <TD colspan=2>
        <UL>
          %ifvar mode equals('edit')%
          <LI><A HREF="emailNotification.dsp?fileName=/opt/softwareag/IntegrationServer/instances/default/packages/ESBMonitoring/config/emailNotification.properties">Return to Property File Settings</A></LI>
          %else%
          %ifvar pkg matches('Wm*')%
					%else%
          <LI><A HREF="emailNotification.dsp?mode=edit&fileName=/opt/softwareag/IntegrationServer/instances/default/packages/ESBMonitoring/config/emailNotification.properties">Edit Property File Settings</A></LI>
          %endif%%endif%
        </UL>
    </TR>
    <TR>
      <TD><IMG SRC="images/blank.gif" height=10 width=10 border=0></TD>
      <TD>
          <FORM action="emailNotification.dsp?fileName=/opt/softwareag/IntegrationServer/instances/default/packages/ESBMonitoring/config/emailNotification.properties" method="POST">
          <INPUT type="hidden" name="action" value="change">
          <INPUT type="hidden" name="propertyFile" value=%value fileName%>

        <TABLE class="tableForm" %ifvar mode equals('edit')%width="100%"%endif% >

%invoke ESBMonitoring.emailNotification.services.file:readFile%

          <TR>
            <TD class="heading">Property File Settings</TD>
          </TR>

          <TR>
            <TD class="oddcol-l">Key=Value</TD>
          </TR>

          <TR>
            <TD class="evenrow-l">
              %ifvar mode equals('edit')%
              <TEXTAREA style="width:100%" wrap="off" rows=15 cols=40 name="fileContent">%value fileContent%</TEXTAREA>
              %else%
              <TABLE width=100%>
                <TR>
                  <TD><PRE class="fixedwidth">%value fileContent%
</PRE>
                  </TD>
                </TR>
              </TABLE>
              %endif%
            </TD>
          </TR>
          %ifvar mode equals('edit')%
          <TR>
            <TD class="action">
              <INPUT type="submit" name="submit" value="Save Changes">
            </TD>
          </TR>
          %endif%
          </FORM>
          <TR>
%ifvar mode equals('edit')%
            <TD class="oddrow-l">Property File settings are typically changed by WM Support.</TD>
%else%
            <TD class="oddrow-l">Property File settings are typically changed by WM Support.</TD>
%end if%
          </TR>

%endinvoke%
        </TABLE>
      </TD>
    </TR>
  </TABLE>
</BODY>


%endbundle%
