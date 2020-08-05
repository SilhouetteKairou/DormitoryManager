<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminBackstage.aspx.cs" Inherits="AdminBackstage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="page-header">
            <h1>AdminBackstage</h1>
        </div>
        <div class="row table-responsive">
            <div class="col-md-12">
                  
                工号：<asp:Label ID="lblAdminNo" runat="server" Text="Label"></asp:Label>
                <br />
                总共 
                <asp:Label ID="lblTotalPeople" runat="server" Text="Label"></asp:Label>
&nbsp;人在线。<br />
           
                网站访问量：<asp:Label ID="lblTotalView" runat="server" Text="Label"></asp:Label>
&nbsp;<br/>

                IP地址： <asp:Label ID="lblIpAddr" runat="server" Text="Label"></asp:Label>
                <br />
                来源：<asp:Label ID="lblSrc" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

