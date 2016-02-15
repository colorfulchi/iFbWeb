<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3.aspx.cs" Inherits="test3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap2.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <link href="css/content.css" rel="stylesheet" />
    <script src="js/jquery-1.11.3.min.js"></script>
     <script src="js/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script>

        $(document).ready(function () {
            $('#media').carousel({
                pause: true,
                interval: false,
            });
        });
      
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <asp:TextBox ID="changeType" runat="server" Visible="False"></asp:TextBox>
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeVegetable" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_vagetable.png" OnClientClick=" $('#changeType').text = '蔬菜類';"  />
                <h3 class="circle_text">蔬菜類
                    <small>BeefAndFish</small>
                </h3>
              </div>          
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_fruit.png);background-position:center;"> </button>
                <h3 class="circle_text">水果類
                    <small>BeefAndFish</small>
                </h3>
              </div>
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_fish.png);background-position:center;"> </button>
                <h3 class="circle_text">魚肉類
                    <small>BeefAndFish</small>
                </h3>
              </div> 
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_eatnow.png);background-position:center;"> </button>
                <h3 class="circle_text">熟食類
                    <small>BeefAndFish</small>
                </h3>
              </div>           
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_fish.png);background-position:center;"> </button>
                <h3 class="circle_text">飲品類
                    <small>BeefAndFish</small>
                </h3>
              </div> 
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_eatnow.png);background-position:center;"> </button>
                <h3 class="circle_text">其他類
                    <small>BeefAndFish</small>
                </h3>
              </div>        
               <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_vagetable.png);background-position:center;"> </button>
                <h3 class="circle_text">蔬菜類
                    <small>BeefAndFish</small>
                </h3>
              </div>          
              <div class="col-md-3">
                <button class="btn btn-default orange-circle-button" href="" style="background-image:url(images/fi_fruit.png);background-position:center;"> </button>
                <h3 class="circle_text">水果類
                    <small>BeefAndFish</small>
                </h3>
              </div>
            </div>
          </div>
        </div>
        <a data-slide="prev" href="#media" class="left carousel-control">‹</a>
        <a data-slide="next" href="#media" class="right carousel-control">›</a>
      </div>                          
    </div>
  </div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iFoodBoxDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="foods">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" DataKeyNames="foodID" DataSourceID="LinqDataSource1" GridLines="Horizontal" CssClass="table table-striped custab">
            <Columns>
                <asp:BoundField DataField="foodName" HeaderText="名稱" SortExpression="foodName" />
                <asp:BoundField DataField="foodType" HeaderText="類別" SortExpression="foodType" />
                <asp:BoundField DataField="foodCount" HeaderText="數量" SortExpression="foodCount" />
                <asp:BoundField DataField="foodFreezing" HeaderText="位置" SortExpression="foodFreezing" />
                <asp:BoundField DataField="foodalarmDay" HeaderText="提醒" SortExpression="foodalarmDay" />
                <asp:BoundField DataField="foodDate" HeaderText="冰入日" SortExpression="foodDate" />
                <asp:BoundField DataField="foodDeadline" HeaderText="到期日" SortExpression="foodDeadline" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" Text="<span class='glyphicon glyphicon-edit'></span> 修改" CssClass="btn btn-info btn-xs" /> 
                         <asp:LinkButton runat="server" Text="<span class='glyphicon glyphicon-remove'></span> 吃完" CssClass="btn btn-danger btn-xs" /> 
                        <asp:LinkButton runat="server" Text="<span class='glyphicon glyphicon-plus'></span> 加入購物車" CssClass="btn btn-success btn-xs" />     
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    
    </div>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="iFoodBoxDataContext" EntityTypeName="" Select="new (foodType, foodName, foodCount, foodDate, foodDeadline, foodFreezing, foodalarmDay)" TableName="foods" Where="foodType == @foodType">
            <WhereParameters>
                <asp:ControlParameter ControlID="changeType" Name="foodType" PropertyName="Text" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource2">
            <Columns>
                <asp:BoundField DataField="foodType" HeaderText="foodType" ReadOnly="True" SortExpression="foodType" />
                <asp:BoundField DataField="foodName" HeaderText="foodName" ReadOnly="True" SortExpression="foodName" />
                <asp:BoundField DataField="foodCount" HeaderText="foodCount" ReadOnly="True" SortExpression="foodCount" />
                <asp:BoundField DataField="foodDate" HeaderText="foodDate" ReadOnly="True" SortExpression="foodDate" />
                <asp:BoundField DataField="foodDeadline" HeaderText="foodDeadline" ReadOnly="True" SortExpression="foodDeadline" />
                <asp:BoundField DataField="foodFreezing" HeaderText="foodFreezing" ReadOnly="True" SortExpression="foodFreezing" />
                <asp:BoundField DataField="foodalarmDay" HeaderText="foodalarmDay" ReadOnly="True" SortExpression="foodalarmDay" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
