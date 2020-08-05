<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
        <div class="container theme-showcase" role="main">
        <div class="panel panel-default">
            <div class="panel-heading">修改信息</div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="txtStuno" class="col-sm-2 control-label">StuID</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" type="text" class="form-control" id="stuID" readonly></asp:TextBox>
                        </div>
                        <br/>
                    </div>
                    <div class="form-group">
                        <label for="txtCollege" class="col-sm-2 control-label">学校</label>
                        <div class="col-sm-10">
                            <asp:textbox id="txtCollege" runat="server" cssclass="form-control" text="学校"></asp:textbox>
                        </div>
                        <asp:regularexpressionvalidator id="revCollege" runat="server" controltovalidate="txtCollege" errormessage="学校输入不合法" validationexpression="[\u4E00-\u9FA5]+"></asp:regularexpressionvalidator>
                        <br/>
                    </div>
                    <div class="form-group">
                        <label for="txtName" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="Moca"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="姓名不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        &nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="保存" OnClick="BtnSave_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

