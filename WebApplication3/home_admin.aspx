<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_admin.aspx.cs" Inherits="WebApplication3.home_admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Stackoverflow-clone</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
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
              <form id="home" runat="server">
                        <asp:Button ID="postquestion" runat="server" Text="Post Question" CssClass="btn btn-warning" OnClick="postquestion_Click" />

                  <asp:Button ID="UserList" runat="server" Text="UserList" CssClass="btn btn-warning" OnClick="gotouserlist_Click" />
                
                  <asp:Button ID="logoutButton" runat="server" Text="Logout" CssClass="btn btn-primary" OnClick="loginOut_Click" />
             
                  
              </form>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <main class="container mt-5">
    <h1 class="display-4">Welcome to Stackoverflow-clone!</h1>
    <p class="lead">Find answers to your programming questions or ask your own.</p>
     
    <ul class="list-group overflow-auto mb-5" style="max-height: 500px;">
            <li class="list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3" ">
  <div class="row align-items-center" >
    <div class="col-8" onclick="gotoanswer()">
      <h5 class="mb-1">What is the largest palindrome that can be made from the product of two 2-digit numbers?</h5>
      <small class="text-muted">Hint: A palindrome is a number that reads the same backward as forward.</small>
    </div>
    <div class="col-2 d-flex justify-content-end align-items-center">
      <button class="btn btn-sm btn-light me-2" onclick="likeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg" alt="Like" width="20" height="20">
        <span id="likeCount">10</span>
      </button>
      <button class="btn btn-sm btn-light" onclick="dislikeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg" alt="Dislike" width="20" height="20">
        <span id="dislikeCount">5</span>
      </button>
                                              <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
    </div>
  </div>
</li>

                    <li class="list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3" ">
  <div class="row align-items-center" >
    <div class="col-8" onclick="gotoanswer()">
      <h5 class="mb-1">What is the largest palindrome that can be made from the product of two 2-digit numbers?</h5>
      <small class="text-muted">Hint: A palindrome is a number that reads the same backward as forward.</small>
    </div>
    <div class="col-2 d-flex justify-content-end align-items-center">
      <button class="btn btn-sm btn-light me-2" onclick="likeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg" alt="Like" width="20" height="20">
        <span id="likeCount">10</span>
      </button>
      <button class="btn btn-sm btn-light" onclick="dislikeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg" alt="Dislike" width="20" height="20">
        <span id="dislikeCount">5</span>
      </button>
                                              <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
    </div>
  </div>
</li>
                    <li class="list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3" ">
  <div class="row align-items-center" >
    <div class="col-8" onclick="gotoanswer()">
      <h5 class="mb-1">What is the largest palindrome that can be made from the product of two 2-digit numbers?</h5>
      <small class="text-muted">Hint: A palindrome is a number that reads the same backward as forward.</small>
    </div>
    <div class="col-2 d-flex justify-content-end align-items-center">
      <button class="btn btn-sm btn-light me-2" onclick="likeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg" alt="Like" width="20" height="20">
        <span id="likeCount">10</span>
      </button>
      <button class="btn btn-sm btn-light" onclick="dislikeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg" alt="Dislike" width="20" height="20">
        <span id="dislikeCount">5</span>
      </button>
                                              <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
    </div>
  </div>
</li>
                    <li class="list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3" ">
  <div class="row align-items-center" >
    <div class="col-8" onclick="gotoanswer()">
      <h5 class="mb-1">What is the largest palindrome that can be made from the product of two 2-digit numbers?</h5>
      <small class="text-muted">Hint: A palindrome is a number that reads the same backward as forward.</small>
    </div>
    <div class="col-2 d-flex justify-content-end align-items-center">
      <button class="btn btn-sm btn-light me-2" onclick="likeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg" alt="Like" width="20" height="20">
        <span id="likeCount">10</span>
      </button>
      <button class="btn btn-sm btn-light" onclick="dislikeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg" alt="Dislike" width="20" height="20">
        <span id="dislikeCount">5</span>
      </button>
                                              <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
    </div>
  </div>
</li>
                    <li class="list-group-item bg-gradient-light text-dark border rounded-3 p-4 mb-3" ">
  <div class="row align-items-center" >
    <div class="col-8" onclick="gotoanswer()">
      <h5 class="mb-1">What is the largest palindrome that can be made from the product of two 2-digit numbers?</h5>
      <small class="text-muted">Hint: A palindrome is a number that reads the same backward as forward.</small>
    </div>
    <div class="col-2 d-flex justify-content-end align-items-center">
      <button class="btn btn-sm btn-light me-2" onclick="likeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/heart.svg" alt="Like" width="20" height="20">
        <span id="likeCount">10</span>
      </button>
      <button class="btn btn-sm btn-light" onclick="dislikeQuestion();">
        <img src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/icons/hand-thumbs-down.svg" alt="Dislike" width="20" height="20">
        <span id="dislikeCount">5</span>
      </button>
                                              <button type="button" class="btn btn-danger btn-sm">
     <span class="material-symbols-outlined">
Delete
</span>
    </button>
    </div>
  </div>
</li>




      </ul>

  </main>
  <script>
      function gotoanswer() {
          window.location.href = '<%= ResolveUrl("~/answer_admin.aspx") %>';
      }
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe1m+Qv+oCs2YQz4TxEdLdG8r/FmhP
