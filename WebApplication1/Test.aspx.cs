using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSearch_Click(null, null);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            lbResult.Items.Clear();
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MISStudentConnectionString"].ConnectionString))
            {
                cn.Open();
                using (SqlCommand cmd = cn.CreateCommand())
                {
                    cmd.CommandText = "select * from student where student_Name like @name";
                    cmd.Parameters.Add(new SqlParameter("@name", "%" + txtSearch.Text + "%"));
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while ((dr.Read()))
                        {
                            lbResult.Items.Add(dr.GetSqlInt32(0).ToString() + "\t" + dr.GetSqlString(1).ToString());
                        }
                        dr.Close();
                    }
                }

            }
        }

    }
}