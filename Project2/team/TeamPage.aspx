
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamPage.aspx.cs" Inherits="Project2.team.TeamPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            
      <div id="tabs">
       
        <% for (int i = 0; i < ProjectsNum; i++)
           { %>      
            <ul class="nav nav-tabs">
                <li><a href="#tabs-<%=i+1 %>"><%=projects[i].ProjectName %></a></li>
            </ul>
        <% } %>
         </div>

    <script src="/Scripts/jquery-ui.js"></script>

    <script>

        $(function () {
            $("#tabs").tabs();
        });
    </script>

    

</asp:Content>
