<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R2.aspx.cs" Inherits="EncuestaUH.R2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Image ID="Image1" runat="server" Height="360px" ImageUrl="~/Imagen2.jpg" Width="460px" />
             <br />
            <br />
            <br />
            <br />
            Pregunta 2
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
            <asp:Button ID="bcontinuar" runat="server" BorderColor="#660066" BorderStyle="Solid" Height="66px" Text="Siguiente" Width="134px" OnClick="bcontinuar_Click" />
        </div>
    </form>
</body>
</html>
