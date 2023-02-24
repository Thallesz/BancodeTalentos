<%@ Page Title="Cadastro de Vaga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroVaga.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroVaga.CadastroVaga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <h2 class="box-title">Cadastro de Vagas</h2>
        <div class="row">
            <div style="border: solid; border-color: black; padding: 60px; border-radius: 50px">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                        <h2 style="font-size: 25px; color: white">Vaga:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtVaga" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                        <h2 style="font-size: 25px; color: white">Salario:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSalario" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                        <h2 style="font-size: 25px; color: white">CargaH:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCargaH" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnRegistar" OnClick="btnRegistar_Click" CssClass="button" Text="Registrar" Style="margin-left: 10px; border-radius: 50px; margin-top: 320px" Font-Size="20px" Width="150px" Height="40px" />
                    </div>
                    <div class="col-sm-4">
                        <h2 style="font-size: 25px; color: white">Requisito:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtRequisito" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                        <h2 style="font-size: 25px; color: white">Empresa:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmpresa" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
