<%@ Page Title="Cadastro de Vaga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroVaga.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroVaga.CadastroVaga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal"> 
        <div style="padding-top:30px"></div>
        <div class="row">
            <div style="border: solid; border-color: black; padding: 30px; border-radius: 20px; box-shadow: 10px 10px 20px #030303">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                        <h2 style="font-size: 25px; color: black">Vaga:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtVaga" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Salario:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSalario" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">CargaH:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCargaH" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnRegistar" OnClick="btnRegistar_Click" CssClass="button" Text="Registrar" Style="margin-left: 10px; border-radius: 50px; margin-top: 300px" Font-Size="20px" Width="150px" Height="40px" />
                    </div>
                    <div class="col-sm-4">                        
                        <h2 style="font-size: 25px; color: black">Empresa:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmpresa" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                        <h2 style="font-size: 25px; color: black">Cidade:</h2>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCidade" Style="text-align: center; border-radius: 10px; border-color:black"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
