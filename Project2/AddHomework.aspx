<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddHomework.aspx.cs" Inherits="Project2.AddHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<h3>Add Advertisement:</h3>
    
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
    </div>

    
</asp:Content>
