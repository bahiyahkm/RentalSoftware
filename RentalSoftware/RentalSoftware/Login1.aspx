<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="RentalSoftware.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                
                <asp:Label ID="LblUsername" runat="server" Text="UserName"></asp:Label>
                <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        



        <div class="form-group">

            <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>


            <div class="row-m-2">
                <div class="col-md-12">
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="btn-info" />


                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel"  CssClass="btn-info"/>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
