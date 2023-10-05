using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace QuizApplication
{
    public partial class ViewQuizes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
                Response.Redirect("Login.aspx");
            if (!IsPostBack)
            {
                // Update the connection string based on your provided code
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dell\\source\\repos\\QuizApplication\\QuizApplication\\App_Data\\quiz.mdf;Integrated Security=True";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string selectQuery = "SELECT QuizId, QuizTitle FROM Quiz";
                    SqlDataAdapter adapter = new SqlDataAdapter(selectQuery, connection);
                    DataTable dt = new DataTable();

                    adapter.Fill(dt);

                    // Bind the DataTable to the GridView
                    gvQuizzes.DataSource = dt;
                    gvQuizzes.DataBind();
                }
            }
        }

        protected void btnTakeQuiz_Click(object sender, EventArgs e)
        {
            // Retrieve the QuizId from the clicked button's CommandArgument
            Button btnTakeQuiz = (Button)sender;
            int quizId = Convert.ToInt32(btnTakeQuiz.CommandArgument);

            // Redirect to the quiz page with the selected QuizId
            Response.Redirect($"QuizPage.aspx?QuizId={quizId}");
        }

    }
}
