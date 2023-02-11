<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarEmprego.aspx.cs" Inherits="TccBancoTalentos.VisualizarEmprego" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row">
         <div class="col-sm-4"></div>
        <div class="col-sm-4"> 
            <div style="border: solid; border-color: black; padding: 60px; margin-top: 140px; border-radius: 50px">             
               <h2 style="font-size: 25px; font-family: 'Franklin Gothic Book'; color: white">Empregos:</h2>
                 <asp:TextBox runat="server" CssClass="form-control" ID="txtEmprego" Style="text-align: center; border-radius: 50px"></asp:TextBox>
                <br />
                 <div class="grid-container">
                 <div class="grid-vaga">1-</div>
                 <div class="grid-vaga">2-</div>
                 <div class="grid-vaga">3-</div>
                 <div class="grid-vaga">4-</div>
                 <div class="grid-vaga">5-</div>
                 <div class="grid-vaga">6-</div>
                 <div class="grid-vaga">7-</div>
                 <div class="grid-vaga">8-</div>
                 <div class="grid-vaga">9-</div>
</div>
                </div>
            </div>
        </div>
</asp:Content>
