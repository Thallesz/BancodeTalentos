<%@ Page Title="Cadastro de Usuário" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUser.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroUser.CadastroUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <img src="../img/empresa1.jpg" class="img-fluid" style="background-repeat: no-repeat; width: 1583px; height: 350px" />
    <br />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <div class="container-principal">
        <h2 style="font-size: 22px; color: #2B4691; margin-top: 50px">Cadastre-se</h2>
        <div style="border: none; padding: 58px; background-color: #F8F9FA; border-radius: 0px">
            <div class="row">
                <div class="col-sm-6">
                    <h2 style="font-size: 20px; color: #2B4691">DADOS PESSOAIS</h2>
                    <div class="row-mb-3" style="margin-left: 50px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">NOME:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNomeUser" placeholder="Nome" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    </div>
                    <div class="row-mb-3" style="margin-left: 50px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">E-MAIL:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="E-mail" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CPF:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCPFUser" placeholder="CPF" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                        <asp:Label runat="server" ID="lblAlertaCpf"></asp:Label>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">DATA DE NASCIMENTO:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNasc" TextMode="Date" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row-mb-3" style="margin-left: 50px; margin-top: 60px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">SENHA:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" ID="txtSenha" placeholder="Senha" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CELULAR:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular" placeholder="Celular" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>

                    </div>
                    <div class="row-mb-3" style="margin-left: 50px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">ESTADO</h2>
                        <asp:DropDownList runat="server" ID="droplistEstado" AutoPostBack="true" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:DropDownList>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CIDADE:</h2>
                        <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="true" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:DropDownList>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top:50px">
        <asp:CheckBox runat="server" ID="checkboxConcord" OnCheckedChanged="checkboxConcord_CheckedChanged"  style="margin-left:100px"/>
        <asp:Label runat="server" id="lblConcord" Text="CONCORDO EM CRIAR A CONTA E RECEBER ANÚNCIOS DE VAGAS POR EMAIL" style="color:#2B4691"></asp:Label>
        <asp:Button runat="server" ID="btnCadUser" OnClick="btnCadUser_Click" CssClass="button" Text="CADASTRAR" Style="margin-top: 50px; margin-left: 991px" />
    </div>
        <div style="padding-bottom: 100px"></div>
</asp:Content>
