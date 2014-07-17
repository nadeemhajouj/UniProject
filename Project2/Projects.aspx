<%@ Page Title="Projects List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Project2.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   

    <h2>Projects</h2>

    <div class="row">
        <div class="col-md-10">
            <ol class="breadcrumb">
                <li>Projects</li>
                <li class="active">First Year</li>
            </ol>
        </div>
        <div class="input-group col-md-2">
            <input type="text" class="form-control" placeholder="Search Projects" />
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="list-group col-md-2">
                <a href="#" class="list-group-item active">First Year</a>
                <a href="#" class="list-group-item">Second Year</a>
                <a href="#" class="list-group-item">Third Year</a>
                <a href="#" class="list-group-item">Fourth Year</a>
                <a href="#" class="list-group-item">Fifth Year</a>
            </div>

            <asp:ListView ID="ProjectsList" runat="server" DataKeyNames="ProjectID" GroupItemCount="4" ItemType="Project2.Models.Project" SelectMethod="getProjects">
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate>

                    <div class="media col-md-10" runat="server">
                        <a href="#" class="pull-left">
                            <img class="media-object" src="<%#: Item.ImagePath %>" />
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><%#: Item.ProjectName %></h4>
                            <p><%#: Item.ProjectDescription %></p>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>

</asp:Content>
