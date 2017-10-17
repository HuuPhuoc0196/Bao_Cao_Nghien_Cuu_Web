<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Celendar.aspx.cs" Inherits="Celendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> Celendar </title>
</head>
<body bgcolor = "#ff9933">
    <form id="form1" runat="server">
    <div aria-haspopup="False" lang="ace">
    
        <asp:Label ID="Label1" runat="server" Text="Nhập ngày tháng năm ở ô dưới"></asp:Label>
&nbsp;hoặc click vào biểu tượng
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Width="168px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/Image/DICH-VU-IN-HINH-LEN-LICH-DE-BAN_2013102213553903.jpg" OnClick="ImageButton1_Click1" style="margin-right: 0px" ToolTip="Click me" Width="103px"/>
&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Full" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="213px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="268px" NextMonthText="&gt;" PrevMonthText="&lt;">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    
        <br />
        <br />
        <asp:Label ID="lblMess" runat="server" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
