<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_admin.aspx.cs" Inherits="WebApplication3.home_admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Stackoverflow-clone</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
        <form runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Stackoverflow-clone  < / > Admin  </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <div class="form-group">

                                <asp:Button ID="UserList" runat="server" Text="UserList" CssClass="btn btn-warning" OnClick="gotouserlist_Click" />

                                <asp:Button ID="logoutButton" runat="server" Text="Logout" CssClass="btn btn-primary" OnClick="loginOut_Click" />


                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="container mt-5">
            <h1 class="display-4">Welcome to Stackoverflow-clone!</h1>
            <p class="lead">Find answers to your programming questions or ask your own.</p>
            <asp:Repeater runat="server" ID="questionsRepeater">

                <HeaderTemplate>
                    <ul class="list-group overflow-auto mb-4" style="max-height: 500px;">
                </HeaderTemplate>
                <ItemTemplate>

                    <li id='<%#Eval("Id") %>' class='list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3'>
                        <div class='row align-items-center'>
                            <asp:LinkButton class="col-8 text-decoration-none text-dark" OnCommand="GoToAnswer" CommandArgument='<%# Eval("Id") %>' runat="server">
                                <h5><%# Eval("Content") %></h5>
                                <small class='text-muted'><%# Eval("UserId") %></small>
                            </asp:LinkButton>

                            <div class="col-2 d-flex justify-content-end align-items-center">
                                <label>
                                    Likes: 
                                    <span id="likeCount" runat="server">
                                        <%# Eval("Likes") %>
                                    </span>&nbsp;
                                </label>

                                <label>
                                    Dislikes: 
                                    <span id="dislikeCount" runat="server">
                                        <%# Eval("Dislikes") %>
                                    </span>
                                </label>
                                
                                <asp:LinkButton runat="server" class="btn btn-danger btn-sm" OnCommand='delete_Click' CommandArgument='<%# Eval("Id") %>' Text="Delete">
                                    </asp:LinkButton>

                            </div>
                        </div>
                    </li>


                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>

            </asp:Repeater>

    </main>
        </form>
            </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe1m+Qv+oCs2YQz4TxEdLdG8r/FmhP" />
