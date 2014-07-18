<%@ Page Title="New Homework" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddHomework.aspx.cs" Inherits="Project2.AddHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

<h2>Add New Homework</h2>
    
    <hr/>
    
    <div class="row">
        
        <div class="form-horizontal">
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="HomeworkName" CssClass="col-md-2 control-label">Homework Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="HomeworkName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="HomeworkName"
                        CssClass="text-danger" ErrorMessage="The Homework Name field is required." />
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="HomeworkCourse" CssClass="col-md-2 control-label">Homework Course</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="HomeworkCourse" CssClass="form-control"/>
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="HomeworkDesc" CssClass="col-md-2 control-label">Homework Due Date</asp:Label>
                <div class="col-md-10">
                    <asp:Literal ID="DuDate" runat="server"><input type="text" id="datepicker" class="form-control"></asp:Literal>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="HomeworkDesc"
                        CssClass="text-danger" ErrorMessage="The Homework Body field is required." />
                </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="HomeworkDesc" CssClass="col-md-2 control-label">Homework Description</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="HomeworkDesc" CssClass="form-control" TextMode="MultiLine" Height="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="HomeworkDesc"
                        CssClass="text-danger" ErrorMessage="The Due Date field is required." />
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button ID="AddHomeworkButton" runat="server" Text="Add Announcement" OnClick="AddHomeworkButton_Click" CssClass="btn btn-success"/>
                    <asp:Button ID="UploadButton" runat="server" Text="Upload" CssClass="btn btn-primary"/>
                </div>
            </div>

        </div>
        


    </div>

    <hr/>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
            Well done! You Successfully added a new Homework.
        </asp:Literal>
    </div>
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });

        function pageLoad() {
            $(".datepicker").datepicker(); // Will run at every postback/AsyncPostback
        }
    </script>



<%--<h3>Add Advertisement:</h3>
    
    <table>
        <tr>
            <td><asp:Label ID="LabelAddHeader" runat="server">Homework Header:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddHomeworkHeader" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Homework Header required." ControlToValidate="AddHomeworkHeader" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="LabelAddBody" runat="server">Homework Body:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddHomeworkBody" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Homework Body required." ControlToValidate="AddHomeworkBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
         

    </table>

    <p></p>
    <p></p>
    <asp:Button ID="AddHomeworkButton" runat="server" Text="Add Homework" OnClick="AddHomeworkButton_Click" CssClass="btn btn-success"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    
    
    <hr/>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
            Well done! You Successfully added a new Homework.
        </asp:Literal>
    </div>--%>

    
</asp:Content>
