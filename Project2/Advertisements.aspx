<%@ Page Title="Announcements" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Advertisements.aspx.cs" Inherits="Project2.Advertisements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="container">
        
        <div class="row">
            <h2>Announcements
                <asp:Button runat="server" ID="AddAdverButton" Text="Add Announcement" OnClick="AddAdverButton_Click" CssClass="btn btn-primary pull-right"/>
            </h2>
        </div>
        
        <hr/>
        
        <div class="row">
            
            <div class="list-group col-md-2">
                
                <h5 class="col-md-offset-2"><b>Academic Year</b></h5>
                
                <% if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item" id="menu-trigger">Fourth Year <span class="glyphicon glyphicon-chevron-down col-md-push-5"></span></a>
                            <div id="menu" class="open">
                                    <div class="checkbox col-md-offset-3">
                                        <asp:CheckBox runat="server" ID="Networks"/>
                                        <asp:Label runat="server" AssociatedControlID="Networks">Networks</asp:Label>
                                    </div>
                                    <div class="checkbox col-md-offset-3">
                                                <asp:CheckBox runat="server" ID="SoftwareEngineering"/>
                                                <asp:Label runat="server" AssociatedControlID="SoftwareEngineering">Software Engineering</asp:Label>
                                    </div>
                                    <div class="checkbox col-md-offset-3">
                                                <asp:CheckBox runat="server" ID="ArtificialIntillegence"/>
                                                <asp:Label runat="server" AssociatedControlID="ArtificialIntillegence">Artificial Intillegence</asp:Label>
                                    </div>
                            </div>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 1)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 2)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item active">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 3)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item active">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 4)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item active">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 5)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item active">Fifth Year</a>
                  <% } %>

            </div>
            
            <div class="col-md-10">
                
            
            
            <asp:ListView ID="AdvertisementsList" AllowPaging="true" PageSize="5" runat="server" DataKeyNames="AdvertisementID" GroupItemCount="100" ItemType="Project2.Models.Advertisement" SelectMethod="GetAdvertisements" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="panel panel-success">
                       
                       <div class="panel-body">

                           <div class="media col-md-10" runat="server">
                                <div class="media-body">
                                    <h4 class="media-heading"><%#: Item.AdvertisementHeader %></h4>
                                    <p><%#: Item.AdvertisementBody %></p>
                                </div>
                            </div>

                        </div>
                       
                       <div class="panel-footer" align="right"><%#: Item.AdvertisementDateTime.ToString() %></div>
   
                        </div>

                </ItemTemplate>

                
            </asp:ListView>
                
            <asp:DataPager ID="DataPagerAnnouncements" runat="server" PagedControlID="AdvertisementsList"
                PageSize="5">
                <Fields>
                    <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
                
           

            </div>

        </div>

    </div>
    
    
    


    <%--<div class="container">
        

        <h2 class="col-md-2">Announcements</h2>

        
        <hr/>
        
        <asp:Button ID="AddAdverButton" runat="server" Text="Add Announcement" onclick="AddAdverButton_Click" CssClass="btn btn-default pull-right" />            


        <div class="row">

            <div class="list-group col-md-2">
                
                
                <h5 class="col-md-offset-2"><b>Academic Year</b></h5>
                
                <% if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item" id="menu-trigger">Fourth Year <span class="glyphicon glyphicon-chevron-down col-md-push-5"></span></a>
                            <div id="menu" class="open">
                                    <div class="checkbox col-md-offset-3">
                                        <asp:CheckBox runat="server" ID="Networks"/>
                                        <asp:Label runat="server" AssociatedControlID="Networks">Networks</asp:Label>
                                    </div>
                                    <div class="checkbox col-md-offset-3">
                                                <asp:CheckBox runat="server" ID="SoftwareEngineering"/>
                                                <asp:Label runat="server" AssociatedControlID="SoftwareEngineering">Software Engineering</asp:Label>
                                    </div>
                                    <div class="checkbox col-md-offset-3">
                                                <asp:CheckBox runat="server" ID="ArtificialIntillegence"/>
                                                <asp:Label runat="server" AssociatedControlID="ArtificialIntillegence">Artificial Intillegence</asp:Label>
                                    </div>
                            </div>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 1)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 2)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item active">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 3)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item active">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 4)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item active">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 5)
                   { %>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item active">Fifth Year</a>
                  <% } %>
            </div>
            
            <div id="BigPanel" class="panel panel-default col-md-10">
            <div class="panel-body">
            
            <asp:ListView ID="AdvertisementsList" runat="server" DataKeyNames="AdvertisementID" GroupItemCount="100" ItemType="Project2.Models.Advertisement" SelectMethod="GetAdvertisements" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="panel panel-success">
                       
                       <div class="panel-body">

                           <div class="media col-md-10" runat="server">
                                <a href="#" class="pull-left">
                                    <img class="media-object" src="<%#: Item.ImagePath %>" />
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><%#: Item.AdvertisementHeader %></h4>
                                    <p><%#: Item.AdvertisementBody %></p>
                                </div>
                            </div>

                        </div>
                       
                       <div class="panel-footer" align="right"><%#: Item.AdvertisementDateTime.ToString() %></div>
   
                        </div>

                </ItemTemplate>

                
            </asp:ListView>
                
            </div>
            </div>

        </div>

    </div>
    
    <script type="text/javascript">
        $(document).ready(function () {
            // build a variable to target the #menu div
            var menu = $('#menu');
            menu.hide();
            // bind a click function to the menu-trigger
            $('#menu-trigger').click(function (event) {
                // if the menu is visible slide it up
                if (menu.is(":visible")) {
                    menu.slideUp(400);
                    $(this).removeClass("open");
                }
                    // otherwise, slide the menu down
                else {
                    menu.slideDown(400);
                    $(this).addClass("open");
                }
            });
        });
    </script>--%>

</asp:Content>
