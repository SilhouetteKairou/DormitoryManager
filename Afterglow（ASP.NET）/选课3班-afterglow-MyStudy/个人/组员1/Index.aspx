<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <p>青叶考研网，提供考研信息查询</p>
            <em>- hsz1705,xjx1705,NCU</em>
        </div>
        <div class="page-header">
            <h1>Website</h1>
        </div>
        <div class="row table-responsive">
            <div class="col-md-12">
                  &nbsp;  &nbsp;  &nbsp;  &nbsp;
                            <asp:Button ID="btnUserLogin" runat="server" CssClass="btn btn-lg btn-primary" Text="我是用户" OnClick="BtnUserLogin_Click" Width="500px" />
                &nbsp;  &nbsp;  &nbsp;  &nbsp;
            <asp:Button ID="btnAdminLogin" runat="server" CssClass="btn btn-lg btn-primary" Text="我是管理员" OnClick="BtnAdminLogin_Click" Width="500px" />
                <br/><br/>
                <table class="table table-bordered table-hover" id="mytable">
                    <thread>
                        <tr>
                            <th>id</th>
                            <th>学校</th>
                            <th>学号</th>
                            <th>姓名</th>
                        </tr>
                    </thread>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>#</td>
                            <td>8000000001</td>
                            <td>茨菇</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

