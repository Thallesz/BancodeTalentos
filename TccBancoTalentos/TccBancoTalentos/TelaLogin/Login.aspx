﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TccBancoTalentos.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div style="border: none; border-color: black; padding: 60px; margin-top: 140px; border-radius: 50px; box-shadow: 10px 10px 20px #030303">
                <h2 style="font-size: 25px; font-family: 'Franklin Gothic Book'; color: black">Usuário:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtUser" Style="border-color:black;text-align: center; border-radius: 10px"></asp:TextBox>
                <br />
                <h2 style="font-size: 25px; font-family: 'Franklin Gothic Book'; color: black">Senha:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" TextMode="Password" Style="border-color:black;border-radius: 10px"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" CssClass="button" OnClick="btnLogin_Click" ID="btnLogin" Text="Entrar" Style="border-radius: 50px; margin-left: 45px" Font-Size="20px" Width="150px" Height="40px" />
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>

</asp:Content>
