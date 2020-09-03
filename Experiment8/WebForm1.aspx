<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Experiment8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en" runat="server">
    <title>Experiment 8</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <h1>Open an account</h1>
        
        <form id="form1" runat="server" class="form mt-5">
            <p>Cookies: <asp:Label ID="cookiesLabel" runat="server" Text="-" CssClass="d-block p-3 mb-2 text-success rounded"></asp:Label></p>
            <div class="form-group row">
                <div class="col-sm-6">
                    <label for="username">Username:</label>
                    <asp:TextBox ID="username" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="usernameRequiredValidator" CssClass="text-danger" ControlToValidate="username" runat="server" ErrorMessage="Please enter a username"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="usernameRegularExpressionValidator" runat="server" CssClass="text-danger" ControlToValidate="username" ErrorMessage="Enter a valid username" ValidationExpression="^[a-zA-Z0-9_]{2,15}$"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-6">
                    <label for="user_email">Email:</label>
                    <asp:TextBox ID="user_email" class="form-control" runat="server" placeholder="example@xyz.com" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="useremailRequiredValidator" CssClass="d-block text-danger" ControlToValidate="user_email" runat="server" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" CssClass="d-block text-danger" ControlToValidate="user_email" ErrorMessage="Please enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-6">
                    <label for="user_pass">Password:</label>
                    <asp:TextBox ID="user_pass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <small id="user_passHelp" class="form-text text-muted">Must be at least 8 characters and contain at least 1 lowercase & uppercase letter, and atleast 1 number</small>
                    <asp:RequiredFieldValidator ID="userpassRequiredValidator" CssClass="text-danger" ControlToValidate="user_pass" runat="server" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="user_passRegularExpressionValidator" runat="server" CssClass="d-block text-danger" ControlToValidate="user_pass" ErrorMessage="Please enter a valid password" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-6">
                    <label for="confirm_pass">Confirm Password:</label>
                    <asp:TextBox ID="confirm_pass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="confirmpassRequiredValidator" CssClass="text-danger" ControlToValidate="confirm_pass" runat="server" ErrorMessage="Please re-enter your password"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="confirmpassCompareValidator" runat="server" CssClass="text-danger" ControlToValidate="confirm_pass" ControlToCompare="user_pass" Operator="Equal" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-6">
                    <label for="dp_name">Display Name:</label>
                    <asp:TextBox ID="dp_name" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="dpnameRequiredValidator" CssClass="text-danger" ControlToValidate="dp_name" runat="server" ErrorMessage="Please enter a name that you'd like to be seen by other users"></asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-6">
                    <label for="nickname">Nickname:</label>
                    <asp:TextBox ID="nickname" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nicknameRequiredValidator" CssClass="text-danger" ControlToValidate="nickname" runat="server" ErrorMessage="Please enter your nickname"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name:</label>
                <div class="col-sm-5">
                    <asp:TextBox ID="fname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="fnameRequiredValidator" CssClass="text-danger" ControlToValidate="fname" runat="server" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
                </div>
                 <div class="col-sm-5">
                     <asp:TextBox ID="lname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="lnameRequiredValidator" CssClass="text-danger" ControlToValidate="lname" runat="server" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label for="website" class="col-sm-2 col-form-label">Website:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="website" class="form-control" runat="server" placeholder="https://www.example.domain" TextMode="Url"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="websiteRequiredValidator" runat="server" CssClass="text-danger" ControlToValidate="website" ErrorMessage="Enter a valid website" ValidationExpression="^(https?):\/\/[^\s$.?#].[^\s]*$"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <label for="bio" class="col-sm-2 col-form-label">Bio:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="bio" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="bioRequiredValidator" CssClass="text-danger" ControlToValidate="bio" runat="server" ErrorMessage="Please enter a short description about yourself"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label for="twitter" class="col-sm-2 col-form-label">Twitter:</label>
                <div class="col-sm-10">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                          <div class="input-group-text">@</div>
                        </div>
                        <asp:TextBox ID="twitter" class="form-control" runat="server"></asp:TextBox>
                     </div>
                    <asp:RegularExpressionValidator ID="twitterRegularExpressionValidator" runat="server" CssClass="text-danger" ControlToValidate="twitter" ErrorMessage="Enter a valid twitter username" ValidationExpression="^[a-zA-Z0-9_]{1,15}$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <asp:Button ID="submit_form" runat="server" Text="Submit" CssClass="btn btn-success btn-lg btn-block" OnClick="submit_form_Click"/>
        </form>

        <div class="container mt-5">
            <h3><asp:Label ID="feedbackLabelTitle" runat="server" Text="Result:"></asp:Label></h3>
            <asp:Label ID="feedbackLabel" runat="server" Text="Feedback" CssClass="d-block p-3 mb-2 bg-primary text-white rounded"></asp:Label>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
