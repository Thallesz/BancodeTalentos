<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sujestões.aspx.cs" Inherits="TccBancoTalentos.TelaSujestões.Sujestões" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <h2 style="font-size: 55px; color: #2B4691; margin-top: 50px; margin-left: 325px">Como posso ajudar?</h2>
        <h2 style="font-size: 16px; color: #2B4691; margin-top: 50px; margin-left: 325px">Tem alguma duúvida ou tem uma sujestão para a melhoria do site?</h2>
        <h2 style="font-size: 16px; color: #2B4691; margin-top: 0px; margin-left: 430px">Apenas preencha o formulario abaixo</h2>
        <div style="border: none; padding: 58px; background-color: #F8F9FA; border-radius: 0px; margin-bottom: 350px">
            <div class="row">
                <asp:DropDownList runat="server" ID="droplistSujest" AutoPostBack="false" OnSelectedIndexChanged="droplistSujest_SelectedIndexChanged" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:DropDownList>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <h2 style="font-size: 16px; color: #2B4691; cursor: default">NOME:</h2>
                    <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" placeholder="Nome"  Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <h2 style="font-size: 16px; color: #2B4691; cursor: default">E-MAIL:</h2>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email"  Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                </div>
            </div>
        </div>
        <asp:Button runat="server" ID="btnEnviar" Text="ENVIAR" CssClass="button" OnClick="btnEnviar_Click" Style="margin-bottom: 350px; margin-left: 991px" />
    </div>
</asp:Content>