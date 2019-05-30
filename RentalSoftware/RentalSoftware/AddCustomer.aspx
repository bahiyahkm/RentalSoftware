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
            </div>
        </div>
    
    <div class="row m-2">
    <asp:Button ID="BtnAdd" runat="server" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnSave" runat="server" Text="Save" />
&nbsp;
    <asp:Label ID="LblMessage" runat="server" Text="Label"></asp:Label>
    
    </div>
</asp:Content>
