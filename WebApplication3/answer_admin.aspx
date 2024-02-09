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
                        <button type="button" class="btn btn-primary btn-sm">Like (0)</button>
                        <button type="button" class="btn btn-secondary btn-sm">Dislike (0)</button>
                                      <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
                    </div>
                 

                </div>
                                <div class="answer-tile">
                    <h5 class="answer-user">Answer 1 (User ID: 123)</h5>
                    <p>This is a possible answer to the question. You can add more details here. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor quis bibendum auctor. Nullam quis risus eget urna mollis ornare vel quam elementum.</p>
                    <div class="d-flex justify-content-between mt-3">
                        <button type="button" class="btn btn-primary btn-sm">Like (0)</button>
                        <button type="button" class="btn btn-secondary btn-sm">Dislike (0)</button>
                                      <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
                    </div>
                 

                </div>
                <!-- Additional answer tiles can be added here -->
            </div>
        </div>

        <div class="new-answer-container">
            <div class="container">
                <h4 class="mb-3">Add your answer:</h4>
                <div class="input-group">
                    <input type="text" class="form-control" id="yourAnswer" placeholder="Enter your answer">
                    <button type="button" class="btn btn-primary" onclick="submitAnswer()">Submit</button>
                </div>
            </div>
        </div>
    </form>

    <script>
        function submitAnswer() {
            // Implement logic to submit the user's answer using AJAX or server-side methods
            // Update the page with the new answer using JavaScript or server-side techniques
        }
    </script>
</body>
</html>