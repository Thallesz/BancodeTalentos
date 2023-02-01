<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="TccBancoTalentos.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
   nome: <asp:TextBox runat="server" id="txtNome"></asp:TextBox>
    <br />
   genero: <asp:TextBox runat="server" id="TxtGenero"></asp:TextBox>
    <br />
   cpf:  <asp:TextBox runat="server" id="TxtCPF"></asp:TextBox>
    <br />
   rg:   <asp:TextBox runat="server" id="TxtRG"></asp:TextBox>
    <br />
   email  <asp:TextBox runat="server" id="TxtEmail"></asp:TextBox>
    <br />
   telefone: <asp:TextBox runat="server" id="TxtTelefone"></asp:TextBox>
    <br />
   celular:  <asp:TextBox runat="server" id="TxtCelular"></asp:TextBox>
    <br />
    <asp:Button runat="server" ID="btnCadastro" Text="Cadastrar" />
</asp:Content>
