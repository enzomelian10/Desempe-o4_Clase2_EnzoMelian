<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaDpto.aspx.cs" Inherits="Desempeño4_Clase2_EnzoMelian.ListaDpto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnLDAtras" runat="server" Height="31px" OnClick="btnLDAtras_Click" Text="Atras" Width="75px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Departamento :"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="168px">
            </asp:DropDownList>
&nbsp;
            <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" Width="65px" />
            <br />
            <br />
            <asp:Label ID="LabelDptos" runat="server" Text="-"></asp:Label>
        </div>
    </form>
</body>
</html>
