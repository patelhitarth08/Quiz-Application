<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuiz.aspx.cs" Inherits="QuizApplication.AddQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Quiz Questions</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Custom CSS for styling */
        .question-container {
            background-color: #f8f9fa;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
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
                    <a class="btn btn-success mx-2" href="/Dashboard.aspx">Dashboard</a>


                </li>
            </ul>
        </div>
    </div>
</nav>
        <div class="container mt-5">

        <div>
            <h2 class="text-center mb-4">Add Quiz Questions</h2>
            
           <!-- Question 1 -->
<div class="question-container">
    <h3>Question 1:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion1" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion1" runat="server" ControlToValidate="txtQuestion1" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA1" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA1" runat="server" ControlToValidate="txtOptionA1" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB1" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB1" runat="server" ControlToValidate="txtOptionB1" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC1" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC1" runat="server" ControlToValidate="txtOptionC1" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD1" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD1" runat="server" ControlToValidate="txtOptionD1" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer1" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer1" runat="server" ControlToValidate="ddlCorrectAnswer1"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 2 -->
<div class="question-container">
    <h3>Question 2:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion2" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion2" runat="server" ControlToValidate="txtQuestion2" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA2" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA2" runat="server" ControlToValidate="txtOptionA2" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB2" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB2" runat="server" ControlToValidate="txtOptionB2" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC2" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC2" runat="server" ControlToValidate="txtOptionC2" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD2" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD2" runat="server" ControlToValidate="txtOptionD2" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer2" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer2" runat="server" ControlToValidate="ddlCorrectAnswer2"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>
<div class="question-container">
    <h3>Question 3:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion3" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion3" runat="server" ControlToValidate="txtQuestion3" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA3" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA3" runat="server" ControlToValidate="txtOptionA3" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB3" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB3" runat="server" ControlToValidate="txtOptionB3" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC3" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC3" runat="server" ControlToValidate="txtOptionC3" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD3" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD3" runat="server" ControlToValidate="txtOptionD3" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer3" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer3" runat="server" ControlToValidate="ddlCorrectAnswer3"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 4 -->
<div class="question-container">
    <h3>Question 4:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion4" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion4" runat="server" ControlToValidate="txtQuestion4" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA4" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA4" runat="server" ControlToValidate="txtOptionA4" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB4" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB4" runat="server" ControlToValidate="txtOptionB4" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC4" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC4" runat="server" ControlToValidate="txtOptionC4" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD4" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD4" runat="server" ControlToValidate="txtOptionD4" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer4" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer4" runat="server" ControlToValidate="ddlCorrectAnswer4"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 5 -->
<div class="question-container">
    <h3>Question 5:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion5" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion5" runat="server" ControlToValidate="txtQuestion5" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA5" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA5" runat="server" ControlToValidate="txtOptionA5" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB5" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB5" runat="server" ControlToValidate="txtOptionB5" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC5" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC5" runat="server" ControlToValidate="txtOptionC5" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD5" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD5" runat="server" ControlToValidate="txtOptionD5" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer5" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer5" runat="server" ControlToValidate="ddlCorrectAnswer5"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 6 -->
<div class="question-container">
    <h3>Question 6:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion6" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion6" runat="server" ControlToValidate="txtQuestion6" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA6" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA6" runat="server" ControlToValidate="txtOptionA6" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB6" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB6" runat="server" ControlToValidate="txtOptionB6" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC6" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC6" runat="server" ControlToValidate="txtOptionC6" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD6" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD6" runat="server" ControlToValidate="txtOptionD6" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer6" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer6" runat="server" ControlToValidate="ddlCorrectAnswer6"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 7 -->
<div class="question-container">
    <h3>Question 7:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion7" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion7" runat="server" ControlToValidate="txtQuestion7" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA7" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA7" runat="server" ControlToValidate="txtOptionA7" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB7" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB7" runat="server" ControlToValidate="txtOptionB7" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC7" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC7" runat="server" ControlToValidate="txtOptionC7" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD7" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD7" runat="server" ControlToValidate="txtOptionD7" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer7" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer7" runat="server" ControlToValidate="ddlCorrectAnswer7"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 8 -->
<div class="question-container">
    <h3>Question 8:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion8" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion8" runat="server" ControlToValidate="txtQuestion8" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA8" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA8" runat="server" ControlToValidate="txtOptionA8" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB8" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB8" runat="server" ControlToValidate="txtOptionB8" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC8" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC8" runat="server" ControlToValidate="txtOptionC8" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD8" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD8" runat="server" ControlToValidate="txtOptionD8" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer8" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer8" runat="server" ControlToValidate="ddlCorrectAnswer8"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 9 -->
<div class="question-container">
    <h3>Question 9:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion9" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion9" runat="server" ControlToValidate="txtQuestion9" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA9" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA9" runat="server" ControlToValidate="txtOptionA9" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB9" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB9" runat="server" ControlToValidate="txtOptionB9" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC9" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC9" runat="server" ControlToValidate="txtOptionC9" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD9" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD9" runat="server" ControlToValidate="txtOptionD9" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer9" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer9" runat="server" ControlToValidate="ddlCorrectAnswer9"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>

<!-- Question 10 -->
<div class="question-container">
    <h3>Question 10:</h3>
    <div class="form-group">
        <asp:TextBox ID="txtQuestion10" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvQuestion10" runat="server" ControlToValidate="txtQuestion10" InitialValue=""
            ErrorMessage="Question text is required." Display="Dynamic" ForeColor="Red" />
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionA10" runat="server" placeholder="Option A" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionA10" runat="server" ControlToValidate="txtOptionA10" InitialValue=""
                ErrorMessage="Option A is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionB10" runat="server" placeholder="Option B" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionB10" runat="server" ControlToValidate="txtOptionB10" InitialValue=""
                ErrorMessage="Option B is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-row mt-2">
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionC10" runat="server" placeholder="Option C" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionC10" runat="server" ControlToValidate="txtOptionC10" InitialValue=""
                ErrorMessage="Option C is required." Display="Dynamic" ForeColor="Red" />
        </div>
        <div class="col-md-6">
            <asp:TextBox ID="txtOptionD10" runat="server" placeholder="Option D" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="rfvOptionD10" runat="server" ControlToValidate="txtOptionD10" InitialValue=""
                ErrorMessage="Option D is required." Display="Dynamic" ForeColor="Red" />
        </div>
    </div>
    <div class="form-group mt-2">
        <asp:DropDownList ID="ddlCorrectAnswer10" runat="server" CssClass="form-control">
            <asp:ListItem Text="Option A" Value="A" />
            <asp:ListItem Text="Option B" Value="B" />
            <asp:ListItem Text="Option C" Value="C" />
            <asp:ListItem Text="Option D" Value="D" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCorrectAnswer10" runat="server" ControlToValidate="ddlCorrectAnswer10"
            InitialValue="" ErrorMessage="Correct Answer is required." Display="Dynamic" ForeColor="Red" />
    </div>
</div>
            
            <!-- Repeat the above block for the remaining 9 questions (Question 2 to Question 10) by changing the IDs accordingly -->
            <div style="display: flex; justify-content: center;">

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary mb-5" />
            </div>
        </div>
        </div>

    </form>
    <!-- Include Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
