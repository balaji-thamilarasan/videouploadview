using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace VideoUploadRetrive
{
    public partial class VideosPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=BALAJI-PC\\SQLEXPRESS1;uid=sa;pwd=sts123;database=Reference");
            {
                string s = "select * from tbl_image1";
                con.Open();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}