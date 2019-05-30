<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RentalSoftware.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="LblUsername" runat="server" Text="UserName"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
        </div>
        <div  class="col-md-12">
            <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
        </div>
    </div>
     <div class="row m-2">
         <asp:Button ID="BtnLogin" runat="server" Text="Login" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
         </div>
</asp:Content>
