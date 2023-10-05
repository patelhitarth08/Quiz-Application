<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTitle.aspx.cs" Inherits="QuizApplication.AddTitle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Quiz Title</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" >

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

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-center">Add Quiz Title</h2>
                        <div class="form-group">
                        <asp:TextBox ID="txtQuizTitle" runat="server" CssClass="form-control" placeholder="Enter Quiz Title" />
                        <asp:RequiredFieldValidator ID="rfvQuizTitle" runat="server" ControlToValidate="txtQuizTitle"
                            InitialValue="" ErrorMessage="Quiz Title is required." Display="Dynamic" ForeColor="Red" />
                        </div>
                        <div class="text-center">
                            <asp:Button ID="btnAddQuiz" runat="server" Text="Add Quiz" OnClick="btnAddQuiz_Click" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
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
