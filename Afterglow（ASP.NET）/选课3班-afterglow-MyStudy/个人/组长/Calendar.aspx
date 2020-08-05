<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎</title>
    <link type="text/css" href="Style/easyui.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.fullcalendar.js"></script>
</head>
<body class="easyui-layout">
    <form id="form1" runat="server">
        <div region="center">
            <div class="easyui-fullCalendar" fit="true"></div>
        </div>   
    </form>

</body>
</html>