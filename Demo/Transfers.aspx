<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transfers.aspx.cs" Inherits="Transfers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
           #foot{  
            color: aquamarine;
            clear: both;
            background-color:rgb(31, 31, 82);
            text-align: center;
            font-size: 20px;
            width: 100%;
            padding: 15px;
            font-weight: bold;
            padding: 10px;
            border-top: 2px solid #ffffff;
       }
          #Content {
            float: left;
            background-color: aquamarine;
            width: 100%;
            min-height: 800px;
            margin-top: 5px;
            margin-left: 0px;
            margin-bottom: 5px;
            margin-right: 0px;
            border: 1px solid #ffffff;
        }
        
    </style>
</head>
<body bgcolor ="#CCCCFF">
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



    <div id="Content">
    
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000099" Text="Click vào hình hoặc vào link để chuyển"></asp:Label>
                        <br />
                        <br />
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Target ="_top" Height="200px" Width="300px" OnAdCreated="AdRotator1_AdCreated"/>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Link..."></asp:Label>
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server">[HyperLink1]</asp:HyperLink>
                        <br />
        <br />
                        <asp:Button ID="btnThongKe" runat="server" OnClick="btnThongKe_Click" Text="Thông Kê" Width="68px" />
                        <br />
        <br />
        <asp:Label ID="lblMess" runat="server"></asp:Label>
    
                        <br />
                        <br />
    
    </div>


        <div id ="foot">
             Họ và Tên: Lê Hữu Phước</br>
             MSSV: 1551010103</br>
             Sinh viên trường đại học Mở TP.HCM
        </div>



    </form>
</body>
</html>
