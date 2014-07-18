<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeamPage.aspx.cs" Inherits="Project2.team.TeamPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="row">
                 <h2>Team</h2>
        </div>

        <hr />

        <div class="row">


            <div class="col-md-10">
                <div id="tabs">
                    
                    <ul class="nav nav-tabs">
                        <%  
                            int TeamId = 2; 
                            for(int i=0; i < TeamId ; i++)
                            { 
                             %>
                            <li><a href="#tabs-<%= i+1 %>">Send new Messages</a></li>
                            <li><a href="#tabs-<%= 2+i%>">Received Messages</a></li>
                            <li><a href="#tabs-<%= 3+i%>">Sent Messages</a></li>



                        <%  }
                             %> 
                    </ul>



            </div>
        </div>
    </div>

    <script src="/Scripts/jquery-ui.js"></script>

    <script>

        $(function () {
            $("#tabs").tabs();
        });
    </script>



</asp:Content>
