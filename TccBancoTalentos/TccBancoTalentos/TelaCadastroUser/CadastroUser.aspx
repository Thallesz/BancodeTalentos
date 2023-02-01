<%@ Page Title="Cadastro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUser.aspx.cs" Inherits="TccBancoTalentos.TelaCadastroUser.CadastroUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div style="margin-top:120px"></div>
        <div class="col">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">

                <h2 style="font-size: 25px; color: white">Nome:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNomeUser" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                <h2 style="font-size: 25px; color: white">CPF:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCPFUser" Style="text-align: center; border-radius: 50px"></asp:TextBox>


                <h2 style="font-size: 25px; color: white">RG:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtRGUser" Style="text-align: center; border-radius: 50px"></asp:TextBox>

            </div>
            <div class="col-sm-2">
                <asp:Button runat="server" ID="btnCadUser" CssClass="btn btn-success" Text="Cadastrar" Style="margin-left:10px;border-radius:50px ;margin-top:320px" Font-Size="20px" Width="150px" Height="40px" />
            </div>
            <div class="col-sm-4">
                <h2 style="font-size: 25px; color: white">Formação:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFormacao" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                <h2 style="font-size: 25px; color: white">Email:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" Style="text-align: center; border-radius: 50px"></asp:TextBox>


                <h2 style="font-size: 25px; color: white">Celular:</h2>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular" Style="text-align: center; border-radius: 50px"></asp:TextBox>

            </div>
            <div class="col-sm-2"></div>

        </div>

    </div>

</asp:Content>
