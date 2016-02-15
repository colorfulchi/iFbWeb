<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShareMessage.aspx.cs" Inherits="ShareMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <script src="js/jquery.ui.datepicker-zh-TW.js"></script>
    
    <script>
        $('#myTab a').click(function (e) {
          e.preventDefault();
          $(this).tab('show');
          })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="well well-sm">
        <ul class="nav nav-tabs">
            <li><a href="#tabs-1" data-toggle="tab">一起吃</a></li>
            <li><a href="#tabs-2" data-toggle="tab">一起買</a></li>
        </ul>
        <div id="tabs-1" class="tab-pane">
            <asp:GridView ID="GridView1" runat="server" class="table">
                  
            </asp:GridView>
        </div>
        <div id="tabs-2" class="tab-pane">
            <asp:GridView ID="GridView2" runat="server" class="table">

            </asp:GridView>
        </div>
    
    
    <div class="well well-sm" id="tabs">
        <ul>
            <li>
                <a href="#tabs-1">一起吃</a>
            </li>
            <li>
                <a href="#tabs-2">一起買</a>
            </li>
        </ul>
        <div id="tabs-1">
            <table class="table">
                <tr>
                    <td>分享食物:</td>
                    <td>
                        <input name="Text1" type="text" class="form-control"/>
                        <asp:TextBox ID="Text1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>數量:</td>
                    <td>
                        <input name="Text2" type="text" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>分享地址:</td>
                    <td>
                        <input name="Text3" type="text" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>注意事項:</td>
                    <td>
                        <textarea name="TextArea1" class="form-control">請輸入...</textarea>
                    </td>
                </tr>
                <tr>
                    <td>刊登截止時間:</td>
                    <td>
                        <input id="datepicker" name="datepicker" type="text" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <div class="btn-group" role="group">
                            <asp:Button ID="Button1" runat="server" Text="一起吃,GO!!" class="btn btn-default" OnClick="Button1_Click" />
                            <button type="reset" class="btn btn-default">重設</button>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="tabs-2">
            <table class="table">
                <tr>
                    <td>團購食物:</td>
                    <td>
                        <input type="text" name="Text4" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>廠商:</td>
                    <td>
                        <input type="text" name="Text5" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>數量:</td>
                    <td>
                        <input type="text" name="Text6" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>團購地區:</td>
                    <td>
                        <input type="text" name="Text7" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>注意事項:</td>
                    <td>
                        <textarea class="form-control" name="Textarea2">請輸入...</textarea>
                    </td>
                </tr>
                <tr>
                    <td>刊登截止時間:</td>
                    <td>
                        <input type="text" id="datepicker1"  name="Text8" class="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <div class="btn-group" role="group">
                            <asp:Button ID="Button2" runat="server" Text="一起買,GO!!" class="btn btn-default" OnClick="Button2_Click" />
                            <button type="reset" class="btn btn-default">重設</button>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </div>
</asp:Content>

