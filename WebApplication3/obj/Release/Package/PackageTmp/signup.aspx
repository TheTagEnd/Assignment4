<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication3.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <title>SignUp</title>
</head>
<body>
    <form id="form1" runat="server">
         <main>
  <section class="container">
   <div class="row justify-content-center">
    <div class="col-md-6">
     <h2>SignUp</h2>
     <form id="signupForm">
      <div class="form-group">
       <label for="username">Username:</label>
       <asp:TextBox ID="username" runat="server" CssClass="form-control" />
      </div>
      <div class="form-group">
       <label for="password">Password:</label>
       <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" />
      </div>
      <div class="form-group d-flex align-items-center justify-content-between">
       <asp:Button ID="signupbutton" runat="server" Text="SignUp" CssClass="btn btn-primary mr-2" OnClick="signupButton_Click" />
       <asp:Button ID="loginn" runat="server" Text="Login" CssClass="btn btn-secondary mr-2" OnClick="loginButton_Click" />
       
      </div>

      <asp:Label ID="SignupStatusLabel" runat="server" Text="" />

             
      
    </div>
      
   </div>
     
    </form>
  </section>
 </main>
    </form>
</body>
</html>
