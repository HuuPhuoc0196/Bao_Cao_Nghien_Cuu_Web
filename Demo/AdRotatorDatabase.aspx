<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdRotatorDatabase.aspx.cs" Inherits="AdRotatorDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Storing Advertisements in a Database Table.</title>
</head>
<body bgcolor ="#9999FF">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0000CC" Text="Quảng cáo được lấy từ cơ sở dữ liệu"></asp:Label>
        <br />
    
        <br />
    
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="SqlDataSource1" Height="200px" Width="300px" OnAdCreated="AdRotator1_AdCreated" />
        &nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [AdList]"></asp:SqlDataSource>
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black">Link...</asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
