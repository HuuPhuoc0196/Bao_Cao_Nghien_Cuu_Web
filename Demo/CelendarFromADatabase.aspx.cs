using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class CelendarFromADatabase : System.Web.UI.Page
{
    string cnStr = "";
    SqlConnection cnn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        cnStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\DemoCelendar.mdf;Integrated Security=True;Connect Timeout=30";
        cnn = new SqlConnection(cnStr);
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtNgaySinh.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void ibtnCelendar_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = !Calendar1.Visible;
    }

    private void Cancel()
    {
        txtMa.Text = "";
        txtHo.Text = "";
        txtTen.Text = "";
        txtNgaySinh.Text = "";
        Label6.Text = "";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Cancel();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Label6.Text = Label7.Text = "";
        string maNV = "", Ho = "NULL", Ten = "NULL", NgaySinh = "01/01/1995";

        if (txtHo.Text != "") Ho = txtHo.Text;
        if (txtTen.Text != "") Ten = txtTen.Text;
        try
        {
            if (txtMa.Text != "") maNV = txtMa.Text;
            else
            {
                Label6.Text = "Mã nhân viên không hơp lệ!";
                return;
            }
            if (txtNgaySinh.Text != "")
            {
                string[] arr = txtNgaySinh.Text.Split('/');
                NgaySinh = arr[1] + "/" + arr[0] + "/" + arr[2];
            }
        }
        catch (Exception ex)
        {
            Label6.Text = "Ngày thắng nhập vào không hơp lệ!";
            return;
        }

        
        cnn.Open();
        string sql = "INSERT INTO NhanVien VALUES ('" + maNV + "',N'" + Ho + "',N'" + Ten + "','" + NgaySinh + "')";

        SqlCommand cmd = new SqlCommand(sql, cnn);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Label6.Text = "Mã nhập đã tồn tại vui lòng nhập lại mã khác";
            return;
        }
        cnn.Close();

        Cancel();

        Label7.Text = "Thêm thành công 1 nhân viên";
        SelectNhanVien();
    }

    public void SelectNhanVien()
    {
        cnn.Open();

        string sqlSelect = "SELECT MaNV, HoNV, TenNV, CONVERT(nvarchar(50), NgaySinh, 103 ) as NgaySinh FROM NhanVien ORDER BY TenNV";
        SqlCommand cmd = new SqlCommand(sqlSelect, cnn);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cnn.Close();
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataSource = null;
    }
}