<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DatabaseWebApp.UI.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Reg No"></asp:Label>
        <asp:TextBox ID="regTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="addressTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
        <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Subject"></asp:Label>
        <asp:TextBox ID="subTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" />
        <br />
        <br />
        <asp:Button ID="showButton" runat="server" OnClick="showButton_Click" Text="Show" />
        <br />
        <asp:Label ID="Label5" runat="server" Text="MessageLabel"></asp:Label>
        <br />
        <asp:GridView ID="studentGridView" runat="server">
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
