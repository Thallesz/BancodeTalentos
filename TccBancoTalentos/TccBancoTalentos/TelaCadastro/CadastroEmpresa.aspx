<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroEmpresa.aspx.cs" Inherits="TccBancoTalentos.TelaCadastro.CadastroEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />
    <img src="../img/cadastroempresa.png" class="img-fluid" style="background-repeat: no-repeat; width: 1583px; height: 350px" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <div class="container-principal">
        <h2 style="font-size: 22px; color: #2B4691; margin-top: 50px">Cadastre-se</h2>
        <div style="border: none; padding: 58px; background-color: #F8F9FA; border-radius: 0px">
            <div class="row">
                <div class="col-sm-5">
                    <h2 style="font-size: 20px; color: #2B4691">DADOS DA EMPRESA</h2>
                    <div class="row-mb-3" style="margin-left: 50px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">NOME:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNomeEmpresa" placeholder="Nome" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    </div>
                    <div class="row-mb-3" style="margin-left: 50px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">E-MAIL:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmailEmpresa" placeholder="E-mail" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CNPJ:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCNPJEmpresa" placeholder="CNPJ" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                        <asp:Label runat="server" ID="lblCNPJ"></asp:Label>
                    </div>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-5" >
                    <div class="row-mb-3" style=" margin-top: 60px">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">SENHA:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" ID="txtSenhaEmpresa" placeholder="Senha" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                    </div>
                    <div class="rom-mb-3">
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">ESTADO</h2>
                        <asp:DropDownList runat="server" ID="droplistEstado" AutoPostBack="true" CssClass="dropdownlist" OnSelectedIndexChanged="droplistEstado_SelectedIndexChanged" Style="text-align: initial; border-radius: 0px; border-color: #ced4da; width: 410px;height:35px"></asp:DropDownList>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CIDADE:</h2>
                        <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="false" CssClass="dropdownlist" Style="text-align: initial; border-radius: 0px; border-color: #ced4da; width: 410px;height:35px"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 50px">
        <asp:Button runat="server" ID="btnCadUser" OnClick="btnCadUser_Click" CssClass="button" Text="CADASTRAR" Style="margin-top: 50px; margin-left: 991px" />
    </div>
    <div style="padding-bottom: 100px"></div>
</asp:Content>
