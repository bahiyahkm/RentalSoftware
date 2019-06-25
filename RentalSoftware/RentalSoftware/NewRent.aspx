<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewRent.aspx.cs" Inherits="RentalSoftware.NewRent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="RentTransactionNo"></asp:Label>
            <asp:TextBox ID="TxtRentTransno" runat="server" CssClass="form-control" Width="550px"></asp:TextBox>
        </div>
                    </div>
    
        <div class="col-sm-12">
            <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="ItemName"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" AutoPostBack="True" CssClass="dropdown">
            </asp:DropDownList>
        </div>
    </div>
        <div class="col-sm-12">
           <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="CustomerName"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
    </div>
        <div class="col-sm-12">
            <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="StartDate"></asp:Label>
            <asp:TextBox ID="TxtStart" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="EndDate"></asp:Label>
                        <asp:TextBox ID="TxtEnd" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    </div>
    </div>    
                    </div>
                
            </div>
        
    <div class="row-m-2">
        <div class="col-md-12">
           
          <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="btn active" />
            &nbsp;&nbsp;
    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" Width="78px" CssClass="btn active"  />
            &nbsp;
    <asp:Label ID="Lblitem" runat="server" Visible="False"></asp:Label>
        </div>
           
        </div>
        </div>
    
     
</asp:Content>
