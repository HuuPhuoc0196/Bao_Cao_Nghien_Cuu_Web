<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advertisements.aspx.cs" Inherits="Advertisements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Storing Advertisements in an XML File</title>
    <style>
        #foot{ 
            position: absolute;
            right: 0;
            bottom: 0;
            left: 0;
            background-color:rgb(31, 31, 82);
            text-align: center;
            font-size: 20px;
       }
    </style>
</head>
<body bgcolor = "#FF9999">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/Image/tilte.jpg" Width="100%" />
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />    
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Trang chủ" Value="0" NavigateUrl="Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Trình chọn ngày" Value="1" NavigateUrl="Celendar.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị lịch từ Database" Value="2" NavigateUrl="CelendarFromADatabase.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong XML" Value="3" NavigateUrl="Advertisements.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Lưu trữ quảng cáo trong Database" Value="4" NavigateUrl="AdRotatorDatabase.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Hiển thị vàchuyển" Value="5" NavigateUrl="Transfers.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>



        &nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Click vào hình hoặc vào link để chuyển"></asp:Label>
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Target ="_top" Height="200px" Width="300px" OnAdCreated="AdRotator1_AdCreated"/>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Link..."></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">[HyperLink1]</asp:HyperLink>


        <div id ="foot">
            <table>
                    <tr>
                        <td id="foot">
                        <p>Họ và Tên: Lê Hữu Phước</p>
                        <p>MSSV: 1551010103</p>
                        <p>Sinh viên trường đại học Mở TP.HCM</p>
                        </td>
                    </tr>
            </table>
        </div>

    </form>
</body>
</html>
