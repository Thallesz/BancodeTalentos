<%@ Page Title="Empregos Disponíveis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarEmprego.aspx.cs" Inherits="TccBancoTalentos.VisualizarEmprego" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <img src="../img/banner_vagas.png" class="img-fluid" style="background-repeat: no-repeat; width: 1583px; height: 350px" />
    <br />

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">
    <link rel="stylesheet" href="../Estilo/EstiloMestre.css" />

    <div style="padding: 10px">
    </div>
    <div style="padding: 20px"></div>

    <div class="col-sm-3">
        <div style="border: none; border-color: black; padding: 30px; border-radius: 20px; background-color: #94d0f7; box-shadow: 5px 5px 10px">
            <div class="row">
                <h2 style="font-size: 14px; color: black; cursor: default; font-family: Open Sans,sans-serif">Cargo</h2>
                <asp:TextBox runat="server" ID="txtFiltroCargo" placeholder="Exemplo:Garçom" Style="border-color: #ced4da; padding: 6px 12px; height: 40px; width: 225px"></asp:TextBox>
                <h2 style="font-size: 14px; color: black; cursor: default">Profissão</h2>
                <asp:DropDownList runat="server" ID="droplistProfissao" Style="padding: 6px 12px; height: 40px; width: 225px"></asp:DropDownList>
                <h2 style="font-size: 14px; color: black; cursor: default">Estado</h2>
                <asp:DropDownList runat="server" ID="droplistEstado" AutoPostBack="true" OnSelectedIndexChanged="droplistEstado_SelectedIndexChanged" Style="padding: 6px 12px; height: 40px; width: 225px">
                </asp:DropDownList>
                <h2 style="font-size: 14px; color: black; cursor: default">Cidade</h2>
                <asp:DropDownList runat="server" ID="droplistCidade" AutoPostBack="false" Style="padding: 6px 12px; height: 40px; width: 225px">
                </asp:DropDownList>
                <div class="row-sm-6">
                    <asp:Button runat="server" OnClick="btnLimpar_Click" ID="btnLimpar" Text="LIMPAR" Style="margin-top: 15px; height: 40px; width: 225px; color: white; background-color: #0d6efd; border: none" />
                </div>
                <div class="row-sm-6">
                    <asp:Button runat="server" OnClick="btnBuscar_Click" ID="btnBuscar" Text="BUSCAR" Style="margin-top: 15px; height: 40px; width: 225px; color: white; background-color: #0d6efd; border: none" />
                </div>

            </div>
        </div>
    </div>
    <div class="col-sm-1"></div>
    <div class="col-sm-8">
        <div class="container-principal">
            <div style="border: solid; border-color: black; padding: 30px; border-radius: 20px; background-color: #F8F9FA">
                <div class="row">

                    <asp:GridView runat="server" ID="grdEmpregos" OnRowCommand="grdEmpregos_RowCommand" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="20" CssClass="gridview-exemplo" >
                        <Columns>
                            <asp:BoundField DataField="vaga" HeaderText="VAGA" />
                            <asp:BoundField DataField="salario" HeaderText="SALARIO" />
                            <asp:BoundField DataField="cargah" HeaderText="CARGA HORARIA" />
                            <asp:BoundField DataField="empresa" HeaderText="EMPRESA" />
                            <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                            <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                            <asp:ButtonField ButtonType="button" CommandName="visualizar" ControlStyle-CssClass="btn btn-xs btn-primary" Text="Visualizar"/>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
