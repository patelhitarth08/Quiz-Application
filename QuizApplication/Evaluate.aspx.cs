using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace QuizApplication
{
    public partial class Evaluate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
                Response.Redirect("Login.aspx");

            string[] keys = Request.Form.AllKeys;
            string keysHtml = "";
            int score = 0;
            int questionCounter = 1; // Counter for question numbering

            foreach (string key in keys)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Dell\\source\\repos\\QuizApplication\\QuizApplication\\App_Data\\quiz.mdf;Integrated Security=True";

                if (int.TryParse(key, out int questionId))
                {
                    string selectQuery = "SELECT * FROM QuizQuestions WHERE QuestionId = @QuestionId";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(selectQuery, connection))
                        {
                            command.Parameters.AddWithValue("@QuestionId", questionId);

                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    string question = reader["QuestionText"].ToString();
                                    string correctAnswer = reader["CorrectAnswer"].ToString();
                                    string opA = reader["OptionA"].ToString();
                                    string opB = reader["OptionB"].ToString();
                                    string opC = reader["OptionC"].ToString();
                                    string opD = reader["OptionD"].ToString();

                                    if (correctAnswer == Request.Form[key])
                                    {
                                        score++;

                                        // Check if the value can be converted to an integer
                                        // Wrap each set of elements in a <div> and apply styling
                                        keysHtml += "<div class='question-container-right'>";
                                        keysHtml += $"<p class='question'><strong>Question {questionCounter}:</strong> {question}</p>";
                                        keysHtml += $"<p class='option'>Option A: {opA}</p>";
                                        keysHtml += $"<p class='option'>Option B: {opB}</p>";
                                        keysHtml += $"<p class='option'>Option C: {opC}</p>";
                                        keysHtml += $"<p class='option'>Option D: {opD}</p>";
                                        keysHtml += $"<p class='selected-answer'><strong>Selected Answer:</strong> {Request.Form[key]}</p>";
                                        keysHtml += $"<p class='correct-answer'><strong>Correct Answer:</strong> {correctAnswer}</p>";
                                        keysHtml += "</div>";
                                    }
                                    else
                                    {
                                        keysHtml += "<div class='question-container-wrong'>";
                                        keysHtml += $"<p class='question'><strong>Question {questionCounter}:</strong> {question}</p>";
                                        keysHtml += $"<p class='option'>Option A: {opA}</p>";
                                        keysHtml += $"<p class='option'>Option B: {opB}</p>";
                                        keysHtml += $"<p class='option'>Option C: {opC}</p>";
                                        keysHtml += $"<p class='option'>Option D: {opD}</p>";
                                        keysHtml += $"<p class='selected-answer'><strong>Selected Answer:</strong> {Request.Form[key]}</p>";
                                        keysHtml += $"<p class='correct-answer'><strong>Correct Answer:</strong> {correctAnswer}</p>";
                                        keysHtml += "</div>";
                                    }

                                    questionCounter++; // Increment the question counter
                                }
                            }
                        }
                    }
                }
            }

            // Display the score at the top with improved styling
            keysHtml = $"<div class='score-container'>" +
                $"<p class='score'>Score: {score}/10</p>" +
                $"</div>" + keysHtml;

            keysLiteral.Text = keysHtml;
        }



        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Session["quizTitle"] = null;
            Response.Redirect($"Dashboard.aspx");
        }



    }
}
