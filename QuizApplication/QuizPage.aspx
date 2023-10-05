<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuizPage.aspx.cs" Inherits="QuizApplication.QuizPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <title>Quiz Page</title>
    <style>
    body {
        background-color: #f5f5f5;
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 0;
        padding: 0;
    }

    .myContainer {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        margin: 20px auto;
        max-width: 800px;
        padding: 20px;
    }

    h1 {
        color: #007bff;
    }

    .quiz-questions {
        text-align: left; /* Align quiz questions to the left */
        margin-top: 20px; /* Add some spacing from the top */
    }

    .quiz-questions p {
        font-size: 18px;
        margin-bottom: 10px;
    }

    /* Define a CSS class */
.radio-label {
    margin-right: 5px;
    font-weight: normal;
}


    /* Add more CSS styling as needed */
</style>

</head>
<body>
    <form id="form1" action="Evaluate.aspx" method="post" runat="server">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Quiz Application</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="btn btn-success mx-2" href="/Dashboard.aspx">Dashboard</a>


                </li>
            </ul>
        </div>
    </div>
</nav>
        <div class="myContainer">

        <div>
            <h1>Quiz Page</h1>
            <div class="quiz-questions">
                <asp:Literal ID="quizQuestionsLiteral" runat="server"></asp:Literal>
            </div>
            <asp:Label ID="lblResult" runat="server" Visible="false"></asp:Label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</body>
</html>
