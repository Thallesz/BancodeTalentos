<%@ Page Title="Tela Inicial" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaInicial.aspx.cs" Inherits="TccBancoTalentos.TelaBusca.TelaInicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />
    <img src="../img/imgtopoinicio1.jpg" class="img-fluid" style="background-repeat: no-repeat; width: 1583px; height: 350px" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <div class="container-principal">
        <br />
         
        <h2 style="font-size: 22px; color: #2B4691; margin-top: 50px">Sobre o site</h2>
        <div style="border: none; padding: 58px; border-radius: 0px">
            <div class="row">
                <div class="col-sm-5">
                    <img src="../img/imginicio.jpg" class="img-fluid" style="background-repeat: no-repeat; width:500px; height: 300px;border-radius:50%;margin-right:200px"/>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-6">
                    <h2 style="font-size: 24px; margin-top: 50px">Nosso site vem como o objetivo de facilitar a ingressão de novos trabalhadores no mercado de trabalho
                ,Por isso decidimos criar um sistema aonde você poderá procurar uma vaga de emprego
                de acordo com as suas exigências,economizando tempo e dinheiro de uma forma rápida e prática.</h2>
                
                </div>
                
            </div>
            <h2 style="font-size: 22px; color: #2B4691; margin-top: 50px;margin-left:350px">Ache um emprego na sua área.</h2>

            <asp:Button runat="server" CssClass="button" OnClick="btnIrVaga_Click" ID="btnIrVaga" Text="QUERO VER TODAS AS VAGAS" style="border-radius:20px;width:350px;margin-left:330px" />
        </div>
    </div>
</asp:Content>
