<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <style type="text/css">           
              .Pager td
              {
                  padding-left: 20px;     
                  padding-right: 20px;    
              }
       </style>
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="page-header">
            <h1>用户管理</h1>
        </div>
        <div class="row table-responsive">
            <div class="col-md-12">
                  
                <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="UserId" AllowPaging="True" Font-Size="Medium" Height="400px" Width="800px">
        <PagerStyle CssClass="Pager" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="StuNumber" HeaderText="StuNumber" SortExpression="StuNumber" />


        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyStudyConnectionString3 %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [StuNumber] = @original_StuNumber" InsertCommand="INSERT INTO [Users] ([Name], [StuNumber]) VALUES (@Name, @StuNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [Name], [StuNumber] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [StuNumber] = @StuNumber WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [StuNumber] = @original_StuNumber">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_StuNumber" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="StuNumber" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="StuNumber" Type="String" />
                        <asp:Parameter Name="original_UserId" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_StuNumber" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyStudy.DAL.MyStudyDataContext" EntityTypeName="" TableName="Users" EnableViewState="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
                </asp:LinqDataSource>
            </div>
        </div>
    </div>
</asp:Content>

