﻿    <%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Project2.Courses" %>
<%@ Import Namespace="Project2.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        
     
        <h2>Courses</h2>
            
        
        <div class="row">
            

            <div class="col-md-10">
                <% if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">First Year</li>
                        </ol>
                   <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 1)
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">First Year</li>
                        </ol>
                   <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 2)
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">Second Year</li>
                        </ol>
                   <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 3)
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">Third Year</li>
                        </ol>
                   <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 4)
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">Fourth Year</li>
                        </ol>
                   <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 5)
                      { %>
                        <ol class="breadcrumb">
                            <li>Courses</li>
                            <li class="active">Fifth Year</li>
                        </ol>
                   <% } %>

            </div>
            

            <div class="input-group col-md-2">
                <input type="text" class="form-control" placeholder="Search Course"/>
            </div>

        </div>
        
        <div class="row">

            <div class="list-group col-md-2">
                <% if (string.IsNullOrWhiteSpace(Request.QueryString["aYear"]))
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 1)
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item active">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 2)
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item active">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 3)
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item active">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 4)
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item active">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item">Fifth Year</a>
                  <% } %>
                <% else if (int.Parse(Request.QueryString["aYear"]) == 5)
                   { %>
                        <a href="Courses.aspx?aYear=1" class="list-group-item">First Year</a>
                        <a href="Courses.aspx?aYear=2" class="list-group-item">Second Year</a>
                        <a href="Courses.aspx?aYear=3" class="list-group-item">Third Year</a>
                        <a href="Courses.aspx?aYear=4" class="list-group-item">Fourth Year</a>
                        <a href="Courses.aspx?aYear=5" class="list-group-item active">Fifth Year</a>
                  <% } %>
            </div>


        
        <div class="col-md-10">    
            <div class="panel panel-default">
            
            <div class="panel-heading">Semester 1 Courses</div>
                
            <div class="panel-body">

            <asp:ListView ID="CoursesList1" runat="server" DataKeyNames="CourseID" GroupItemCount="100" ItemType="Project2.Models.Course" SelectMethod="GetCourses1" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="list-group" runat="server" >

                        <a href="<%#: "CourseInfo.aspx?name=" + Item.CourseName + "&teacherFN=" + Item.Teachers.First().FirstName + "&teacherLN=" + Item.Teachers.First().LastName + "&desc=" + Item.CourseDescription + "&year=" + Item.CourseYear + "&id=" + Item.CourseID %>" class="list-group-item"  >
                            <h4 class="list-group-item-heading">
                                <asp:Label runat="server"> <%#: Item.CourseName %>  .  </asp:Label>
                                
                                <asp:Label Text="<%#: Item.Teachers.First().FirstName +' '+Item.Teachers.First().LastName %> " runat="server"></asp:Label>
                            </h4>
                            <p class="list-group-item-text"><%#: Item.CourseDescription %></p>
                        </a>
                        
                    </div>

                </ItemTemplate>
                
            </asp:ListView>
            </div>

            </div>
        </div>
        
        <div class="col-md-10 col-md-offset-2">    
            
            <div class="panel panel-default">
            
            <div class="panel-heading">Semester 2 Courses</div>
                
            <div class="panel-body">

            <asp:ListView ID="CoursesList2" runat="server" DataKeyNames="CourseID" GroupItemCount="100" ItemType="Project2.Models.Course" SelectMethod="GetCourses2" >
                <GroupTemplate >
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate >
                    
                   <div class="list-group" runat="server" >

                        <a href="<%#: "CourseInfo.aspx?name=" + Item.CourseName + "&teacherFN=" + Item.Teachers.First().FirstName + "&teacherLN=" + Item.Teachers.First().LastName + "&desc=" + Item.CourseDescription + "&year=" + Item.CourseYear + "&id=" + Item.CourseID %>" class="list-group-item"  >
                            <h4 class="list-group-item-heading">
                                <asp:Label runat="server"> <%#: Item.CourseName %>  .  </asp:Label>
                                
                                <asp:Label Text="<%#: Item.Teachers.First().FirstName +' '+Item.Teachers.First().LastName %> " runat="server"></asp:Label>
                            </h4>
                            <p class="list-group-item-text"><%#: Item.CourseDescription %></p>
                        </a>
                        
                    </div>

                </ItemTemplate>
                
            </asp:ListView>
            </div>

            </div>

        </div>
        
    </div>
    </div>
    
    <script>
        $('.list-group-item').on('click', function (e) {
            var previous = $(this).closest(".list-group").children(".active");
            previous.removeClass('active'); // previous list-item
            $(e.target).addClass('active'); // activated list-item
        });
    </script>


</asp:Content>
