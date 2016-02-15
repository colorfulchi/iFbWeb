<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageJustTopHeader.master" AutoEventWireup="true" CodeFile="MemberRegister.aspx.cs" Inherits="MemberRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/classType.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .noteRed {
            font-family: 微軟正黑體;
            font-size: large;
            color: #FF0000;
            font-weight: 700;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentNavigation" Runat="Server">
    <nav class="top-nav">
		<ul class="top-nav">
			<li><a href="LoginPage.aspx">會員登入</a></li>
			<li><a href="test1.aspx">愛便宜</a></li>
			<li><a href="#contact">愛分享</a></li>
            <li><a href="#process">廠商登入</a></li>
            <li class="active-join"><a href="MemberRegister.aspx">加入會員</a></li>
		</ul>
		<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
	</nav>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-6">
            <div class="text-center">
                <asp:Label runat="server" CssClass="fontL">加入iFoodBox</asp:Label><br />
                <asp:Label runat="server" CssClass="fontM">即可使用</asp:Label><br />
                <asp:Label runat="server" CssClass="fontS">冰箱管理、食品交流、資訊分享......等功能！</asp:Label><br />
            </div>
        </div>
        <div class="col-md-6">
            <asp:Label runat="server" CssClass="fontS">填寫基本資料或使用Google或FB驗證</asp:Label>
                <div>
                    <ul>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">暱稱：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtName" Columns="30"></asp:TextBox>
                            <span class="noteRed"><strong>*</strong></span></li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">帳號(請輸入信箱)：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtAccount" TextMode="Email" required="" Columns="30"></asp:TextBox>
                            <span class="noteRed"><strong>*<asp:Label ID="lblErrorMsgEmail" runat="server" Text="此信箱已申請過！"></asp:Label>
                            </strong></span></li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">建立密碼：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtPassword" TextMode="Password"  Columns="30"></asp:TextBox>
                            <span class="noteRed"><strong>*</strong></span></li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">確認密碼：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtCheck" TextMode="Password" Columns="30"></asp:TextBox>
                            <asp:CompareValidator ID="vadPassCheck" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCheck" Display="Dynamic" ErrorMessage="欄位內容與密碼不符！" CssClass="noteRed"></asp:CompareValidator>
                        </li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">生日：</asp:Label>
                            <asp:TextBox runat="server" TextMode="Date" CssClass="fontS" ID="txtDate"></asp:TextBox><br />
                        <asp:Label runat="server" CssClass="fontS">性別：</asp:Label>
                            <asp:RadioButton runat="server" ID="rBtnM" GroupName="rBtnSex" Text="男" CssClass="fontS"/>
                            <asp:RadioButton runat="server" ID="rBtnF" GroupName="rBtnSex" Text="女" CssClass="fontS"/>
                        </li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">身份證後四碼：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtAfterFour" Columns="30"></asp:TextBox>
                            <span class="noteRed"><strong>*</strong></span><asp:RegularExpressionValidator ID="vadAfterFour" runat="server" ControlToValidate="txtAfterFour" Display="Dynamic" ErrorMessage="請正確輸入四位數字！" style="font-family: 微軟正黑體; font-size: large; font-weight: 700; color: #FF0000" ValidationExpression="\d\d\d\d"></asp:RegularExpressionValidator>
                        </li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">手機：</asp:Label><br />
                        <asp:TextBox runat="server" CssClass="fontS" ID="txtPhone"  Columns="30"></asp:TextBox>
                            <span class="noteRed"><strong>*<asp:Label ID="lblErrorMsgPhone" runat="server" Text="此門號已申請過！"></asp:Label>
                            </strong></span></li>
                        <li>
                        <asp:Label runat="server" CssClass="fontS">會員規章：</asp:Label><br />
                            <asp:TextBox runat="server" Columns="60" Height="200px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox><br />
                        <asp:CheckBox runat="server" CssClass="fontS" Text="已詳細閱讀規章" ID="checkRead" />
                        </li>
                    </ul>
                </div>
                <div class="text-center">
                <asp:Button runat="server" ID="btnClear" Text="清除" CssClass="fontBtn" OnClick="btnClear_Click"/>
                <asp:Button runat="server" ID="btnInsert" Text="送出" CssClass="fontBtn" OnClick="btnInsert_Click"/>
            </div>
        </div>
    </div>
</asp:Content>