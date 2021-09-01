using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace staff_report
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LENOVO\SQLEXPRESS;Initial Catalog=reportsys;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           // Image1.ImageUrl = "~/LOGO WITH ADDR.png";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select ADNAME from addet where ADID='" +TextBox1.Text + "'and ADPASS='"+TextBox2.Text+"'";
            cmd.Connection = con;
            con.Open();
            dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    //this.MasterPageFile = "~/s.Master";

                    Response.Redirect("staffadd.aspx");

                }
                else
                {
                    con.Close();
                    cmd.CommandText = "select ENAME from staffdet where EMID='" + TextBox1.Text + "' and EPASS='" + TextBox2.Text + "'";
                    cmd.Connection = con;
                    con.Open();
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        //   this.MasterPageFile = "~/Site1.Master";
                        Response.Redirect("webform1.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert(' INVALID ID OR PASSOWRD ')</script>");

                    }
                    con.Close();
                }
           
           


            // Response.Redirect("starep.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           
        }
    }
}