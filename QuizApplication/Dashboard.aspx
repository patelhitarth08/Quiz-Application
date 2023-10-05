<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="QuizApplication.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">Quiz Application</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"
                                CssClass="btn btn-danger mx-2" />
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container mt-5 text-center" style="background-image: url('/images/1.jpg'); opacity:0.7; display: flex; justify-content: center; align-items:center; height:30vh;">
            <h1 style="font-weight: bolder;">Welcome to the Dashboard</h1>
        </div>

        <!-- Buttons Container -->
        <div class="container myContainer mt-3 text-center">
            <asp:Button ID="btnAddQuiz" runat="server" Text="Add Quiz" OnClick="btnAddQuiz_Click"
                CssClass="btn btn-primary mx-2" />
            <asp:Button ID="btnTakeQuiz" runat="server" Text="Take Quiz" OnClick="btnTakeQuiz_Click"
                CssClass="btn btn-success mx-2" />
        </div>

        <!-- Include Bootstrap JS and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
