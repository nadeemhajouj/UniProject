<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowHomework.aspx.cs" Inherits="Project2.ShowHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
<!--        <asp:Button ID="Button1" runat="server" Text="Create Group" onclick="CreateGroupButton_Click" class="btn btn-default col-md-offset-8"/> -->
    <asp:Button ID="CreateGroupButton" runat="server" Text="Create Group" onclick="CreateGroupButton_Click" class="btn btn-default col-md-offset-10"/>
    <div/>

    <br/>
            
        <div class="panel panel-success" >
                       
            <div class="panel-body">
                           
            <div class="panel-heading" align="left"> <asp:Label ID="HomworkNameLabel" runat="server" /> </div>
   
                <div class="media col-md-10" runat="server">
                    <a href="#" class="pull-left">

                    </a>
                    <div class="media-body">
                                  
                        <p>  <asp:Label ID="HomworkDescLabel" runat="server"/> </p>
                    </div>
                </div>

            </div>
                       
            <div class="panel-footer" align="right"> <asp:Label ID="DueDateLabel" runat="server" /> </div>
   
            </div>

</asp:Content>

