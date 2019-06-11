<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="RentalSoftware.AddCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label1" runat="server" Text="CustomerName"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtCustomername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCustomername" ErrorMessage="Must be required"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label2" runat="server" Text="CustomerAddress"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label3" runat="server" Text="CustomerPhoneNo"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtPhoneNo" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPhoneNo" ErrorMessage="Invalid Phone Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label4" runat="server" Text="CustomerCity"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
    <asp:Label ID="Label5" runat="server" Text="CustomerEmail"></asp:Label>
            </div>
        <div class="col-md-12">
    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
    
    <div class="row m-2">
    <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
&nbsp;
    <asp:Label ID="LblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </div>
</asp:Content>
