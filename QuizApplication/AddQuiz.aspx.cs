using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace QuizApplication
{
    public partial class AddQuiz : System.Web.UI.Page
    {
        // Attribute to store the QuizId
        private int quizId = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null) 
                Response.Redirect("Login.aspx");

            if (Session["quizTitle"] == null)
                Response.Redirect("Dashboard.aspx");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Update the connection string based on your provided code
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dell\\source\\repos\\QuizApplication\\QuizApplication\\App_Data\\quiz.mdf;Integrated Security=True";
            int quizId = -1;

            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dell\\source\\repos\\QuizApplication\\QuizApplication\\App_Data\\quiz.mdf;Integrated Security=True"))
            {
                conn.Open();

                string insertQuery = "INSERT INTO Quiz (QuizTitle) VALUES (@QuizTitle); SELECT SCOPE_IDENTITY()";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@QuizTitle", Session["quizTitle"]);

                quizId = Convert.ToInt32(cmd.ExecuteScalar());
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Loop through each question and insert it into the QuizQuestions table
                for (int i = 1; i <= 10; i++)
                {
                    string questionText = ((TextBox)FindControl($"txtQuestion{i}")).Text;
                    string optionA = ((TextBox)FindControl($"txtOptionA{i}")).Text;
                    string optionB = ((TextBox)FindControl($"txtOptionB{i}")).Text;
                    string optionC = ((TextBox)FindControl($"txtOptionC{i}")).Text;
                    string optionD = ((TextBox)FindControl($"txtOptionD{i}")).Text;
                    string correctAnswer = ((DropDownList)FindControl($"ddlCorrectAnswer{i}")).SelectedValue;

                    // Insert the data into the QuizQuestions table with the associated QuizId
                    string insertQuestionQuery = "INSERT INTO QuizQuestions (QuizId, QuestionText, OptionA, OptionB, OptionC, OptionD, CorrectAnswer) " +
                                                 "VALUES (@QuizId, @QuestionText, @OptionA, @OptionB, @OptionC, @OptionD, @CorrectAnswer)";


                    SqlCommand insertQuestionCommand = new SqlCommand(insertQuestionQuery, connection);
                    
                    
                    
                    int myId = quizId;
                    insertQuestionCommand.Parameters.AddWithValue("@QuizId", myId);
                    insertQuestionCommand.Parameters.AddWithValue("@QuestionText", questionText);
                    insertQuestionCommand.Parameters.AddWithValue("@OptionA", optionA);
                    insertQuestionCommand.Parameters.AddWithValue("@OptionB", optionB);
                    insertQuestionCommand.Parameters.AddWithValue("@OptionC", optionC);
                    insertQuestionCommand.Parameters.AddWithValue("@OptionD", optionD);
                    insertQuestionCommand.Parameters.AddWithValue("@CorrectAnswer", correctAnswer);

                    insertQuestionCommand.ExecuteNonQuery();
                }
            }
            Session["quizId"] = null;
            Response.Redirect($"Dashboard.aspx");
        }
    
    }
}
