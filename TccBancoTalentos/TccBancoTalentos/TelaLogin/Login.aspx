<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TccBancoTalentos.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div style="border: solid; border-color: black; padding: 60px; margin-top: 140px; border-radius: 50px">
                <h2 style="font-size: 25px; font-family: 'Franklin Gothic Book'; color: white">Usuário:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtUser" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                <br />
                <h2 style="font-size: 25px; font-family: 'Franklin Gothic Book'; color: white">Senha:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" TextMode="Password" Style="border-radius: 50px"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" CssClass="btn btn-success" ID="btnLogin" Text="Entrar" Style="border-radius: 50px; margin-left: 45px" Font-Size="20px" Width="150px" Height="40px" />
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>

</asp:Content>
