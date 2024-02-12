,<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="answer.aspx.cs" Inherits="WebApplication3.answer" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Answer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
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

            <asp:Label runat="server" Id="question" class="mb-3">></asp:Label>

            <div class="answer-container">
                <asp:Repeater Id="answersRepeater" runat="server">
                    <ItemTemplate>
                        <div class="answer-tile">
                            <h5 class="answer-user">
                                User ID: <%# Eval("userId") %>
                            </h5>
                            <p>
                                <%# Eval("Content") %>
                            </p>
                            <div class="d-flex justify-content-between mt-3">
                                <asp:LinkButton runat="server" OnCommand="LikeAnswer" CommandArgument='<%# Eval("Id") %>' class="btn btn-secondary btn-sm"> Like <span runat='server' id="likeCount"><%# Eval("Likes") %></span> </asp:LinkButton>
                                <asp:LinkButton runat="server" OnCommand="DislikeAnswer" CommandArgument='<%# Eval("Id") %>' class="btn btn-secondary btn-sm"> Dislike <span runat='server' id="dislikeCount"><%# Eval("Dislikes") %></span> </asp:LinkButton>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <div class="new-answer-container">
            <div class="container">
                <h4 class="mb-3">Add your answer:</h4>
                <div class="input-group">
                    <asp:TextBox CssClass="form-control" runat="server" id="answerContent" placeholder="Enter your answer"/>
                    <asp:Button runat="server" CssClass="btn btn-primary" onclick="SubmitAnswer" Text="Submit"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
