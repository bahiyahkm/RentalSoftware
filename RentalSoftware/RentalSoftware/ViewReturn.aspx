<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewReturn.aspx.cs" Inherits="RentalSoftware.ViewReturn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Return Details</h1>
          </div>

     <div class="row">
         <div class="col-md-12">
             <div class="card shadow mb-4">
                <!-- Card Header --->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Return Details</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      
                    </a>
                       
                  </div>
                </div>
                 <!--Card Body-->
                  <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Entry Date"></asp:Label>    
                                <asp:TextBox ID="TxtEntrydate" runat="server" CssClass="form-control"></asp:TextBox>
                                 <asp:Label ID="Lblentrydate" runat="server" Text=""></asp:Label>
                </div>
                            </div>
                        </div>
                       <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Label ID="Label2" runat="server" Text="Due Date"></asp:Label> 
                                 <asp:TextBox ID="TxtDuedate" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                 </div>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Label ID="Label3" runat="server" Text="Current Date"></asp:Label>
                                 <asp:TextBox ID="TxtCurrentdate" runat="server" CssClass="form-control"></asp:TextBox>
                                 <asp:Label ID="Lblcurrentdate" runat="server" Text="" Visible="false"></asp:Label>
                                 </div>
                        </div>
                        </div>
                      <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Label ID="Label4" runat="server" Text="Item Price"></asp:Label>
                                 <asp:TextBox ID="TxtItemprice" runat="server" CssClass="form-control text-right"></asp:TextBox>
                                 <asp:Label ID="Lblprice" runat="server" Text="" Visible="false"></asp:Label>
                                 </div>
                        </div>
                        </div>
                       <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Label ID="Label5" runat="server" Text="Due Amount"></asp:Label>
                                 <asp:TextBox ID="TxtDueamount" runat="server" CssClass="form-control text-right"></asp:TextBox>
                                 </div>
                        </div>
                        </div>
                       <div class="row">
                        <div class="col-md-3">
                             <div class="form-group">
                                 <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="form-control" OnClick="BtnSubmit_Click" />
                                 </div>
                            
                        </div>
                           <div class="col-md-10">
                                <asp:Label ID="Lblstatus" runat="server" Text="Status"></asp:Label>
                            </div>
                        </div>
                      </div>
                 </div>
             </div>
         </div>
    </asp:Content>
