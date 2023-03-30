<%@ Page Title="Página de Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sujestões.aspx.cs" Inherits="TccBancoTalentos.TelaSujestões.Sujestões" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div style="background-color: #2B4691; width: 1583px; height: 200px">
        <div class="row">
            <h2 style="font-size: 50px; color: #ffffff;margin-left:420px;margin-top:50px">Como prefere falar com a gente?</h2>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />
    <div class="container-principal">
        <div style="border: none; padding: 58px; background-color: #ffffff; border-radius: 0px">
            <div class="row">
                <div class="col-sm-4">
                    <img src="../img/transferir.png" style="background-repeat: no-repeat; height: 80px" />
                    <h2 style="font-size: 20px; color: #2B4691">E-mail</h2>
                    <h2 style="font-size: 16px; color: #2B4691">Tem alguma dúvida?</h2>
                    <a href="mailto:0000886175@senaimgaluno.com.br" target="_blank">0000886175@senaimgaluno.com.br</a>
                </div>              
                <div class="col-sm-4">
                    <img src="../img/telefone.png" style="background-repeat: no-repeat; height: 80px" />
                    <h2 style="font-size: 20px; color: #2B4691">Celular</h2>
                    <h2 style="font-size: 16px; color: #2B4691">Você pode ligar para nós.</h2>
                    <a href="tel:+553599347513">553599347513</a>
                </div>
                <div class="col-sm-4">
                    <img src="../img/balão-de-fala.png" style="background-repeat: no-repeat; height: 80px" />
                    <h2 style="font-size: 20px; color: #2B4691">Chat</h2>
                    <h2 style="font-size: 16px; color: #2B4691">Deseja falar conosco agora?</h2>
                    <a href="https://api.whatsapp.com/send?phone=553599347513&text=Ol%C3%A1$20tudo%20bem?" target="_blank">Mande mensagem agora mesmo</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
