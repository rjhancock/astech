% include('header', title='Astech - for better MegaMek administration')

% if not veteran:
<p>
  <table>
    <tr width=800px>
      <td width=800px>
        <p>This is a <b>server status</b> page, where you can control MegaMek server and view log files.</p>
        <p>In server status table you can start, or stop MegaMek server.<br />
           MegaMek server will wait for connections on specified port.<br />
           Remember that players (including yourself) have to have the same version of MegaMek to connect.</p>
        <p>MegaMek Server Log table is showing the lastest messages from Megamek installed on Astech webpage. It will show players connecting and disconnecting, their MegaMek version and all possible problems with joining game. It will not autorefresh, so hit F5 from time to time to refresh entire webpage.</p>
      </td>
    </tr>
  </table>
<p>
% end 

<p>&nbsp;</p>

<p>
<table border="0">
  <tr width=750px>
    <td width=250px><b>Server info:</b></td>
    <td width=250px><b>Game password:</b></td>
    <td width=250px><b>Master switch</b></td>
  <tr width=750opx>
    <td width=250px>
        version: {{mtver}}<br />
        address: {{mtdomain}}<br />
        port: {{mtport}}
      </td>
      <td width=250px>
        <form action="/" method="post">
          % if mtpassword:
            <input name="mekpassword" type="text" value="{{mtpassword}}" /><br />
          % end
          % if not mtpassword:
            <input name="mekpassword" type="text" /><br />
          % end
          <font size="-1">(please use only latin characters)</font></br />
          <input value="OK" type="submit" />
        </form>
      <td width=250px>
        % if not mtison:
          <a href="mmturnon"><img src="image/server_off.png"></a>
        % end
        % if mtison:
          <a href="mmturnoff"><img src="image/server_on.png"></a>
        % end
        <!-- <br /><a href="mmrestart">quick restart</a> -->
        <!-- <br /><font size = '-1'>If you turn off the server,<br />
        game in progress will be lost.</font> -->
      </td>
    </tr>
</table>
</p>

<!-- if server is on, display screenshot of Megamek connect window -->
% if mtison:
<p><b>How to connect to Astech Megamek server:</b></p>

<p>
<table width=580px height=345px background="/image/connect_dialog.png" border="1">
  <tr width=243px>
    <td>TO JEST BLEEE</td>
  </tr>
  <tr width=337px>
    <td>BUUFIDSDS</td>
  </tr>
</table>
</p>
% end

<p>&nbsp;</p>

<p>
<table border=0>
  <tr>
    <td width=700px>
      <p><b>Megamek server log</b> (newest first):</p>
    <td>
  </tr>
  % for i in getLogFile:
    <tr>
      <td width=700px>{{i}}</td>
    </tr>
  % end
  <tr><td width=700px>[...]</td></tr>
</table>
<p>

% include('footer')
