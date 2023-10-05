<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewQuizes.aspx.cs" Inherits="QuizApplication.ViewQuizes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Quizzes</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
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
            <h2 class="text-center mb-4">View Quizzes</h2>
            <asp:GridView ID="gvQuizzes" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped">
                <Columns>
                    <asp:BoundField DataField="QuizId" HeaderText="Quiz ID" />
                    <asp:BoundField DataField="QuizTitle" HeaderText="Quiz Title" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnTakeQuiz" runat="server" Text="Take Quiz" OnClick="btnTakeQuiz_Click"
                                CssClass="btn btn-primary" CommandArgument='<%# Eval("QuizId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </div>

    </form>
    <!-- Include Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
