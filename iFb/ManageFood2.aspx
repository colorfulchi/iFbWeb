<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageFood2.aspx.cs" Inherits="ManageFood" %>

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

   
    <div class="row col-md-12">
    <table class="table table-striped custab">
    <thead>
   
        <tr>
            <th>名稱</th>
            <th>冰入日</th>
            <th>到期日</th>
            <th>數量</th>
            <th class="text-center">選擇</th>
        </tr>
    </thead>
            <tr>
                <td>梨山來的高麗菜</td>
                <td>2016/01/01</td>
                <td>2016/01/08</td>
                <th>1</th>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
            <tr>
                <td>昨天吃剩的晚餐</td>
                <td>2016/01/29</td>
                <td>2016/01/30</td>
                <th>2</th>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
            <tr>
                <td>萬年不壞大統假醬油</td>
                <td>2016/01/01</td>
                <td>3000/01/01</td>
                <th>1</th>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
        <tr>
                <td>開過的麵筋</td>
                <td>2016/01/05</td>
                <td>2016/01/10</td>
                <th>3</th>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
            <tr>
                <td>大特價雞蛋</td>
                <td>2016/01/28</td>
                <td>2016/02/05</td>
                <th>30</th>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
            <tr>
                <td>詭異婆婆的果汁</td>
                <td>2016/01/28</td>
                <td>2016/01/28</td>
                <th>0.5</th>
               <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 修改</a> 
                                       <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> 吃完</a>
                                       <a href="#" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 加入購物單</a>
                </td>
            </tr>
    </table>
   </div>


</asp:Content>

