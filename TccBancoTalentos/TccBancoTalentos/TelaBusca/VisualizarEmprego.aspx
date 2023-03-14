﻿<%@ Page Title="Empregos Disponíveis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarEmprego.aspx.cs" Inherits="TccBancoTalentos.VisualizarEmprego" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <img src="../img/banner_vagas.png" class="img-fluid" style="background-repeat: no-repeat; width: 1583px; height: 350px" />
    <br />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div style="padding: 10px">
        <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="false" Style="border-radius: 50px; border: 1px solid black; padding: 10px 20px; margin-left: 520px">
        </asp:DropDownList>

        <asp:DropDownList runat="server" ID="droplistEstado" AutoPostBack="true" Style="border-radius: 50px; border: 1px solid black; padding: 10px 20px; margin-left: 520px"></asp:DropDownList>
    </div>
    <div style="padding: 20px"></div>
    <div class="container-principal">
        <div style="border: solid; border-color: black; padding: 30px; border-radius: 20px; background-color: #F8F9FA">
            <div class="row">

                <asp:GridView runat="server" ID="grdEmpregos" OnRowCommand="grdEmpregos_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="gridview-exemplo">
                    <Columns>
                        <asp:BoundField DataField="vaga" HeaderText="VAGA" />
                        <asp:BoundField DataField="salario" HeaderText="SALARIO" />
                        <asp:BoundField DataField="cargah" HeaderText="CARGA HORARIA" />
                        <asp:BoundField DataField="empresa" HeaderText="EMPRESA" />
                        <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                        <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                        <asp:ButtonField ButtonType="Link" CommandName="candidatar" ControlStyle-CssClass="btn btn-primary" Text="Candidatar" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
