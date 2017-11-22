<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body bgcolor ="#A2D8EA">
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

             <p style="text-align: center" > <b> <font size ="30">Đề tài 2: Displaying a Calendar</font></b></p>
             <h2> <b> <font> I.	Creating a Pop-up Date Picker </font></b></h2>
             <p> Điều khiển Lịch cho phép bạn hiển thị một lịch. Bạn có thể sử dụng lịch làm ngày chọn hoặc để hiển thị một danh sách các sự kiện sắp tới. </p>
             <p> Khi bạn chọn một ngày từ lịch, trang sẽ được gửi trở lại máy chủ và Sự kiện SelectionChanged server-side được nâng lên. Trình xử lý sự kiện SelectionChanged cập nhật các điều khiển TextBox với ngày đã chọn</p>
             
             <h3> * Một số thuộc tính và phương thức của Celendar</h3>
            
              <p> <b> - DayNameFormat: </b> Cho phép chỉ định sự xuất hiện của những ngày trong tuần. Giá trị có thể là FirstLetter, FirstTwoLetters, Full, Short, và Shortest</p>
             <p> <b> - NextMonthText: </b> Chỉ định văn bản xuất hiện cho tháng tiếp theo</p>
             <p> <b> - NextPrevFormat: </b> Định dạng tháng trước đó và tháng kế tiếp</p>
             <p> <b> - PrevMonthText: </b> Chỉ định văn bản xuất hiện cho tháng trước đó</p>
             <p> <b> - SelectedDate: </b> Phần tử date được chọn</p>
             <p> <b> - SelectedDates: </b>Danh sách phần tử date được chọn</p>
             <p> <b> - SelectionMode: </b> Chỉ định ngày được chọn.  Các giá trị có thể là Day, DayWeek, DayWeekMonth và None</p>
             <p> <b> - ShowDayHeader: </b> Cho phép bạn ẩn hoặc hiển thị tên ngày ở Celendar</p>
             <p> <b> - ShowNextPrevMonth: </b> Cho phép ẩn hoặc hiển thị link đến tháng trước hoặc tháng tiếp theo</p>
             <p> <b> - ShowTitle : </b> Cho phép ẩn hoặc hiện trang tiêu đề Celendar</p>
             <p> <b> - TitleFormat : </b> Định dạng hiển thị tiêu đề. Giá trị có thể là Month hoặc MonthYear</p>
             <p> <b> - TodaysDate: </b> Cho phép chỉ định ngày hiện tại</p>
             <p> <b> - VisibleDate : </b> Ẩn hoặc hiển thị Celendar</p>

             <h3> *  Một số sự kiện</h3>
             <p> <b> - SelectionChanged : </b> Sự kiện dược gọi khi chọn 1 ngày bất kỳ trên lịch</p>
             <p> <b> - VisibleMonthChanged : </b> Sự kiện được gọi khi click sang tháng tiếp theo hoặc tháng trước đó</p>
            
             <h3> Hình ảnh minh họa</h3>
             <p> 
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/hinh1.PNG" />
             </p>
             <p> 
                 <asp:Image ID="Image3" runat="server" Height="534px" ImageUrl="~/Image/hinh2.PNG" Width="881px" />
             </p>

             <h2> <b> <font>II.	Rendering a Calendar from a Database Table. </font></b></h2>

             <p>
                 Bạn cũng có thể sử dụng kiểm soát Lịch để hiển thị sự kiện trong lịch. Trong phần này, 
                 xây dựng một ứng dụng lịch biểu đơn giản cho phép bạn chèn, cập nhật, và xóa lịch mục. Mỗi mục nhập lịch trình được đánh dấu trong một điều khiển lịch
             </p>

             <h2> <b> <font>III.	Displaying Advertisements </font></b></h2>

             <p>Điều khiển AdRotator cho phép bạn hiển thị ngẫu nhiên các quảng cáo khác nhau trong một trang. 
                 Bạn có thể lưu trữ danh sách các quảng cáo trong một tệp tin XML hoặc trong một bảng cơ sở dữ liệu
             </p>
             <p>
                         Điều khiển AdRotator bao gồm một thuộc tính KeywordFilter. Bạn có thể cung cấp mỗi biểu ngữ quảng 
                 cáo với một từ khoá và sau đó lọc các quảng cáo hiển thị bởi Điều khiển AdRotator bằng cách sử dụng giá trị của thuộc tính KeywordFilter
             </p>
             <p>
                 Nếu bạn hiển thị nhiều hơn một quảng cáo trong cùng một trang, bạn có thể lọc các quảng cáo theo vùng của trang.
                  Bạn có thể sử dụng KeywordFilter để hiển thị quảng cáo biểu ngữ lớn ở đầu trang và quảng cáo hộp ở cạnh trang
             </p>
             <p>
                 Nếu bạn hiển thị nhiều hơn một quảng cáo trong cùng một trang, bạn có thể lọc các quảng cáo theo vùng của trang. 
                 Bạn có thể sử dụng KeywordFilter để hiển thị quảng cáo biểu ngữ lớn ở đầu trang và quảng cáo hộp ở cạnh trang
             </p>

             <h3> *  Một số thuộc tính và phương thức của Advertisements</h3>
             <p> <b>  - AdvertisementFile : </b> Đường dẫn đến file XML</p>
             <p> <b>  -	AlternateTextField : </b> Cho phép chỉ định một trường hiển thị cụ thể thay cho hình ảnh quảng cáo biểu ngữ. Giá trị mặt định là AlternateText.</p>
             <p> <b>  -	DataMember: </b>  Cho phép bạn liên kết với một thành viên dữ liệu cụ thể trong nguồn dữ liệu</p>
             <p> <b>  -	DataSource: </b> Cho phép bạn chỉ định một nguồn dữ liệu theo chương trình cho danh sách quảng cáo biểu ngữ </p>
             <p> <b>  -	DataSourceID: </b>  Tên nguồn dữ liệu </p>
             <p> <b>  -	ImageUrlField: </b> Tên của hình ảnh cho quảng cáo biểu ngữ. Giá trị mặc định cho trường này là ImageUrl </p>
             <p> <b>  -	KeywordFilter: </b> Từ khóa dùng để lọc quảng cáo </p>
             <p> <b>  -	NavigateUrlField: </b> Đường dẫn khi lích lên hình. Giá trị mặc định cho trường này là NavigateUrl </p>
             <p> <b>  -	Target: </b>  cho phép bạn mở một cửa sổ mới khi người dùng nhấp vào biểu ngữ quảng cáo. </p>
             <h3> *  Một số sự kiện</h3>
             <p> <b>  -	AdCreated: </b> Sự kiện được gọi khi load Advertisements lên </p>

              <h2> <b> <font>IV.	Storing Advertisements in an XML File. </font></b></h2>
             <p>
                 Bạn có thể lưu trữ danh sách quảng cáo mà AdRotator hiển thị trong 
                 một tệp tin XML bằng thiết lập thuộc tính AdvertisementFile của điều khiển AdRotator. lấy ra các quảng cáo biểu ngữ từ một tệp XML
             </p>
             <p>
                 AdRotator đầu tiên có thuộc tính KeyworldFilter có biểu ngữ giá trị và hai điều khiển AdRotator còn lại có thuộc tính KeywordFilter với hộp giá trị. 
                 Các AdRotator đầu tiên chỉ hiển thị quảng cáo biểu ngữ và còn lại hai AdRotator điều khiển quảng cáo hộp chỉ hiển thị
             </p>
             <h3> Hình ảnh minh họa</h3>
             <p> 
                 <asp:Image ID="Image4" runat="server" Height="116px" ImageUrl="~/Image/hinh4.PNG" Width="592px" />
             </p>
             <p> 
                 <asp:Image ID="Image5" runat="server" ImageUrl="~/Image/hinh5.PNG" />
             </p>

              <h2> <b> <font>V.	Storing Advertisements in a Database Table. </font></b></h2>

             <p>
                 Thay vì lưu trữ danh sách các quảng cáo trong một tệp XML, bạn có thể lưu trữ danh sách trong cơ sở dữ liệu Ví dụ: 
                 điều khiển AdRotator bị ràng buộc bởi một kiểm soát SqlDataSource. 
                 Các SqlDataSource kiểm soát đại diện cho các nội dung của một cơ sở dữ liệu, nằm trong cơ sở dữ liệu SQL Express 
             </p>

              <h2> <b> <font>VI.	Tracking Impressions and Transfers.</font></b></h2>
             <p>
                 Thông thường, khi bạn hiển thị các quảng cáo, bạn làm điều đó để kiếm tiền.
                  Nhà quảng cáo của bạn muốn thống kê về tần suất hiển thị quảng cáo của họ (số lần hiển thị) và tần suất quảng cáo của họ được nhấp.
             </p>
             <p>
                 Để theo dõi số lần quảng cáo hiển thị, bạn cần phải xử lý Sự kiện AdCreated của trình kiểm soát AdRotator.
                  Để theo dõi số lần quảng cáo được nhấp vào, bạn cần phải tạo ra một trình điều khiển chuyển hướng
             </p>



        </div>

        <div id ="foot">
             Họ và Tên: Lê Hữu Phước</br>
             MSSV: 1551010103</br>
             Sinh viên trường đại học Mở TP.HCM
        </div>


    </form>

</body>
</html>
