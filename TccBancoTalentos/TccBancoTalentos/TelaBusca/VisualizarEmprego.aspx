<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarEmprego.aspx.cs" Inherits="TccBancoTalentos.VisualizarEmprego" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div class="container-principal">
        <h2 class="box-title">Empregos:</h2>
        <div class="row">
            <div style="border: solid; border-color: black; padding: 60px; margin-top: 140px; border-radius: 50px">
                <asp:Button runat="server" ID="btnBuscaEM" OnClick="btnBuscaEM_Click" Text="Buscar" CssClass="button" style="margin-left:450px" />
                <div class="content-box">
                    <asp:GridView runat="server" ID="grdEmpregos" OnRowCommand="grdEmpregos_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="table" Style="color:white">
                        <Columns>
                            <asp:BoundField DataField="vaga" HeaderText="VAGAS" />
                            <asp:BoundField DataField="salario" HeaderText="SAL ARIO" />
                            <asp:BoundField DataField="cargah" HeaderText="CARGA HORARIA" />
                            <asp:BoundField DataField="requisitos" HeaderText="REQUISITOS" />
                            <asp:BoundField DataField="empresa" HeaderText="EMPRESA" />
                        </Columns>

                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
