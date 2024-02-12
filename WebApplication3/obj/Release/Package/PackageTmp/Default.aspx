<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <main>
  <section class="container">
   <div class="row justify-content-center">
    <div class="col-md-6">
     <h2>Login</h2>
     <form id="loginForm">
      <div class="form-group">
       <label for="username">Username:</label>
       <asp:TextBox ID="username" runat="server" CssClass="form-control" />
      </div>
      <div class="form-group">
       <label for="password">Password:</label>
       <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" />
      </div>
      <div class="form-group d-flex align-items-center justify-content-between">
       <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn btn-primary mr-2" OnClick="loginButton_Click" />
       <asp:Button ID="signupButton" runat="server" Text="Sign Up" CssClass="btn btn-secondary" OnClick="signupButton_Click" />
      </div>

      <asp:Label ID="loginStatusLabel" runat="server" Text="" />

             
      
    </div>
      
       
   </div>
     
    </form>
  </section>
 </main>

</asp:Content>
