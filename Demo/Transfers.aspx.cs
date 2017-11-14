using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Transfers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        HyperLink1.Text = e.AlternateText;
        HyperLink1.NavigateUrl = e.NavigateUrl;
        Update();
    }

    private void Update()
    {
        int soluong = ThongKe() + 1;
        string cnStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\DemeTransf.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection cnn = new SqlConnection(cnStr);
        string sql = "UPDATE ChuyenTrang SET SoLuong = @soluong WHERE ID = 'T001'";
        SqlCommand cmd = new SqlCommand(sql, cnn);
        cmd.Parameters.AddWithValue("@soluong", soluong);
        try
        {
            cnn.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            lblMess.Text = "Lỗi" + ex.Message;
            return;
        }
        finally
        {
            cnn.Close();
        }
    }

    private int ThongKe()
    {
        int soluong = 0;
        string cnStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\DemeTransf.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection cnn = new SqlConnection(cnStr);
        string sql = "SELECT SoLuong FROM ChuyenTrang WHERE ID = 'T001'";
        SqlCommand cmd = new SqlCommand(sql, cnn);
        try
        {
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            soluong = (int)reader["SoLuong"];
        }
        catch (Exception ex)
        {
            lblMess.Text = "Lỗi" + ex.Message;
        }
        finally
        {
            cnn.Close();
        }

        return soluong;
    }
    protected void btnThongKe_Click(object sender, EventArgs e)
    {
        lblMess.Text = "Số lần bạn click Quảng Cáo là: " + ThongKe();
    }
}