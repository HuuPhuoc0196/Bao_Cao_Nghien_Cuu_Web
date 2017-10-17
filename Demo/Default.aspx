<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />    
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Trình chọn ngày" Value="1" NavigateUrl="Celendar.aspx" Target ="_blank"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị lịch từ Database" Value="2" NavigateUrl="CelendarFromADatabase.aspx" Target ="_blank"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong XML" Value="3" NavigateUrl="Advertisements.aspx" Target ="_blank"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong Database" Value="4" NavigateUrl="AdRotatorDatabase.aspx" Target ="_blank"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị vàchuyển" Value="5" NavigateUrl="Transfers.aspx" Target ="_blank"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
    </form>
</body>
</html>
