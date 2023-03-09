<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TccBancoTalentos.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div style="border: solid; border-color: cornflowerblue; padding: 30px; margin-top: 140px; border-radius: 0px; box-shadow: 5px 5px 10px;margin-left:-350px;margin-right:341px">
                <h2 style="font-size: 16px; font-family: 'Franklin Gothic Book'; color: #212529">Usuário:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtUser" placeholder="Email" Style="border-color:black;text-align: initial; border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                <br />
                <h2 style="font-size: 16px; font-family: 'Franklin Gothic Book'; color: #212529">Senha:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" TextMode="Password" placeholder="Senha" Style="border-color:black;border-radius: 0px; border-color: #ced4da"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" CssClass="button" OnClick="btnLogin_Click" ID="btnLogin" Text="Entrar" Style="border-radius: 50px; margin-left: -1px" Font-Size="20px" Width="280px" Height="40px" />
            </div>
        </div>
        <div class="col-sm-4">
        </div>
    </div>

</asp:Content>
