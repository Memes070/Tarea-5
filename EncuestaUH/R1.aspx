<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1.aspx.cs" Inherits="EncuestaUH.R1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="349px" ImageUrl="~/Imagen1.png" Width="473px" />
            <br />
            <br />
            <br />
            Pregunta 1
            <asp:DropDownList ID="DropDownList1" runat="server" Width="90px" >
                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
                <asp:ListItem>d</asp:ListItem>
                <asp:ListItem>e</asp:ListItem>
                <asp:ListItem>f</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="bcontinuar" runat="server" BorderColor="#660066" BorderStyle="Solid" Height="66px" OnClick="bcontinuar_Click" Text="Siguiente" Width="134px" />
        </div>
    </form>
</body>
</html>
