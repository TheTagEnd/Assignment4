<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlist.aspx.cs" Inherits="WebApplication3.userlist" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Stackoverflow-clone</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0">

    <style>
        .user-tile {
            background-color: #f5f5f5;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            /* Added overflow-y: auto for scrolling */
            overflow-y: auto;
            max-height: 200px; /* Set a maximum height for scrolling */
        }

        .user-info {
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .user-stats {
            font-size: 14px;
            color: #999;
            margin-left: 10px;
        }

        .delete-btn {
            background-color: #dc3545;
            color: white;
            padding: 5px 8px;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Stackoverflow-clone < / >  Admin</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
    <main class="container mt-5">
        <h1 class="display-4">User Lists</h1>

        <div class="user-tile">
            <div class="user-info">
                <h5>John Doe</h5>
                <span class="user-stats">Questions: 25</span>
                <span class="user-stats">Answers: 25</span>
            </div>
            <button type="button" class="btn btn-danger btn-sm">
                <span class="material-symbols-outlined">
                    Delete
                </span>
            </button>
        </div>
        <div class="user-tile">
            <div class="user-info">
                <h5>John Doe</h5>
                <span class="user-stats">Questions: 25</span>
                <span class="user-stats">Answers: 25</span>
            </div>
            <button type="button" class="btn btn-danger btn-sm">
                <span class="material-symbols-outlined">
                    Delete
                </span>
            </button>
        </div>

           <div class="user-tile">
       <div class="user-info">
           <h5>John Doe</h5>
           <span class="user-stats">Questions: 25</span>
           <span class="user-stats">Answers: 25</span>
       </div>
       <button type="button" class="btn btn-danger btn-sm">
           <span class="material-symbols-outlined">
               Delete
           </span>
       </button>
   </div>
   <div class="user-tile">
       <div class="user-info">
           <h5>John Doe</h5>
           <span class="user-stats">Questions: 25</span>
           <span class="user-stats">Answers: 25</span>
       </div>
       <button type="button" class="btn btn-danger btn-sm">
           <span class="material-symbols-outlined">
               Delete
           </span>
       </button>
   </div>



           <div class="user-tile">
       <div class="user-info">
           <h5>John Doe</h5>
           <span class="user-stats">Questions: 25</span>
           <span class="user-stats">Answers: 25</span>
       </div>
       <button type="button" class="btn btn-danger btn-sm">
           <span class="material-symbols-outlined">
               Delete
           </span>
       </button>
   </div>
  


    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe1m+Qv+oCs
>