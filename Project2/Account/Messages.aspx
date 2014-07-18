<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Project2.Account.Messages" %>

<%@ Register TagPrefix="RTE" Namespace="RTE" Assembly="RichTextEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <h2><%: User.Identity.GetUserName() %> Messages</h2>
        </div>

        <hr />

        <div class="row">

            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="Profile.aspx">Profile</a></li>
                    <li class="active"><a href="Messages.aspx">Messages</a></li>
                    <li><a>Teams</a></li>
                    <li><a href="Manage.aspx">Settings</a></li>
                </ul>
            </div>


            <div class="col-md-10">
                
                <div id="tabs">
                    <ul class="nav nav-tabs">
                        <li><a href="#tabs-1">Send new Messages</a></li>
                        <li><a href="#tabs-2">Received Messages</a></li>
                        <li><a href="#tabs-3">Sent Messages</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="To" CssClass="col-md-2 control-label">To:</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="To" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="To"
                                    CssClass="text-danger" ErrorMessage="The To field is required." />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Subject" CssClass="col-md-2 control-label">Subject:</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Subject" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Subject"
                                    CssClass="text-danger" ErrorMessage="The Subject field is required." />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Body" CssClass="col-md-2 control-label">Body:</asp:Label>
                            <div class="col-md-10">
                                <RTE:Editor ID="Body" ToolbarItems="bold,italic" ContentCss="example.css" Text="Type here" runat="server" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Body"
                                    CssClass="text-danger" ErrorMessage="The Subject field is required." />
                            </div>
                        </div>

                        <div class="col-md-offset-10">
                            <asp:Button runat="server" ID="SendMessage" CssClass="btn btn-primary" Text="Send Message" OnClick="SendMessage_OnClick" />
                        </div>


                    </div>
                    <div id="tabs-2">
                        <asp:ListView ID="RecMessageList" runat="server" DataKeyNames="MessId" GroupItemCount="100" ItemType="Project2.Models.Message" SelectMethod="GetRecMessages">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>

                            <ItemTemplate>

                                <div class="list-group" runat="server">

                                    <%--<a href="<%#: "CourseInfo.aspx?name=" + Item.CourseName + "&teacherFN=" + Item.Teachers.First().FirstName + "&teacherLN=" + Item.Teachers.First().LastName + "&desc=" + Item.CourseDescription + "&year=" + Item.CourseYear + "&id=" + Item.CourseID %>" class="list-group-item">--%>
                                    <h4 class="list-group-item-heading">
                                        <asp:Label runat="server"> <%#: Item.MessHeader %>  .  </asp:Label>

                                        <%--<asp:Label Text="<%#: Item.Teachers.First().FirstName +' '+Item.Teachers.First().LastName %> " runat="server"></asp:Label>--%>
                                    </h4>
                                    <%--<p class="list-group-item-text"><%#: Item.CourseDescription %></p>--%>
                                    <%--</a>--%>
                                </div>

                            </ItemTemplate>

                        </asp:ListView>
                    </div>

                    <div id="tabs-3">
                        <asp:ListView ID="SentMessageList" runat="server" DataKeyNames="MessId" GroupItemCount="100" ItemType="Project2.Models.Message" SelectMethod="GetSentMessages">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>

                            <ItemTemplate>

                                <div class="list-group" runat="server">

                                    <%--<a href="<%#: "CourseInfo.aspx?name=" + Item.CourseName + "&teacherFN=" + Item.Teachers.First().FirstName + "&teacherLN=" + Item.Teachers.First().LastName + "&desc=" + Item.CourseDescription + "&year=" + Item.CourseYear + "&id=" + Item.CourseID %>" class="list-group-item">--%>
                                    <h4 class="list-group-item-heading">
                                        <asp:Label runat="server"> <%#: Item.MessHeader %>  .  </asp:Label>

                                        <%--<asp:Label Text="<%#: Item.Teachers.First().FirstName +' '+Item.Teachers.First().LastName %> " runat="server"></asp:Label>--%>
                                    </h4>
                                    <%--<p class="list-group-item-text"><%#: Item.CourseDescription %></p>--%>
                                    <%--</a>--%>
                                </div>

                            </ItemTemplate>

                        </asp:ListView>
                    </div>
                </div>
                <br />


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
