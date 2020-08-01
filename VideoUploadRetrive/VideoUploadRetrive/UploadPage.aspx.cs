using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data.SqlClient;

namespace VideoUploadRetrive
{
    public partial class UploadPage : System.Web.UI.Page
    {
        public byte[] imgdata { set; get; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                SqlConnection con = new SqlConnection("server=BALAJI-PC\\SQLEXPRESS1;uid=sa;pwd=sts123;database=Reference");
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("~/videos/" + FileUpload1.FileName));//Img to save to path
                string pat = Path.GetFullPath(Server.MapPath("~/videos/" + FileUpload1.FileName));//Open img from the saved path 
                FileStream fs = new FileStream(pat, FileMode.Open, FileAccess.Read); ;//Go to filestream path and read
                BinaryReader br = new BinaryReader(fs);//Readfilestream to binary reader to read like 0,1
                imgdata = br.ReadBytes((Int32)fs.Length);//Save img into byte array

                string qu = "insert into tbl_image1 values('" + TextBox1.Text + "',@img)";
                SqlCommand cmd = new SqlCommand(qu, con);
                cmd.Parameters.Add("@img", SqlDbType.VarBinary).Value = imgdata;
                cmd.ExecuteNonQuery();
                BindGrid();
                con.Close();
                Response.Write("<script>alert('File Upload Successfully')</script>");
            }
        }

        private void BindGrid()
        {
            
        }
    }
}