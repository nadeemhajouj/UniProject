<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AskQuestion.aspx.cs" Inherits="Project2.AskQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--        <div class="col-lg-10">
                <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="QuestionHeaderLabel" CssClass="col-md-2 control-label">Question Header</asp:Label>

                            <div class="col-md-3">
                                <asp:TextBox runat="server" ID="QuestionHeader" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="QuestionHeader"
                                    CssClass="text-danger" ErrorMessage="The Question Header field is required." />
                                <br />

                            </div>
                </div>
        
                <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="QuestionBodyLabel" CssClass="col-md-2 control-label">Question Body</asp:Label>
                            <div class="col-md-7" style="Height:160px">
                                <asp:TextBox TextMode="multiline" runat="server" ID="QuestionBody" CssClass="form-control" Height="150" width="100%"/>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="QuestionBody"
                                    CssClass="text-danger" ErrorMessage="The Question Body field is required." />
                                <br />
                            </div>
                </div>

            </div>

            <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                     <asp:Button ID="AddQuestionButton" runat="server" OnClick="AddQuestionButton_Click" Text="Add Question" CssClass="btn btn-success" />
                    </div>
            </div>

            <div class="alert-success" role="alert"  >
                <asp:Literal runat="server" ID="SuccessAlert" Visible="False">
                    Well done! You Successfully added a new Question.
                </asp:Literal>
            </div>--%>

           <tr>
            <td><asp:Label ID="LabelAddHeader" runat="server">Question Header:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddQuestionHeader" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Question Header required." ControlToValidate="AddQuestionHeader" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="LabelAddBody" runat="server">Question Body:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddQuestionBody" runat="server" CssClass="input-group"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Question Body required." ControlToValidate="AddQuestionBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
 
        <tr>
                <div class="col-md-offset-2 col-md-10">
                     <asp:Button ID="AddQuestionButton" runat="server" OnClick="AddQuestionButton_Click" Text="Add Question" CssClass="btn btn-success" />
                    </div>

</asp:Content>
