<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project2.Account.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">

        <div class="row">
            <h2>Welcome, <%: User.Identity.GetUserName() %>!</h2>
        </div>
    
        <hr/>

        <div class="row">
        
        
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked">
                  <li class="active"><a href="Profile.aspx">Profile</a></li>
                  <li><a href="Messages.aspx">Messages</a></li>
                  <li><a>Teams</a></li>
                  <li><a href="Manage.aspx">Settings</a></li>
                </ul>
            </div>
        
            <div class="col-md-2">
                <img src="../img/profImg.png" width="150" height="150"/>
            </div>

            <div class="col-md-8">
                <table class="table table-striped">
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="FirstName" CssClass="control-label">First Name</asp:Label></td>
                        <td><asp:Label ID="FirstName" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="LastName" CssClass="control-label">Last Name</asp:Label></td>
                        <td><asp:Label ID="LastName" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="BirthDate" CssClass="control-label">Date of Birth</asp:Label></td>
                        <td><asp:Label ID="BirthDate" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="AcademicYear" CssClass="control-label">Academic Year</asp:Label></td>
                        <td><asp:Label ID="AcademicYear" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Departement" CssClass="control-label">Departement</asp:Label></td>
                        <td><asp:Label ID="Departement" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label></td>
                        <td><asp:Label ID="Email" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="ACMPoints" CssClass="control-label">ACM Points</asp:Label></td>
                        <td><asp:Label ID="ACMPoints" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Bio" CssClass="control-label">Bio</asp:Label></td>
                        <td><asp:Label ID="Bio" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>

        </div>
        
    </div>

</asp:Content>
