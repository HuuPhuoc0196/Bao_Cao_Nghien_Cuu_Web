<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advertisements.aspx.cs" Inherits="Advertisements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Storing Advertisements in an XML File</title>
</head>
<body bgcolor = "#FF9999">
    <form id="form1" runat="server">
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Click vào hình hoặc vào link để chuyển"></asp:Label>
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Target ="_top" Height="200px" Width="300px" OnAdCreated="AdRotator1_AdCreated"/>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Link..."></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">[HyperLink1]</asp:HyperLink>
    </form>
</body>
</html>
