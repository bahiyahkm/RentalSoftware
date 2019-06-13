<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="RentalSoftware.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="CustomerName"></asp:Label>
                        <asp:TextBox ID="TxtCustomername" runat="server" CssClass="form-control" Width="278px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCustomername" ErrorMessage="Must be required"></asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="col-sm-12">
           <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="CustomerAddress"></asp:Label>
                        <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Width="257px"></asp:TextBox>
                  </div>
        </div>

        <div class="col-sm-12">
           
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="CustomerPhoneNo"></asp:Label>
                        <asp:TextBox ID="TxtPhoneNo" runat="server" CssClass="form-control" Width="188px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhoneNo" ErrorMessage="Invalid Phone Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                 
            </div>
        </div>
        <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="CustomerCity"></asp:Label>
                        <asp:TextBox ID="TxtCity" runat="server" CssClass="form-control" Width="179px"></asp:TextBox>
                  
            </div>
        </div>
        <div class="col-sm-12">
          
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="CustomerEmail"></asp:Label>
                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" Width="201px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-m-2">
            <div class="col-md-12">
                <div class="row-mb-2">
                    
                       <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" CssClass="btn-success" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btn-success" />
                 </div>
                   <asp:Label ID="LblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
               
        </div>
    </div>
</asp:Content>
