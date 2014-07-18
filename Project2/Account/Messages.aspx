﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Project2.Account.Messages" %>
<%@ Register TagPrefix="RTE" Namespace="RTE" Assembly="RichTextEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
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
            
            

            <RTE:Editor ID="Editor1" ToolbarItems="bold,italic" ContentCss="example.css" Text="Type here" runat="server" />
            

        </div>

    </div>

</asp:Content>