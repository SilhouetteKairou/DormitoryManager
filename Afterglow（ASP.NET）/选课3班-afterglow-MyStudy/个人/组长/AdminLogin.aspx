<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">AdminLogin</h2>
                <label for="inputName" class="sr-only">工号</label>
                        <label for="txtAdmno" class="col-sm-2 control-label">工号</label><asp:TextBox ID="txtAdmno" runat="server" CssClass="form-control" OnTextChanged="txtAdmno_TextChanged"></asp:TextBox>
          <br/>
                              <label for="txtAdmno" class="col-sm-2 control-label">密码</label><label for="inputAdmPassword" class="sr-only">密码</label>
                 <asp:TextBox ID="txtAdmPwd" runat="server" CssClass="form-control" TextMode="Password" OnTextChanged="txtAdmPwd_TextChanged"></asp:TextBox>
                <div class="checkbox">
                    <br/><br/>
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>
                <asp:Button ID="btnAdminLogin" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="立即登录" OnClick="BtnAdminLogin_Click" />
            </form>
        </div>
    </div>
</asp:Content>
