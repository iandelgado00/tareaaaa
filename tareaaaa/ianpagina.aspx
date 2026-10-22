<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="WebApplication4.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CALCULADORA</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <h1>Calculadora Web</h1>
          <br />
          <label>Ingrese el primer número:&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<asp:TextBox ID="tn1" runat="server"></asp:TextBox>
            <br />
            Ingrese el segundo número:&nbsp;&nbsp; <asp:TextBox ID="tn2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            Resultado:&nbsp;&nbsp; <asp:Label ID="lresultado" runat="server" Text="0"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="doperacion" runat="server">
               <asp:ListItem>Suma</asp:ListItem>
               <asp:ListItem>Resta</asp:ListItem>
               <asp:ListItem>División</asp:ListItem>
               <asp:ListItem>Multiplicación</asp:ListItem>
               <asp:ListItem>Potencia 2</asp:ListItem>
               <asp:ListItem>Exponenciación</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:RadioButton ID="rsuma" runat="server" Text="Suma" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rresta" runat="server" Text="Resta" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rdivision" runat="server" Text="División" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rmultiplicacion" runat="server" Text="Multiplicación" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rpotencia2" runat="server" Text="Potencia 2" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rexpo" runat="server" Text="Exponenciación" GroupName="operaciones" />
            <br />
            <br />
            <br />
            <asp:Button ID="bresultado" runat="server" Height="30px" Text="Aceptar" Width="100px" OnClick="bresultado_Click" />
          <br />
        </div>
    </form>
</body>
</html>