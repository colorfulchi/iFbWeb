<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageFood.aspx.cs" Inherits="ManageFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/content.css" rel="stylesheet" />

    <script>

        $(document).ready(function () {
            $('#media').carousel({
                pause: true,
                interval: false,
            });
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeAll" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/FoodIconAll.png" OnClick="btnTypeAll_Click" />
                <h3 class="circle_text text-center">全部
                    <small>All</small>
                </h3>
              </div>
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeVegetable" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_vagetable.png" OnClick="btnTypeVegetable_Click" />
                <h3 class="circle_text text-center">蔬菜類
                    <small>Vegetable</small>
                </h3>
              </div>          
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeFruit" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_fruit.png" OnClick="btnTypeFruit_Click" />
                <h3 class="circle_text text-center">水果類
                    <small>Fruit</small>
                </h3>
              </div>
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeBeefAndFish" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_fish.png" OnClick="btnTypeBeefAndFish_Click" />
                <h3 class="circle_text text-center">魚肉類
                    <small>BeefAndFish</small>
                </h3>
              </div> 
                       
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-3">
                  <asp:ImageButton ID="btnTypeCookedFood" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_eatnow.png" OnClick="btnTypeCookedFood_Click" />
                <h3 class="circle_text text-center">熟食類
                    <small>Cooked Food</small>
                </h3>
              </div>  
              <div class="col-md-3">
                  <asp:ImageButton ID="btnTypeDrinks" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_drink.png" OnClick="btnTypeDrinks_Click" />
                <h3 class="circle_text text-center">飲品類
                    <small>Drinks</small>
                </h3>
              </div> 
              <div class="col-md-3">
                <asp:ImageButton ID="btnTypeOthers" runat="server" CssClass="btn-default orange-circle-button" ImageUrl="~/images/fi_cake.png" OnClick="btnTypeOthers_Click" />
                <h3 class="circle_text text-center">其他類
                    <small>Others</small>
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

   
    <div class="row col-md-12">
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="iFoodBoxDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="foods">
        </asp:LinqDataSource>
        <asp:GridView ID="gvfoodlist" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="Solid" BorderWidth="2px" CellPadding="4"  GridLines="Horizontal" CssClass="table table-striped custab">
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


</asp:Content>

