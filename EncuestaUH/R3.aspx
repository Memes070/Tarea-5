<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R3.aspx.cs" Inherits="EncuestaUH.R3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="358px" ImageUrl="~/Imagen3.png" Width="400px" />
            <br />
            <br />
            <br />
            Pregunta 3
            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="81px">
                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
                <asp:ListItem>d</asp:ListItem>
                <asp:ListItem>e</asp:ListItem>
                <asp:ListItem>f</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="56px" Text="Salvar" Width="112px" BorderColor="#660066" BorderStyle="Solid" OnClick="Salvar_Click" />
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="biniciar" runat="server" Text="Nueva encuesta" BorderColor="#000066" BorderStyle="Dashed" Height="55px" Width="113px" OnClick="biniciar_Click" />
        </div>
    </form>
</body>
</html>
