<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageJustTopHeader.master" AutoEventWireup="true" CodeFile="PasswordChange.aspx.cs" Inherits="PasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/classType.css" rel="stylesheet" />
    <link href="css/content.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentNavigation" Runat="Server">
    <nav class="top-nav">
		<ul class="top-nav">
			<li class="active-join"><a href="LoginPage.aspx">會員登入</a></li>
			<li><a href="test1.aspx">愛便宜</a></li>
			<li><a href="#contact">愛分享</a></li>
            <li><a href="#process">廠商登入</a></li>
            <li><a href="MemberRegister.aspx">加入會員</a></li>
		</ul>
		<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
	</nav>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <asp:Label runat="server" Text="修改密碼" CssClass="fontM"></asp:Label>
                <hr class="colorgraph"/>
            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control input-lg" placeholder="輸入新密碼" TextMode="Password"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtCheck" CssClass="form-control input-lg" placeholder="再次輸入密碼" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="davCheckPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCheck" CssClass="fontS" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red">密碼確認失敗，請確認密碼。</asp:CompareValidator>
        </div>
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <hr class="colorgraph"/>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button runat="server" ID="btnChangePass" class="btn btn-lg btn-primary btn-block" Text="確認修改" OnClick="btnChangePass_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>