<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="RegistroTelefono.PaginaPersonas.Persona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registro Personas</h1>
    Persona Id:<asp:TextBox ID="TextBox6" runat="server" style="margin-left: 8px" Width="100px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telefono:
    <asp:TextBox ID="TextBox7" runat="server" Width="223px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Height="40px" Text="Agregar" Width="60px" />
&nbsp;<p>Nombre:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 13px" Width="262px" Font-Names="Rod"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>Sexo:</p>
    <p>&nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Masculino" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Femenino" />
    </p>
    Tipo Telefono:<asp:DropDownList ID="DropDownList1" runat="server" Height="25px" style="margin-left: 6px" Width="241px" AutoPostBack="True">
        <asp:ListItem>Casa</asp:ListItem>
        <asp:ListItem>Movil</asp:ListItem>
    </asp:DropDownList>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" style="margin-left: 383px" Text="NUEVO" Width="90px" />
        <asp:Button ID="Button3" runat="server" style="margin-left: 38px" Text="GUARDAR" Width="90px" />
        <asp:Button ID="Button4" runat="server" style="margin-left: 39px" Text="ELIMINAR" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
