<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowTeams.aspx.cs" Inherits="Project2.team.ShowTeams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    
    
    
    <div class="list-group col-md-2">
            <asp:ListView ID="TeamsList" runat="server" DataKeyNames="TeamId" GroupItemCount="100" ItemType="Project2.Models.Team" SelectMethod="GetTeams" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="list-group" runat="server" >

                        <a href="<%#: "ShowTeams.aspx?teamId=" + Item.TeamId %>" class="list-group-item"  >
                            <h4 class="list-group-item-heading">
                                <asp:Label runat="server"> <%#: Item.TeamName %>  .  </asp:Label>
                                
                               
                            </h4>
                            <%--<p class="list-group-item-text"><%#: Item.CourseDescription %></p>--%>
                        </a>
                        
                    </div>

                </ItemTemplate>
                
            </asp:ListView>

            
        </div>

    <div class="list-group col-md-2">
            <asp:ListView ID="HomeworlList" runat="server" DataKeyNames="HomId" GroupItemCount="100" ItemType="Project2.Models.Homework" SelectMethod="GetHomeworks" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="list-group" runat="server" >

                            <h4 class="list-group-item-heading">
                                <asp:Label runat="server"> <%#: Item.HomeworkName %>  .  </asp:Label>
                            </h4>
                        </a>
                        
                    </div>

                </ItemTemplate>
                
            </asp:ListView>

            
        </div>

</asp:Content>
