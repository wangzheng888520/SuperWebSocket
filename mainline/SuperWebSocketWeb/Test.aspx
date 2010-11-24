﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="SuperWebSocketWeb.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var start = function () {
            var inc = document.getElementById('incomming');
            inc.innerHTML += "connecting to server ..<br/>";

            // create a new websocket and connect
            var ws = new WebSocket('ws://localhost:911/sample');

            // when data is comming from the server, this metod is called
            ws.onmessage = function (evt) {
                inc.innerHTML += evt.data + '<br/>';
            };

            // when the connection is established, this method is called
            ws.onopen = function () {
                inc.innerHTML += '.. connection open<br/>';
            };

            // when the connection is closed, this method is called
            ws.onclose = function () {
                inc.innerHTML += '.. connection closed<br/>';
            }
        }
        window.onload = start;
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <pre id="incomming"></pre>
    </div>
    </form>
</body>
</html>