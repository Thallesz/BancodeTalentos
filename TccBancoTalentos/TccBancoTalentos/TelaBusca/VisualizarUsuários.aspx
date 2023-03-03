<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarUsuários.aspx.cs" Inherits="TccBancoTalentos.TelaBusca.VisualizarUsuários" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <h2 class="box-title">Usuários Cadastrados</h2>
        <div class="row">
            <div style="border:solid; border-color:black; padding:60px; border-radius:50px">
                <asp:Button runat="server" ID="btnBuscaUsuarios" OnClick="btnBuscaUsuarios_Click" Text="Buscar" CssClass="button" style="margin-left:450px" />
                <div class="content-box">
                    <asp:GridView runat="server" id="grdUsuarios" OnRowCommand="grdUsuarios_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" style="color:white">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="nome" HeaderText="NOME" />
                            <asp:BoundField DataField="formacao" HeaderText="FORMAÇÃO" />
                            <asp:BoundField DataField="cpf" HeaderText="CPF" />
                            <asp:BoundField DataField="rg" HeaderText="RG" />
                            <asp:BoundField DataField="email" HeaderText="EMAIL" />
                            <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
                            <asp:BoundField DataField="celular" HeaderText="CELULAR" />
                            <asp:ButtonField ButtonType="Link" CommandName="editar" ControlStyle-CssClass="btn btn-primary" Text="Editar" />
                            <asp:ButtonField ButtonType="Link" CommandName="deletar" ControlStyle-CssClass="btn btn-primary" Text="Deletar" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div> 
        </div>
    </div>
</asp:Content>
