<%@ Page Title="Cadastro de Usuário" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUser.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroUser.CadastroUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <img src="../img/empresa.jpg" style="background-repeat:no-repeat;max-width:100%" />
        <div style="border: none; padding: 60px; margin-top: 50px; border-radius: 0px; box-shadow: 1px 1px 5px #030303">
            <div class="col-12">
                <h2 style="font-size: 25px; color: mediumblue">DADOS PESSOAIS</h2>
                <div class="row-mb-3">
                    <h2 style="font-size: 20px; color: cornflowerblue; cursor:default">NOME:</h2>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtNomeUser" placeholder="Nome" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                </div>
                <div class="row-mb-3">
                    <h2 style="font-size: 25px; color: cornflowerblue; cursor:default">E-MAIL:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="E-mail" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    <h2 style="font-size: 20px; color: cornflowerblue; cursor:default">CPF:</h2>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCPFUser" placeholder="CPF" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    <asp:Label runat="server" ID="lblAlertaCpf"></asp:Label>
                </div>
            </div>
            <div class="row-mb-3">
                <h2 style="font-size: 25px; color:cornflowerblue; cursor:default">SENHA:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" placeholder="Senha" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                <h2 style="font-size: 25px; color: cornflowerblue; cursor:default">CELULAR:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular" placeholder="Celular" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                
            </div>  
            <div class="col-mb-3">
            </div>
                <h2 style="font-size: 25px; color: cornflowerblue; cursor:default">CIDADE:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCidade" placeholder="SELECIONE A CIDADE" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                <h2 style="font-size: 25px; color: cornflowerblue; cursor:default">ESTADO</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEstado" placeholder="SELECIONE O ESTADO" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>              
        </div>
        <div>
            <asp:Button runat="server" ID="btnCadUser" OnClick="btnCadUser_Click" CssClass="button" Text="CADASTRAR" Style="margin-top: 80px;margin-left:1000px" />
        </div>
        <div style="padding-bottom:100px"></div>
    </div>
    
</asp:Content>
