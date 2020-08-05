<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MajorLib.aspx.cs" Inherits="MajorLib" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">&nbsp;&nbsp;&nbsp;&nbsp; 专业库</h2>
                <p class="form-signin-heading">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="FirstMajorName" DataValueField="FirstMajorId" Height="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyStudy.DAL.MyStudyDataContext" EntityTypeName="" OnSelecting="LinqDataSource1_Selecting" TableName="FirstMajors">
                    </asp:LinqDataSource>
                    <p class="form-signin-heading">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource2" DataTextField="SecondMajorName" DataValueField="SecondMajorId" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="40px" Width="200px">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyStudy.DAL.MyStudyDataContext" EntityTypeName="" TableName="SecondMajors" Where="FirstMajorId == @FirstMajorId">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="FirstMajorId" PropertyName="SelectedValue" Type="Int32" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </p></p>
                <p class="form-signin-heading">
                   
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource3" DataTextField="ThirdMajorName" DataValueField="ThirdMajorId" Height="40px" Width="200px">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="MyStudy.DAL.MyStudyDataContext" EntityTypeName="" TableName="ThirdMajors" Where="SecondMajorId == @SecondMajorId" Select="new (ThirdMajorName, ThirdMajorNo, ThirdMajorId)">
                        <WhereParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="SecondMajorId" PropertyName="SelectedValue" Type="Int32" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </p>
                <br/> <br/> 
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource3" ForeColor="Black" GridLines="Vertical" Width="1000px" Height="80px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ThirdMajorName,ThirdMajorNo" DataNavigateUrlFormatString="https://yz.chsi.com.cn/zyk/specialityDetail.do?zymc={0}&amp;zydm={1}&amp;cckey=10&amp;ssdm=&amp;method=distribution#zyk-zyfb" HeaderText="开设院校" Text="查看" />
                        <asp:HyperLinkField DataNavigateUrlFields="ThirdMajorName,ThirdMajorNo" DataNavigateUrlFormatString="https://yz.chsi.com.cn/zyk/specialityDetail.do?zymc={0}&amp;zydm={1}&amp;cckey=10&amp;ssdm=&amp;method=distribution" HeaderText="专业介绍" Text="查看" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle Font-Bold="True" Font-Size="20px" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
                <br/>
            </form>
        </div>
    </div>
</asp:Content>