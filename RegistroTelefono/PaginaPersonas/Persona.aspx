<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="RegistroTelefono.PaginaPersonas.Persona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <div class="panel panel-info">
       <div class="panel-heading">Registro de Personas </div>
            <div class="panel-body">
            <div class="form-horizontal col-md-12" role="form">

       
        Persona Id:<asp:TextBox ID="IdTextBox" runat="server" style="margin-left: 8px" Width="100px"></asp:TextBox>
           </div>
           </div>
    </div>
    </div>
 Telefono: <asp:TextBox ID="telefonoTextBox" runat="server" Width="223px"></asp:TextBox> 

       
    <asp:Button ID="agregarButton" runat="server" Height="40px" Text="Agregar" Width="60px" OnClick="agregarButton_Click" style="margin-left: 383px" />
            
        <p>Nombre:<asp:TextBox ID="nombreTextBox" runat="server" style="margin-left: 13px" Width="262px" Font-Names="Rod"></asp:TextBox>
   ;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="58px" style="margin-left: 437px">
            <Columns>
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" />
                <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" />
            </Columns>
        </asp:GridView>
       Sexo:</p>
    <p><asp:RadioButton ID="mRadioButton" runat="server" Text="Masculino" />
        <asp:RadioButton ID="fRadioButton" runat="server" Text="Femenino" />
       
      
    </p>
    Tipo Telefono:<asp:DropDownList ID="TipoDropDownList" runat="server" Height="25px" style="margin-left: 6px" Width="241px" AutoPostBack="True">
        <asp:ListItem>Casa</asp:ListItem>
        <asp:ListItem>Movil</asp:ListItem>
        <asp:ListItem>Trabajo</asp:ListItem>
    </asp:DropDownList>
    
  
     <div class="form-group" style="display: inline-block">
        <asp:Button ID="nuevo" class="btn btn-success btn-sm" runat="server" style="margin-left: 383px" Text="NUEVO" Width="90px" OnClick="nuevo_Click1"  />
        <asp:Button ID="guardar" runat="server" style="margin-left: 38px" Text="GUARDAR" Width="90px" OnClick="guardar_Click"/>
        <asp:Button ID="eliminar" runat="server" style="margin-left: 39px" Text="ELIMINAR" />
      </div>
           
  
</asp:Content>
