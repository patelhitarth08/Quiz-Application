using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace QuizApplication
{
    public partial class QuizPage : System.Web.UI.Page
    {
        private int quizId = -1;
        private DataTable quizQuestionsTable
        {
            get
            {
                if (ViewState["QuizQuestionsTable"] == null)
                {
                    ViewState["QuizQuestionsTable"] = new DataTable();
                }
                return (DataTable)ViewState["QuizQuestionsTable"];
            }
            set
            {
                ViewState["QuizQuestionsTable"] = value;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
                Response.Redirect("Login.aspx");

            if (!IsPostBack && Request.QueryString["QuizId"] != null)
            {
                if (int.TryParse(Request.QueryString["QuizId"], out int id))
                {
                    quizId = id;
                    LoadQuestions();
                }
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            // Initialize the DataTable during page initialization
            quizQuestionsTable = new DataTable();
        }

        private void LoadQuestions()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dell\\source\\repos\\QuizApplication\\QuizApplication\\App_Data\\quiz.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string selectQuery = "SELECT * FROM QuizQuestions WHERE QuizId = @QuizId";
                SqlDataAdapter adapter = new SqlDataAdapter(selectQuery, connection);
                adapter.SelectCommand.Parameters.AddWithValue("@QuizId", quizId);

                // Fill the DataTable with quiz questions
                adapter.Fill(quizQuestionsTable);

                // Generate HTML for quiz questions
                string quizQuestionsHtml = "";
                for (int i = 0; i < quizQuestionsTable.Rows.Count; i++)
                {
                    DataRow row = quizQuestionsTable.Rows[i];
                    string questionText = row["QuestionText"].ToString();
                    string optionA = row["OptionA"].ToString();
                    string optionB = row["OptionB"].ToString();
                    string optionC = row["OptionC"].ToString();
                    string optionD = row["OptionD"].ToString();
                    int questionId = Convert.ToInt32(row["QuestionId"]);

                    string questionHtml = $"<p style='font-weight: bold; font-size: 18px;'>Question {i + 1}: {questionText}</p>";
                    questionHtml += GetOptionsHtml(questionId, optionA, optionB, optionC, optionD);
                    
                    quizQuestionsHtml += questionHtml;
                }

                quizQuestionsLiteral.Text = quizQuestionsHtml;
            }
        }

        private string GetOptionsHtml(int questionId, string optionA, string optionB, string optionC, string optionD)
        {
            // Generate HTML for answer options here based on your data structure.

            // Example: Generate HTML for radio buttons
            string optionsHtml = "";
//            < input type = 'radio' name = '{questionId}' value = 'A' style = 'margin-right: 5px;' > < label style = 'font-weight: normal;' >{ optionA}</ label > < br >

            optionsHtml += $"<input type='radio' name='{questionId}' value='A' style = 'margin-right: 5px;' required > <label style = 'font-weight: normal;' >{optionA}</label> <br>";
            optionsHtml += $"<input type='radio' name='{questionId}' value='B' style = 'margin-right: 5px;' required > <label style = 'font-weight: normal;' >{optionB}</label> <br>";
            optionsHtml += $"<input type='radio' name='{questionId}' value='C' style = 'margin-right: 5px;' required > <label style = 'font-weight: normal;' >{optionC}</label> <br>";
            optionsHtml += $"<input type='radio' name='{questionId}' value='D' style = 'margin-right: 5px;' required > <label style = 'font-weight: normal;' >{optionD}</label> <br>";

            return optionsHtml;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // Process the user's answers here and calculate the result.
            // You need to retrieve the selected answers from the form controls.
            int score = 0;
            // Example: Loop through the questions and retrieve the selected answers
            foreach (DataRow row in quizQuestionsTable.Rows)
            {
                score = 10;
                int questionId = Convert.ToInt32(row["QuestionId"]);
                string selectedAnswer = Request.Form[$"question{questionId}"]; // Get the selected answer for this question
                string correctAnswer = row["CorrectAnswer"].ToString();
                Console.WriteLine(selectedAnswer);
                Console.WriteLine(correctAnswer);
                if (correctAnswer == selectedAnswer)
                {
                    score++;
                }

            }

            // Display the result to the user
            lblResult.Visible = true;
            lblResult.Text = "Quiz result: " + score + "/10";
        }
    }
}
