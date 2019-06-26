<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="RentalSoftware.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Customer Details</h1>
          </div>

     <div class="row">
         <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Customer Details</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      
                    </a>
                  <div class="col-md-3">
                       <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" CssClass="btn btn-info" />
                  </div>
                  </div>
                </div>
                 <!--Card Body-->
                  <div class="card-body">
                    <div class="row">
                        <div class="col-md-10">
                              <asp:GridView ID="GridViewcustomer" runat="server" CssClass="table table-active">
            </asp:GridView>
                            </div>
                        </div>
                      </div>
                 </div>
             </div>
         </div>

   
    
</asp:Content>
