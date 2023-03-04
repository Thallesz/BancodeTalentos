<%@ Page Title="Cadastro de Usuário" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUser.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroUser.CadastroUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <div class="row">
            <div style="border: solid; border-color: black; padding: 60px; margin-top: 50px; border-radius: 50px; box-shadow: 10px 10px 20px #030303">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                        <h2 style="font-size: 25px; color: black">Nome:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNomeUser" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">CPF:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCPFUser" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <asp:Label runat="server" ID="lblAlertaCpf"></asp:Label>
                        <h2 style="font-size: 25px; color: black">RG:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtRGUser" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <asp:Label runat="server" ID="lblAlertaRG"></asp:Label>
                        <h2 style="font-size: 25px; color: black">Celular:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Formação:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtFormacao" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnCadUser" OnClick="btnCadUser_Click" CssClass="button" Text="Cadastrar" Style="margin-top: 500px" />
                    </div>
                    <div class="col-sm-4">
                        <h2 style="font-size: 25px; color: black">Email:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Cidade:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCidade" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Rua:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="TxtRua" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Bairro:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="TxtBairro" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Número:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="TxtNumero" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
