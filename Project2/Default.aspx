<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Content/flexslider.css" type="text/css" media="screen" />



    <section class="slider">
        <div class="flexslider">
              <ul class="slides">
                <li>
  	    	        <img src="img/1.jpg" />
  	    		</li>
  	    		<li>
  	    	        <img src="img/2.jpg" />
  	    		</li>
  	    		<li>
  	    	        <img src="img/3.jpg" />
  	    		</li>
              </ul>
        </div>
    </section>

    <div class="row">
        <div class="col-md-4">
            <h2>Damascus University</h2>
            <p align="justify">
                Damascus University is the oldest and the largest university in the Syrian Arab Republic. It is located in the capital city of Damascus and has branches in some other provinces.
                 It is the first public university in the Arab world. It was established in 1903.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Faculty of Information Technology</h2>
            <p align="justify">
                The Faculty of Information Technology is one of the latest colleges opened at the University of Damascus. It was established in 2000. 
                It has three main departments which are Software Engineering and Information Systems,Systems Engineering and Computer Networks and Artificial Intelligence Engineering.
            </p>
        </div>
        <div class="col-md-4">
            <h2>ACM</h2>
            <p align="justify">
                ACM International Collegiate Programming Contest is an annual multi-tiered competitive programming competition among the universities of the world. The contest is sponsored by IBM. It traces its roots to a competition held at Texas A&M University in 1970.
                 The Arabic participation started in 1998, and Syria has participated for the first time in the competition in 2007 in Egypt.
            </p>
        </div>
    </div>

      <script defer src="Scripts/jquery.flexslider.js"></script>

      <script type="text/javascript">
          $(function () {
              SyntaxHighlighter.all();
          });
          $(window).load(function () {
              $('.flexslider').flexslider({
                  animation: "slide",
                  start: function (slider) {
                      $('body').removeClass('loading');
                  }
              });
          });
      </script>


</asp:Content>
