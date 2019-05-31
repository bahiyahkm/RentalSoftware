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
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    </div>
     <div class="row m-2">
         <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
         </div>
        </div>
    </form>
</body>
</html>
