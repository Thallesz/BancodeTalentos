<%@ Page Title="Página de Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sujestões.aspx.cs" Inherits="TccBancoTalentos.TelaSujestões.Sujestões" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <h2 style="font-size: 55px; color: #2B4691; margin-top: 50px; margin-left: 325px">Como posso ajudar?</h2>
        <h2 style="font-size: 16px; color: #2B4691; margin-left: 300px">Tem alguma dúvida,sujestão para a melhoria do site ou deseja se juntar a nós?</h2>
        <h2 style="font-size: 16px; color: #2B4691; margin-left: 370px">Apenas envie um email para algum desses logo abaixo.</h2>
        <h2 style="font-size: 16px; color: #2B4691; margin-left: 330px">0000886175@senaimgaluno.com.br / 0000887027@senaimgaluno.com.br</h2>
        <asp:Button runat="server" ID="btnEnviar" Text="ENVIAR" CssClass="button" OnClick="btnEnviar_Click" Style="margin-top: 0px; margin-left: 500px" />
    </div>
   
</asp:Content>
