<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Desempeño4_Clase2_EnzoMelian.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CargaDpto.aspx">Carga de departamentos</asp:HyperLink>
        </div>
        <br>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListaDpto.aspx">Listado de departamentos</asp:HyperLink>
    </form>
</body>
</html>
