<%@ Page Title="Admininstration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project2.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    
    
    <h3>Add Course:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelAddName" runat="server">Course Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCourseName" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Course name required." ControlToValidate="AddCourseName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddTeacher" runat="server">Teacher First Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCourseTeacherFN" runat="server" CssClass="input-group-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Teacher Name required." ControlToValidate="AddCourseTeacherFN" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server">Teacher Last Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCourseTeacherLN" runat="server" CssClass="input-group-sm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Teacher Name required." ControlToValidate="AddCourseTeacherLN" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server" ID="LabelAddYear">Course Year:</asp:Label></td>
            <td>
                <asp:DropDownList ID="SelectCourseYear" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem> 
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
              
            </td>
        </tr>
        <tr>
            <td><asp:Label runat="server" ID="LabelAddDepartement">Course Year:</asp:Label></td>
            <td>
                <asp:DropDownList ID="SelectCourseDepartement" runat="server">
                    <asp:ListItem>Networks</asp:ListItem>
                    <asp:ListItem>Software Engineering</asp:ListItem>
                    <asp:ListItem>Artificial Intillegence</asp:ListItem>
                </asp:DropDownList>
              
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddDescription" runat="server">Description:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCourseDescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Description required." ControlToValidate="AddCourseDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddCourseButton" runat="server" Text="Add Course" OnClick="AddCourseButton_Click"  CausesValidation="true" CssClass="btn btn-success"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>

    <h3>Remove Course:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveCourse" runat="server">Course:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveCourse" runat="server" ItemType="Project2.Models.Course" 
                    SelectMethod="GetCourses" AppendDataBoundItems="true" 
                    DataTextField="CourseName" DataValueField="CourseID" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveCourseButton" runat="server" Text="Remove Course" OnClick="RemoveCourseButton_Click" CausesValidation="false" CssClass="btn btn-danger"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
    
    <hr/>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
            Well done! You Successfully added a new course.
        </asp:Literal>
    </div>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="RemoveSuccessAlert" Visible="False">
            Well done! You Successfully removed a course.
        </asp:Literal>
    </div>

</asp:Content>
