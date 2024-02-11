<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ask_question.aspx.cs" Inherits="WebApplication3.ask_question" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ask Question</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
     <style>
        /* Custom styling for a beautiful and engaging look */
        .ask-question-area {
            margin-top: 50px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: #f2f2f2; /* Subtle background color */
            padding: 30px;
        }

        .ask-question-heading {
            font-size: 1.5rem;
            margin-bottom: 20px;
            text-align: center;
        }

        .question-textbox {
            height: 200px;
            resize: none; /* Prevent resizing */
            font-size: 16px;
            border-radius: 5px;
        }

        .submit-button {
            background-color: #007bff;
            border-color: #007bff;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            cursor: pointer;
        }

        .validation-error {
            color: red;
            font-style: italic;
            margin-top: 10px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .ask-question-area {
                border-radius: 5px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Stackoverflow-clone</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <div class="form-group">
                             <asp:Button ID="goback" runat="server" Text="Go Back" OnClick="Back_Click" CssClass="btn btn-danger" />

            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

            <main class="container mt-5">
        <h1 class="display-4">Welcome to Stackoverflow-clone!</h1>
        <p class="lead">Find answers to your programming questions or ask your own.</p>

        <div class="ask-question-area">
            <h2 class="ask-question-heading">Ask Your Question</h2>
           
                <div class="form-group">
                    <label for="questionText" class="form-label">Enter your question:</label>
                    <asp:TextBox ID="questionText" runat="server" TextMode="MultiLine" Rows="5" Columns="40" CssClass="form-control question-textbox" placeholder="Enter your question here"></asp:TextBox>
                    <asp:Label ID="validationError" runat="server" Text="" CssClass="validation-error"></asp:Label>
                </div>
                <asp:Button ID="submitQuestion" runat="server" Text="Post Question" OnClick="submitQuestion_Click" CssClass="btn submit-button" />
            
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe1m+Qv+oCs2YQz4TxEdLdG8r/FmhP

    </form>
</body>
</html>
