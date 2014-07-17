<%@ Page Title="Course Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="Project2.CourseInfo"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <asp:Button ID="AddHomeworkButton" runat="server" Text="Add Homework" onclick="AddHomeworkButton_Click" class="btn btn-default col-md-offset-10" />            
        <h2>
            <asp:Literal ID="txtHeader" runat="server"></asp:Literal>
        </h2>
                
                <div>
                    <ol class="breadcrumb">
                        <li>Courses</li>
                        <li><asp:Label runat="server" ID="courseYear"></asp:Label></li>
                        <li class="active"><asp:Label runat="server" ID="courseName"></asp:Label></li>
                    </ol>
                </div>
            
            <div class="row">
                <div class="panel panel-primary col-md-3">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course Information</h3>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group">
                            <li class="list-group-item">Course Name: <asp:Label ID="txtCourse" Text="" runat="server"></asp:Label></li>
                            <li class="list-group-item">Teacher Name: <asp:Label ID="txtTeacher" Text="" runat="server"></asp:Label></li>
                            <li class="list-group-item">Academic Year: <asp:Label ID="txtYear" Text="" runat="server"></asp:Label></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-8 col-md-offset-1">
                    <h4>Course Objective:</h4>
                    <asp:Label ID="txtDesc" runat="server"></asp:Label>
                    <h4>Course Topics:</h4>
                    <ul>
                        <li>asdasdsadsad</li>
                        <li>asdasdsadsad</li>
                        <li>asdasdsadsad</li>
                        <li>asdasdsadsad</li>
                    </ul>

                </div>

        </div>
            
        <div class="row">
            <hr style="height:1px;border:none;color:#bbb;background-color:#bbb;" />
            
            <div class="panel panel-primary col-md-3">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course Projects</h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                    </div>
                </div>
            <div class="panel panel-primary col-md-3 col-md-offset-1">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course Homeworks</h3>
                    </div>
                    <div class="panel-body">
                        
                                    <%--show homeworks--%>
                                    <asp:ListView ID="HomeworkList" runat="server" DataKeyNames="HomId" GroupItemCount="100" ItemType="Project2.Models.Homework" SelectMethod="GetHomeworks" >
                                        <GroupTemplate >
                                            <tr id="itemPlaceholderContainer" runat="server">
                                                <td id="itemPlaceholder" runat="server"></td>
                                            </tr>
                                        </GroupTemplate>

                                        <ItemTemplate >
                    
                                           <div class="list-group" runat="server" >

                                                <a href="<%#: "ShowHomework.aspx?HomId=" + Item.HomId %>" class="list-group-item"  >
                                                    <h4 class="list-group-item-heading">
                                                        <asp:Label runat="server"> <%#: Item.HomeworkName %>  .  </asp:Label>
                                                    </h4>
                                                    <%--<p class="list-group-item-text"><%#: Item.CourseDescription %></p>--%>
                                                </a>
                        
                                            </div>

                                        </ItemTemplate>
                
                                    </asp:ListView>
                        
                    </div>
                </div>
            <div class="panel panel-primary col-md-3 col-md-offset-1">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course Materials</h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                        </p>
                    </div>
                </div>

        </div>
        </div>

</asp:Content>
