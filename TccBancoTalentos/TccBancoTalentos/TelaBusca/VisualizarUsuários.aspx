<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarUsuários.aspx.cs" Inherits="TccBancoTalentos.TelaBusca.VisualizarUsuários" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />


    <div style="padding-top: 100px"></div>
    <div class="container-principal">
        <div class="row">
            <div style="border:solid; border-color: black; padding: 30px; border-radius: 0px; background-color: #F8F9FA">
                    <asp:GridView runat="server" ID="grdUsuarios" OnRowCommand="grdUsuarios_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="gridview-exemplo" Style="color: white">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="nome" HeaderText="NOME" />
                            <asp:BoundField DataField="cpf" HeaderText="CPF" />
                            <asp:BoundField DataField="email" HeaderText="EMAIL" />
                            <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                            <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                            <asp:BoundField DataField="celular" HeaderText="CELULAR" />                           
                            <asp:ButtonField ButtonType="Link" CommandName="deletar" ControlStyle-CssClass="btn btn-primary" Text="Deletar" />
                        </Columns>
                    </asp:GridView>
                </div>
        </div>
    </div>
</asp:Content>
