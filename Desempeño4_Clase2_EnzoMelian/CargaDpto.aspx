<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargaDpto.aspx.cs" Inherits="Desempeño4_Clase2_EnzoMelian.CargaDpto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="BtnCDAtras" runat="server" Height="38px" Text="Atras" Width="89px" OnClick="BtnCDAtras_Click" />
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Dirección: "></asp:Label>
&nbsp;<asp:TextBox ID="tBoxDir" runat="server" required="true"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Planta:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tBoxPln" runat="server" required="true"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Número:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tBoxNum" runat="server" required="true"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nombre del propietario:" required="true"></asp:Label>
&nbsp;<asp:TextBox ID="tBoxNomPr" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Apellido del propietario:" required="true"></asp:Label>
&nbsp;<asp:TextBox ID="tBoxApePr" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="¿Está el departamento alquilado?:"></asp:Label>
        <asp:RadioButtonList ID="rdBtnAlq" runat="server" required="true">
            <asp:ListItem Value="0">No</asp:ListItem>
            <asp:ListItem Value="1">Si</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Nombre del inquilino:"></asp:Label>
&nbsp;<asp:TextBox ID="tBoxNomInq" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Apellido del inquilino:"></asp:Label>
&nbsp;<asp:TextBox ID="tBoxApeInq" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCDCarga" runat="server" Height="46px" OnClick="btnCDCarga_Click" Text="Carga" Width="86px" />
        <br />
        <br />
        <asp:Label ID="LabelCarga" runat="server" Text="-"></asp:Label>
        <br />
    </form>
</body>
</html>
