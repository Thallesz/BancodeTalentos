<%@ Page Title="Cadastro de Vaga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroVaga.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroVaga.CadastroVaga" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <img src="../img/inserevaga.jpg" style="background-repeat: no-repeat; width: 1583px; height: 350px" />
    <br />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />


    <div class="container-principal"> 
        <h2 style="font-size: 22px; color: #2B4691; margin-top: 50px">ANUNCIAR VAGA</h2>
        <div style="padding-top:30px"></div>
        <div class="row">
            <div style="border: none; border-color: black; padding: 58px; border-radius: 0px; background-color: #F8F9FA;margin-bottom:140px">
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
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">ESTADO</h2>
                        <asp:DropDownList runat="server" ID="droplistEstado" AutoPostBack="true" placeholder="SELECIONE O ESTADO" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:DropDownList>
                        <h2 style="font-size: 16px; color: #2B4691; cursor: default">CIDADE:</h2>
                        <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="true" placeholder="SELECIONE A CIDADE" Style="text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:DropDownList>                      
                    </div>
                </div>
            </div>
        </div>
        <asp:Button runat="server" ID="btnRegistar" OnClick="btnRegistar_Click" CssClass="button" Text="Registrar" Style=" margin-left: 991px" />
    </div>
</asp:Content>
