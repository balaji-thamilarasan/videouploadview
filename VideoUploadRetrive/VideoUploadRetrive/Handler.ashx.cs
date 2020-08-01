using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data.SqlClient;

namespace VideoUploadRetrive
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {
        DataTable dt = new DataTable();
        //SqlConnection con = new SqlConnection("server=BALAJI-PC\\SQLEXPRESS1;uid=sa;pwd=sts123;database=Reference");

        public void ProcessRequest(HttpContext context)
        {
            int id = int.Parse(context.Request.QueryString["id"]);
            //int id = int.Parse("40");
            byte[] bytes;
            //string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string name;
            using ( SqlConnection con = new SqlConnection("server=BALAJI-PC\\SQLEXPRESS1;uid=sa;pwd=sts123;database=Reference"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from tbl_image1 where id=@id";
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    sdr.Read();
                    bytes = (byte[])sdr["image"];
                    
                    name = sdr["name"].ToString();
                    con.Close();
                }
            }
            context.Response.Clear();
            context.Response.Buffer = true;
            context.Response.AppendHeader("Content-Disposition", "attachment; filename=" + name);
            context.Response.BinaryWrite(bytes);
            context.Response.End();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}