<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAdver.aspx.cs" Inherits="Project2.AddAdver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Add Announcement</h2>
    
    <hr/>
    
    <div class="row">
        
        <div class="form-horizontal">
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="AnnouncementHeader" CssClass="col-md-2 control-label">Announcement Header</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="AnnouncementHeader" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="AnnouncementHeader"
                        CssClass="text-danger" ErrorMessage="The Announcement Header field is required." />
                </div>
            </div>
            
            <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="SelectAcademicYear" CssClass="col-md-2 control-label">Academic Year</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="SelectAcademicYear" runat="server" CssClass="form-control">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem> 
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="SelectAcademicYear"
                    CssClass="text-danger" ErrorMessage="The Academic Year field is required." />
            </div>
        </div>

            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="AnnouncementBody" CssClass="col-md-2 control-label">Announcement Body</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="AnnouncementBody" CssClass="form-control" TextMode="MultiLine" Height="200" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="AnnouncementBody"
                        CssClass="text-danger" ErrorMessage="The Announcement Body field is required." />
                </div>
            </div>
            
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="AddAdverButton" runat="server" Text="Add Announcement" OnClick="AddAdverButton_Click" CssClass="btn btn-success"/>
                <asp:Button ID="UploadButton" runat="server" Text="Upload" CssClass="btn btn-primary"/>
            </div>
        </div>

        </div>
        


    </div>
    


    <%--<table>
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
    <p></p>--%>
    
    
    <hr/>

    <div class="alert-success" role="alert" align="center">
        <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
            Well done! You Successfully added a new Announcement.
        </asp:Literal>
    </div>

</asp:Content>
