using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizApplication
{
    public partial class AddTitle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void btnAddQuiz_Click(object sender, EventArgs e)
        {
            string quizTitle = txtQuizTitle.Text;
            Session["quizTitle"] = quizTitle;

            Response.Redirect($"AddQuiz.aspx");
        }
    }
}