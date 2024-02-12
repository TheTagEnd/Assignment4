<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="answer_admin.aspx.cs" Inherits="WebApplication3.answer_admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Answer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <style>
        .answer-container {
            max-height: 60vh; /* Maximum height */
            overflow-y: auto; /* Vertical scroll */
        }

        .answer-tile {
            background-color: #f5f5f5;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 10px;
        }

        .answer-user {
            font-weight: bold;
        }

        .new-answer-container {
            margin-top: 20px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-3">
            <h2 class="text-center mb-3">Answers</h2>

            <p class="mb-3">What is the largest palindrome that can be made from the product of two 2-digit numbers?</p>

            <div class="answer-container">
                <div class="answer-tile">
                    <h5 class="answer-user">Answer 1 (User ID: 123)</h5>
                    <p>This is a possible answer to the question. You can add more details here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor quis bibendum auctor. Nullam quis risus eget urna mollis ornare vel quam elementum.</p>
                    <div class="d-flex justify-content-between mt-3">
                        <%-- <asp:LinkButton runat="server" class="btn btn-danger btn-sm" OnCommand='delete_Click' CommandArgument='<%# Eval("Id") %>' Text="Delete">
    </asp:LinkButton> --%>
                        <asp:LinkButton runat="server" OnCommand='deleteAnswer_Click' class="btn btn-danger btn-sm" CommandArgument='<%# Eval("Id") %>' Text="Delete">--%>
                            <span class="material-symbols-outlined">Delete
                            </span>
                       </asp:LinkButton>
                    </div>


                </div>
               
    </form>

    <script>

</script>
</body>
</html>
