<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="RentalSoftware.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label1" runat="server" Text="ItemName"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtItemname" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label2" runat="server" Text="RentRate"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtRentrate" runat="server"></asp:TextBox>
        </div>
    </div>
   <div class="row m-2">
       <div class="col-md-3">
    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
           </div>
       <div class="col-md-12">
    <asp:TextBox ID="TxtQuantity" runat="server"></asp:TextBox>
           </div>
       </div>
    <div class="row m-2">
        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn active" OnClick="BtnAdd_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn active" />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="LblMessage" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
