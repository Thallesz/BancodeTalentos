<%@ Page Title="Cadastro de Vaga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroVaga.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroVaga.CadastroVaga" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <img src="../img/fundovaga.png" class="img-fluid" style="background-repeat: no-repeat; width: 1304px; height: 350px" />
    <br />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />


    <div class="container-principal"> 
        <div style="padding-top:30px"></div>
        <div class="row">
            <div style="border: none; border-color: black; padding: 58px; border-radius: 0px; background-color: #F8F9FA">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">VAGA:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtVaga" placeholder="Vaga" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">SALÁRIO:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSalario" placeholder="Salário" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">CARGA HORÁRIA:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCargaH" placeholder="Carga Horária" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        
                    </div>
                    <div class="col-sm-4">                        
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">EMPRESA:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmpresa" placeholder="Empresa" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">Cidade:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCidade" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                        <h2 style="font-size: 16px; color:#2B4691;cursor:default">Estado:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEstado" Style="text-align: initial; border-radius: 0px; border-color:#ced4da"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <asp:Button runat="server" ID="btnRegistar" OnClick="btnRegistar_Click" CssClass="button" Text="Registrar" Style="margin-top: 50px; margin-left: 991px" />
    </div>
</asp:Content>
