using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizApplication
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["quizTitle"] = null;

        }

        protected void btnTakeQuiz_Click(object sender, EventArgs e)
        { 
            Response.Redirect($"ViewQuizes.aspx");
        }

        protected void btnAddQuiz_Click(object sender, EventArgs e)
        {
            Response.Redirect($"AddTitle.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect($"Login.aspx");
        }

    }
}