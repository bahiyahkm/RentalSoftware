<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="RentalSoftware.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="ItemName"></asp:Label>
             <asp:TextBox ID="TxtItemname" runat="server" CssClass="form-control" Width="186px"></asp:TextBox>
        </div>
       <div class="col-sm-12">
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="RentRate"></asp:Label>
            <asp:TextBox ID="TxtRentrate" runat="server" CssClass="form-control" Width="123px" TextMode="Number"></asp:TextBox>
        </div>
    </div>
       <div class="col-sm-12">
    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="TxtQuantity" runat="server" CssClass="form-control" Width="120px"></asp:TextBox>
           </div>
                    </div>
                </div>
            </div>

        <div class="row m-2">
            <div class="col-md-12">

                <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" ValidationGroup="b" CssClass="btn active" />
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btn active" />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="LblMessage" runat="server" Visible="False"></asp:Label>
            </div>

        </div>
        </div>
</asp:Content>
