<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rent.aspx.cs" Inherits="RentalSoftware.Rent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
           <div class="row">
        <div class="col-md-6">
            <div class ="row-m-2">
            <div class="form-group">
                <asp:Button ID="BtnNew" runat="server" Text="New" OnClick="BtnNew_Click" CssClass="form-control" />
            </div>
                </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            
            <div class="row mb-2">
                <div class="col-md-4">
                     <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" CssClass="dropdown">
                </asp:DropDownList>
                </div>
                <div class ="col-md-4">
                     <asp:Label ID="Label3" runat="server" Text="Customer Name"></asp:Label>
                &nbsp;<asp:TextBox ID="TxtCustomerName" runat="server" CssClass="text-success" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                
                </div>
                <div class ="col-md-4">
                     <asp:Label ID="Label4" runat="server" Text="Search"></asp:Label>
                </div>
            </div>
                <div class="row">
                    <div class="col-md-12">
                         <asp:GridView ID="GridViewRental" runat="server" OnSelectedIndexChanged="GridViewRental_SelectedIndexChanged"  CssClass="table table-dark">
            </asp:GridView>
                        </div>
                </div>
               
              
                    
            </div>
           
        </div>
    </div>
 
  
</asp:Content>
