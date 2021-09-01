using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace staff_report
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LENOVO\SQLEXPRESS;Initial Catalog=reportsys;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (object obj in ListBox1.Items)
            {
                string m,k = "";
                m = obj.ToString();
                cmd.CommandText = "select REID from studet where SNAME='" + m + "'";
                cmd.Connection = con;
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    m = dr[0].ToString();
                }
                con.Close();

                for(int i = 0; i<CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected)
                    {
                        if (k == "")
                        {
                            k = CheckBoxList1.Items[i].Text;
                        }
                        else
                        {
                            k+="," + CheckBoxList1.Items[i].Text;
                        }
                    }
                }
                cmd.CommandText = "insert into att(ADATE,ST,REID) values('" + TextBox2.Text + "','" + k + "','" + m+ "')";
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

               
            }
            Response.Write("<script>alert(' saved Successfully..')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            ListBox1.Items.Clear();
            
        }
    }
}