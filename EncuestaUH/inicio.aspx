<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="EncuestaUH.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cedula:<asp:TextBox ID="Tcedula" runat="server" Width="128px"></asp:TextBox>
            <br />
            nombre:<asp:TextBox ID="Tnombre" runat="server" Height="22px" Width="128px"></asp:TextBox>
            <br />
            <br />
            <br />
            Genero:<asp:RadioButton ID="rm" Text="Masculino" runat="server" /><asp:RadioButton ID="rF" Text="Femenino" runat="server" />
            <br />
            <br />
            <asp:Button ID="bsiguiente" runat="server" Height="44px" Text="Siguiente" Width="111px" BorderColor="#660066" BorderStyle="Solid" OnClick="bsiguiente_Click" />
        </div>
    </form>
</body>
</html>
