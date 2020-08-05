<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">Reg</h2>
                <label for="txtStuno" class="sr-only">学号</label>
                        <label for="txtStuno" class="col-sm-2 control-label">学号</label><asp:TextBox ID="txtStuno" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revStuno" runat="server" ControlToValidate="txtStuno" ErrorMessage="输入必须是数字" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        <br/>

                        <label for="txtName" class="col-sm-2 control-label">姓名</label>
                <br/>
                     
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="Moca"></asp:TextBox>
                    
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="姓名不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br/>
                  <label for="txtCollege" class="sr-only">学校</label>
                        <label for="txtCollege" class="col-sm-2 control-label">学校</label><asp:TextBox ID="txtCollege" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:regularexpressionvalidator id="revCollege" runat="server" controltovalidate="txtCollege" errormessage="学校输入不合法" validationexpression="[\u4E00-\u9FA5]+"></asp:regularexpressionvalidator>
                        <br/>
                        <label for="txtStuno" class="col-sm-2 control-label">密码</label><label for="txtPwd" class="sr-only">密码</label>
                 <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                 <br/>
                        <label for="txtStuno" class="col-sm-2 control-label">重复密码</label><label for="txtRepPwd" class="sr-only">重复密码</label>
                 <asp:TextBox ID="txtRepPwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRepPwd" Display="Dynamic" ErrorMessage="两次输入的密码必须一致"></asp:CompareValidator>
                <br/>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>
                <asp:Button ID="btnReg" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="注册" OnClick="BtnReg_Click" />
            </form>
        </div>
    </div>
</asp:Content>