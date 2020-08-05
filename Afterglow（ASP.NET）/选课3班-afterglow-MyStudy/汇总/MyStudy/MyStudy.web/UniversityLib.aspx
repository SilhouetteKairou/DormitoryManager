<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UniversityLib.aspx.cs" Inherits="UniversityLib" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">&nbsp;&nbsp;&nbsp;&nbsp; 院校库</h2>
                <p class="form-signin-heading">
                <asp:Button ID="btnZhx34" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="34所自划线院校名单" OnClick="btnZhx34_Click" />
                </p>
                <p class="form-signin-heading">
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ProvId" DataSourceID="LinqDataSource1" ForeColor="Black" Width="1000px" Font-Bold="True" Font-Size="20pt" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ProvId" HeaderText="ProvId" InsertVisible="False" ReadOnly="True" SortExpression="ProvId" />
                            <asp:BoundField DataField="ProvName" HeaderText="ProvName" SortExpression="ProvName" />
                            <asp:BoundField DataField="ProvAB" HeaderText="ProvAB" SortExpression="ProvAB" />
                         <asp:BoundField DataField="ProvNo" HeaderText="ProvNo" SortExpression="ProvNo" />
<asp:HyperLinkField DataNavigateUrlFields="ProvNo" DataNavigateUrlFormatString="https://yz.chsi.com.cn/sch/search.do?ssdm={0}&yxls=" HeaderText="院校一览" Text=">>>点击查看"></asp:HyperLinkField>
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
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyStudy.DAL.MyStudyDataContext" EntityTypeName="" TableName="Provinces">
                    </asp:LinqDataSource>
                </p>
            </form>
        </div>
    </div>
</asp:Content>