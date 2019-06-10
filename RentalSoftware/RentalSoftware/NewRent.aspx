<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewRent.aspx.cs" Inherits="RentalSoftware.NewRent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label1" runat="server" Text="RentTransactionNo"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtRentTransno" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label6" runat="server" Text="ItemName"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label7" runat="server" Text="CustomerName"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label8" runat="server" Text="StartDate"></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:TextBox ID="TxtStart" runat="server" TextMode="Date"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
        <div class="col-md-3">
            <asp:Label ID="Label9" runat="server" Text="EndDate"></asp:Label>
        </div>
        <div class="col-md-12">
             <asp:TextBox ID="TxtEnd" runat="server" TextMode="Date"></asp:TextBox>
        </div>
    </div>
    <div class="row m-2">
          <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
            &nbsp;&nbsp;
    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
            &nbsp;
    <asp:Label ID="Lblitem" runat="server"></asp:Label>
    <asp:Label ID="Lblcust" runat="server"></asp:Label>
        </div>
    <br />
       
</asp:Content>
