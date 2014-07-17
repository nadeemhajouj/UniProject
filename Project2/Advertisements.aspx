<%@ Page Title="Advertisements" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Advertisements.aspx.cs" Inherits="Project2.Advertisements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="men" class="cbp-spmenu-push">

    <div class="cbp-spmenu-push">
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
			<h3>Menu</h3>
			<a href="#">Celery seakale</a>
			<a href="#">Dulse daikon</a>
			<a href="#">Zucchini garlic</a>
			<a href="#">Catsear azuki bean</a>
			<a href="#">Dandelion bunya</a>
			<a href="#">Rutabaga</a>
		</nav>
    </div>
    

    <div class="container">
        
        <div class="row">

        <h2 class="col-md-2">Advertisements</h2>
        

        <button id="showRightPush" type="button" class="btn btn-default col-md-offset-11">
             <span class="glyphicon glyphicon-align-justify"></span>
        </button>
            
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
                        <a class="list-group-item disabled">Categories</a>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 2)
                   { %>
                        <a class="list-group-item disabled">Categories</a>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item active">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 3)
                   { %>
                        <a class="list-group-item disabled">Categories</a>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item active">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 4)
                   { %>
                        <a class="list-group-item disabled">Categories</a>
                        <a href="Advertisements.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Advertisements.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Advertisements.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Advertisements.aspx?aYear=4" class="list-group-item active">Fourth Year</a>
                        <a href="Advertisements.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 5)
                   { %>
                        <a class="list-group-item disabled">Categories</a>
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
    </script>
    
    <script src="Scripts/classie.js"></script>
    <script src="Scripts/modernizr.custom.js"></script>
		<script>
		    var menuRight = document.getElementById('cbp-spmenu-s2'),
				showRightPush = document.getElementById('showRightPush'),
				body = document.body;
		    showRightPush.onclick = function () {
		        classie.toggle(this, 'active');
		        classie.toggle(document.getElementById('men'), 'cbp-spmenu-push-toleft');
		        classie.toggle(menuRight, 'cbp-spmenu-open');
		        disableOther('showRightPush');
		    };

		    function disableOther(button) {
		        if (button !== 'showRightPush') {
		            classie.toggle(showRightPush, 'disabled');
		        }
		    }
		</script>
        
       

</asp:Content>
