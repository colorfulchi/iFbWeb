<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageJustTopHeader.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/content.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link href="css/classType.css" rel="stylesheet" />
    <script>
        $(function () {
            $('.button-checkbox').each(function () {
                var $widget = $(this),
                    $button = $widget.find('button'),
                    $checkbox = $widget.find('input:checkbox'),
                    color = $button.data('color'),
                    settings = {
                        on: {
                            icon: 'glyphicon glyphicon-check'
                        },
                        off: {
                            icon: 'glyphicon glyphicon-unchecked'
                        }
                    };

                $button.on('click', function () {
                    $checkbox.prop('checked', !$checkbox.is(':checked'));
                    $checkbox.triggerHandler('change');
                    updateDisplay();
                });

                $checkbox.on('change', function () {
                    updateDisplay();
                });

                function updateDisplay() {
                    var isChecked = $checkbox.is(':checked');
                    // Set the button's state
                    $button.data('state', (isChecked) ? "on" : "off");

                    // Set the button's icon
                    $button.find('.state-icon')
                        .removeClass()
                        .addClass('state-icon ' + settings[$button.data('state')].icon);

                    // Update the button's color
                    if (isChecked) {
                        $button
                            .removeClass('btn-default')
                            .addClass('btn-' + color + ' active');
                    }
                    else {
                        $button
                            .removeClass('btn-' + color + ' active')
                            .addClass('btn-default');
                    }
                }
                function init() {
                    updateDisplay();
                    // Inject the icon if applicable
                    if ($button.find('.state-icon').length == 0) {
                        $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
                    }
                }
                init();
            });
        });
    </script>
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
            <fieldset>
            <h2>我的雲端冰箱會員登入</h2><br />
            <div class="row"></div>
            <hr class="colorgraph"/>
            <div class="form-group">
                <asp:TextBox runat="server" Font-Names="email" ID="txtAccount" TextMode="Email" class="form-control input-lg" placeholder="Email Address"/>
            </div>
            <div class="form-group">
                <asp:TextBox runat="server" Font-Names="password" ID="txtPassword" TextMode="Password" class="form-control input-lg" placeholder="Password"/>
                <asp:Label runat="server" ID="lblMsg" style="font-family: 微軟正黑體; font-size: large; font-weight: 700; color: #FF3300">帳號或密碼輸入錯誤，請重新登入！</asp:Label>
            </div>
            <span class="button-checkbox">
                <button type="button" class="btn" data-color="info">Remember Me</button>
                <asp:CheckBox runat="server" Font-Names="remember_me" ID="chkRemember" CssClass="hidden"/>
                <a href="#" class="btn btn-link pull-right">忘記密碼?</a>
            </span>
            <hr class="colorgraph"/>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button runat="server" ID="btnLogin" class="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" Text="登入"/>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <a href="MemberRegister.aspx" class="btn btn-lg btn-primary btn-block">加入會員</a>
                </div>
            </div>
            <h4 style="text-align:center;">OR</h4>
            <input class="btn btn-lg btn-facebook btn-block" type="submit" value="Login via facebook"/>
            </fieldset>
        </div>
    </div>
</asp:Content>

