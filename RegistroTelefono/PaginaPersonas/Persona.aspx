<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="RegistroTelefono.PaginaPersonas.Persona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registro Personas</h1>
    Persona Id:<asp:TextBox ID="IdTextBox" runat="server" style="margin-left: 8px" Width="100px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telefono:
    <asp:TextBox ID="telefonoTextBox" runat="server" Width="223px"></asp:TextBox>
    <asp:Button ID="agregarButton" runat="server" Height="40px" Text="Agregar" Width="60px" OnClick="agregarButton_Click" />
&nbsp;<p>Nombre:<asp:TextBox ID="nombreTextBox" runat="server" style="margin-left: 13px" Width="262px" Font-Names="Rod"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="32px" style="margin-left: 435px" Width="277px">
            <Columns>
                <asp:BoundField HeaderText="TIPO" />
                <asp:BoundField HeaderText="TELEFONO" />
            </Columns>
        </asp:GridView>
&nbsp;Sexo:</p>
    <p>&nbsp;<asp:RadioButton ID="mRadioButton" runat="server" Text="Masculino" />
        <asp:RadioButton ID="fRadioButton" runat="server" Text="Femenino" />
    </p>
    Tipo Telefono:<asp:DropDownList ID="TipoDropDownList" runat="server" Height="25px" style="margin-left: 6px" Width="241px" AutoPostBack="True">
        <asp:ListItem>Casa</asp:ListItem>
        <asp:ListItem>Movil</asp:ListItem>
        <asp:ListItem>Trabajo</asp:ListItem>
    </asp:DropDownList>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="nuevo" runat="server" style="margin-left: 383px" Text="NUEVO" Width="90px" OnClick="nuevo_Click1"  />
        <asp:Button ID="guardar" runat="server" style="margin-left: 38px" Text="GUARDAR" Width="90px" OnClick="guardar_Click"/>
        <asp:Button ID="eliminar" runat="server" style="margin-left: 39px" Text="ELIMINAR" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
