<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vagas.aspx.cs" Inherits="TccBancoTalentos.Vagas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    vaga: <asp:TextBox runat="server" id="txtVaga"></asp:TextBox>
    <br />
    salario: <asp:TextBox runat="server" id="txtSalario"></asp:TextBox>
    <br />
    cargah: <asp:TextBox runat="server" id="txtCargaH"></asp:TextBox>
    <br />
    requisito: <asp:TextBox runat="server" id="txtRequisito"></asp:TextBox>
    <br />
    empresa: <asp:TextBox runat="server" id="txtEmpresa"></asp:TextBox>
    <br />
    <asp:Button runat="server" ID="btnCadVaga" Text="Cadastro de vaga" />
</asp:Content>
