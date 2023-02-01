<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TccBancoTalentos.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="row">
        <div class="col-sm-4">
        </div>


        <div class="col-sm-4">            
            <div style="border:solid; border-color: black ;padding:50px;margin-top:100px">


                <h2 style="font-size: 18px; font-family: 'Franklin Gothic Book';color:white">Usuário:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtUser" Style="text-align: center"></asp:TextBox>
                <h2 style="font-size: 18px; font-family: 'Franklin Gothic Book';color:white">Senha:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSenha" TextMode="Password"></asp:TextBox>

                <br />
                <asp:Button runat="server" CssClass="btn btn-success" ID="btnLogin" Text="Entrar" />
            </div>
        </div>

        <div class="col-sm-4">
        </div>


    </div>

</asp:Content>
