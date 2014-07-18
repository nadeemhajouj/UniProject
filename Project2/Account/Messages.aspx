<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Project2.Account.Messages" %>
<%@ Register TagPrefix="RTE" Namespace="RTE" Assembly="RichTextEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">

    <div class="row">
        <h2><%: User.Identity.GetUserName() %> Messages</h2>
    </div>
    
    <hr/>
    
    <div class="row">
        
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="Profile.aspx">Profile</a></li>
                <li class="active"><a href="Messages.aspx">Messages</a></li>
                <li><a>Teams</a></li>
                <li><a href="Manage.aspx">Settings</a></li>
            </ul>
        </div>
        
        <div class="col-md-10">
            
            <ul class="nav nav-tabs" role="tablist">
              <li class="active"><a>Send new Messages</a></li>
              <li><a>Received Messages</a></li>
              <li><a>Sent Messages</a></li>
            </ul>
            
            <br/>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="To" CssClass="col-md-2 control-label">To:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="To" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="To"
                        CssClass="text-danger" ErrorMessage="The To field is required." />
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Subject" CssClass="col-md-2 control-label">Subject:</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Subject" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Subject"
                        CssClass="text-danger" ErrorMessage="The Subject field is required." />
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Body" CssClass="col-md-2 control-label">Body:</asp:Label>
                <div class="col-md-10">
                    <RTE:Editor ID="Body" ToolbarItems="bold,italic" ContentCss="example.css" Text="Type here" runat="server" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Body"
                        CssClass="text-danger" ErrorMessage="The Subject field is required." />
                </div>
            </div>

            <div class="col-md-offset-10">
                <asp:Button runat="server" ID="SendMessage" CssClass="btn btn-primary" Text="Send Message" OnClick="SendMessage_OnClick"/>
            </div>

        </div>

    </div>
        
    </div>

</asp:Content>
