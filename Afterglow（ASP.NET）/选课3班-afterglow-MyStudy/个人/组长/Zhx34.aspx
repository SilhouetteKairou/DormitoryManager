<%@ Page Title="" Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Zhx34.aspx.cs" Inherits="Zhx34" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <link href="Style/Pager.css" rel="stylesheet" />
    <style type="text/css">           
              .Pager td
              {
                  padding-left: 20px;     
                  padding-right: 20px;    
              }
       </style>
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">进行自主确定复试分数线改革试点的高校名单（34所）</h2>
<div class="content-box clearfix">
            <div class="content-l detail" id="article_dnull">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" ForeColor="Black" Width="1000px" Font-Bold="True" Font-Size="20pt" HorizontalAlign="Center" GridLines="Vertical" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <PagerStyle CssClass="Pager" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="ZhxName" HeaderText="ZhxName" ReadOnly="True" SortExpression="ZhxName" />
                        <asp:BoundField DataField="ZhxProv" HeaderText="ZhxProv" ReadOnly="True" SortExpression="ZhxProv" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" Height="80px" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="" ContextTypeName="MyStudy.DAL.MyStudyDataContext" Select="new (ZhxName, ZhxProv)" TableName="Zhx34">
                </asp:LinqDataSource>
   </div>
    </div>
            </form>
        </div>
    </div>
</asp:Content>

