using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
namespace WebApplication5
{
    public partial class ADDPOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_SAVE(object sender,EventArgs e)
        {
            using (SqlConnection con =new SqlConnection(@"Data Source =.\SQLExpress;  + User Instance=true;" "Integrated Security=true;" +"AttachDbFilename=C:\\MyPath\\DataBaseName.mdf;",con))
            {

            }
        }
    }
}