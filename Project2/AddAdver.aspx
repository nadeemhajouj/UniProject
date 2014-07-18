<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAdver.aspx.cs" Inherits="Project2.AddAdver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add Advertisement:</h3>
    
    <table>
        <tr>
            <td><asp:Label ID="LabelAddHeader" runat="server">Announcement Header:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddAdvertisementHeader" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Advertisement Header required." ControlToValidate="AddAdvertisementHeader" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="LabelAddBody" runat="server">Announcement Body:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddAdvertisementBody" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Advertisement Body required." ControlToValidate="AddAdvertisementBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
 
        <tr>
            <td><asp:Label runat="server" ID="LabelAddYear">Advertisement Year:</asp:Label></td>
            <td>
                <asp:DropDownList ID="SelectAdvertisementYear" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem> 
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
              
            </td>
        </tr>
        

    </table>

    <p></p>
    <p></p>
    <asp:Button ID="AddAdverButton" runat="server" Text="Add Advertisement" OnClick="AddAdverButton_Click" CssClass="btn btn-success"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    
    
    <hr/>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
            Well done! You Successfully added a new Announcement.
        </asp:Literal>
    </div>

</asp:Content>
