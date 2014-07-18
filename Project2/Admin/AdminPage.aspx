<%@ Page Title="Admininstration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project2.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    
    
    <div class="form-horizontal">
        
        <h4>Add a new Course</h4>
        
        <hr />
        
        <asp:ValidationSummary runat="server" CssClass="text-danger"/>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AddCourseName" CssClass="col-md-2 control-label">Course Name</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="AddCourseName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="AddCourseName"
                    CssClass="text-danger" ErrorMessage="The Course Name field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AddCourseTeacherFN" CssClass="col-md-2 control-label">Teacher First Name</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="AddCourseTeacherFN" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="AddCourseTeacherFN"
                    CssClass="text-danger" ErrorMessage="The Teacher First Name field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AddCourseTeacherLN" CssClass="col-md-2 control-label">Teacher Last Name</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="AddCourseTeacherLN" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="AddCourseTeacherLN"
                    CssClass="text-danger" ErrorMessage="The Teacher First Name field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="SelectCourseYear" CssClass="col-md-2 control-label">Course Year</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="SelectCourseYear" runat="server" CssClass="form-control">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem> 
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="SelectCourseYear"
                    CssClass="text-danger" ErrorMessage="The Course Year field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AddCourseDescription" CssClass="col-md-2 control-label">Course Description</asp:Label>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="AddCourseDescription" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="AddCourseDescription"
                    CssClass="text-danger" ErrorMessage="The Teacher First Name field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AddCourseDescription" CssClass="col-md-2 control-label">Course Departement</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="SelectCourseDepartement" runat="server" CssClass="form-control">
                    <asp:ListItem>Networks</asp:ListItem>
                    <asp:ListItem>Software Engineering</asp:ListItem>
                    <asp:ListItem>Artificial Intelligence</asp:ListItem>
                    <asp:ListItem>Basic Science</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="SelectCourseDepartement"
                    CssClass="text-danger" ErrorMessage="The Teacher First Name field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="AddCourseButton" runat="server" OnClick="AddCourseButton_Click" Text="Add Course" CssClass="btn btn-success" />
            </div>
        </div>

    </div>

    
    
    <p></p>
    <p></p>
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
