<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageJustTopHeader.master" AutoEventWireup="true" CodeFile="GetAccountOrPassword.aspx.cs" Inherits="GetAccountOrPassword" %>

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
            <asp:Label runat="server" ID="lblGetPassword" Text="忘記密碼" CssClass="fontM"></asp:Label>
            <asp:Label runat="server" ID="lblGetAccount" Text="忘記帳號" CssClass="fontM"></asp:Label>
                <hr class="colorgraph"/>
            <asp:TextBox runat="server" ID="txtAccount" CssClass="form-control input-lg" placeholder="請輸入帳號" TextMode="Email"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control input-lg" placeholder="請輸入手機"></asp:TextBox>
            <asp:TextBox runat="server" ID="txtAfterFour" CssClass="form-control input-lg" placeholder="請輸入身份證後四碼" TextMode="Password"></asp:TextBox>
            <asp:Label runat="server" ID="lblMsg" style="font-family: 微軟正黑體; font-size: large; font-weight: 700; color: #FF3300">查無此帳號，請確認帳號是否輸入錯誤！</asp:Label>
        </div>
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <hr class="colorgraph"/>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button runat="server" ID="btnSelect" class="btn btn-lg btn-success btn-block" Text="查詢" OnClick="btnSelect_Click"/>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button runat="server" ID="btnGetAccount" class="btn btn-lg btn-primary btn-block" Text="忘記帳號" OnClick="btnGetAccount_Click"/>
                    <asp:Button runat="server" ID="btnGetPassword" class="btn btn-lg btn-primary btn-block" Text="忘記密碼" OnClick="btnGetPassword_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>