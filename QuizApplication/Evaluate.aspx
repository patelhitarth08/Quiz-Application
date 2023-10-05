<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evaluate.aspx.cs" Inherits="QuizApplication.Evaluate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style>
    .score-container {
        text-align: center;
        background-color: #007BFF;
        color: #fff;
        padding: 15px;
        margin-top: 20px;
        margin-bottom: 20px;
        border-radius: 5px;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

    .score {
        font-weight: bold;
        font-size: 24px;
        margin: 0;
    }

    .question-container-wrong {
        border: 1px solid #ddd;
        padding: 15px;
        background-color: lightcoral;
        margin-bottom: 15px;
        border-radius: 5px;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

    .question-container-right {
        border: 1px solid #ddd;
        background-color: lightgreen;
        padding: 15px;
        margin-bottom: 15px;
        border-radius: 5px;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

    .question {
        font-weight: bold;
        margin-bottom: 10px;
    }

    .option {
        margin: 0;
    }

    .selected-answer {
        font-weight: bold;
    }

    .correct-answer {
        font-weight: bold;
        color: green;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Quiz Application</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
<asp:Button ID="btnDashboard" runat="server" Text="Dashboard" OnClick="btnDashboard_Click"
                                CssClass="btn btn-success mx-2" />

                </li>
            </ul>
        </div>
    </div>
</nav>
   
        <div>

            <asp:Literal ID="keysLiteral" runat="server"></asp:Literal>
        </div>
        </form>
</body>
</html>
