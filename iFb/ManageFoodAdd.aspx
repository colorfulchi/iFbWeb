<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageFoodAdd.aspx.cs" Inherits="ManageFoodAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/content.css" rel="stylesheet" />
    <script src="js/foodadd.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
   <section style="background:#e7e7de;">
        <div class="container">
            <div class="row">
                <center>
                <div class="board">
                <!--tab 標籤頁 -->
                    <div class="board-inner">
                    <ul class="nav nav-tabs" id="myTab">
                    <div class="liner"></div>
                <!--tab 1 button -->
                 <li class="active">
                     <a href="#foodAddStart" data-toggle="tab" title="新增冰箱食材">
                      <span class="round-tabs one">
                              <i class="glyphicon glyphicon-plus"></i>
                      </span> 
                     </a>
                 </li>
               <!--tab 2  button -->
                  <li class="disabled"><a href="#foodNameType" data-toggle="tab" title="設定食材名稱及分類">
                     <span class="round-tabs two">
                         <i class="fa fa-cutlery"></i>
                     </span> 
                    </a>
                 </li>
               <!--tab 3  button -->
                 <li class="disabled"><a href="#foodTime" data-toggle="tab" title="紀錄冰入時間及到期日">
                     <span class="round-tabs three">
                           <i class="glyphicon glyphicon-time"></i>
                     </span> </a>
                     </li>
           
               <!--tab 4  button -->
                     <li class="disabled"><a href="#foodAddFinish" data-toggle="tab" title="新增食材完成">
                         <span class="round-tabs four">
                              <i class="glyphicon glyphicon-ok"></i>
                         </span> </a>
                     </li>   
                     </ul>
                </div>


             <!--tab 內容頁 -->
              <div class="tab-content">
                      <!--tab  1 內容 -->
                      <div class="tab-pane fade in active" id="foodAddStart">
                          <h3 class="head text-center"> 新增冰箱食材 </h3>
                          <p class="narrow text-center">
                             開始將您的食材加入冰箱
                          </p>
                       
                                   
                        <div class="form-horizontal text-center" id="foodAddStart_form" role="form">
                            <fieldset>
                               <a href="#foodNameType" class="btn-next btn btn-outline-rounded green">下一步<span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a> 
                            </fieldset>
                        </div>   
                      </div>
                    <!--tab  2 內容 -->
                      <div class="tab-pane fade" id="foodNameType">
                          <h3 class="head text-center">設定食材名稱及分類</h3>      
                              <div class="form-horizontal text-center" id="foodNameType_form" role="form">
                                  <div class="form-group">
                                      <label for="addFoodName" class="col-sm-3 control-label">食材名稱 :</label>
                                          <div class="col-sm-6 input-group">
                                              <asp:TextBox ID="tbFoodName" runat="server" CssClass="form-control" placeholder="輸入食材名稱" required=""></asp:TextBox> 
                                              <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                                          </div>
                                  </div>
                                  <div class="form-group">
                                      <label for="addFoodName" class="col-sm-3 control-label">數量 :</label>
                                          <div class="col-sm-6 input-group"  data-validate="number">
                                              <asp:TextBox ID="tbFoodCount" runat="server" CssClass="form-control " placeholder="輸入數量" required="" ></asp:TextBox> 
                                              <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                                             </div>
                                  </div>
                                  <div class="form-group">
                                     <label for="InputFile"  class="col-sm-3 control-label">圖片上傳 :</label>
                                      <div class="col-sm-6">
                                          <asp:FileUpload ID="foodPicUpload" runat="server" />
                                      </div>
                                    
                                   </div>
                                   <div class="form-group">
                                  <fieldset>
                                      <label for="addFoodName" class="col-sm-3 control-label">食材分類 :</label>
                                      <div class="col-sm-8">
                                         <div>
                                             <asp:RadioButtonList ID="rdofoodType" runat="server" RepeatDirection="Horizontal">
                                                 <asp:ListItem Text='蔬菜類<br/><img src="images/fi_vagetable-s.png" alt="" class="img-circle img-responsive"/>' Value="蔬菜類" Selected="True" />
                                                 <asp:ListItem Text='水果類<br/><img src="images/fi_fruit-s.png" alt="" class="img-circle img-responsive"/>' Value="水果類" />
                                                 <asp:ListItem Text='魚肉類<br/><img src="images/fi_fish-s.png" alt="" class="img-circle img-responsive"/>' Value="魚肉類" />
                                                 <asp:ListItem Text='熟食類<br/><img src="images/fi_eatnow-s.png" alt="" class="img-circle img-responsive"/>' Value="熟食類" />
                                                 <asp:ListItem Text='飲品類<br/><img src="images/fi_drink-s.png" alt="" class="img-circle img-responsive"/>' Value="飲品類" />
                                                 <asp:ListItem Text='其他類<br/><img src="images/fi_cake-s.png" alt="" class="img-circle img-responsive"/>' Value="其他類" />
                                             </asp:RadioButtonList>
                                         </div>
                                     </div>
                                    </fieldset>
                                   </div>
                                </div> 
                                <a href="#foodTime" type="submit" class="btn-submit1 btn btn-outline-rounded green">下一步<span style="margin-left:10px;" class="glyphicon glyphicon-send" onclick=""></span></a>              
                      </div>
                  <!--tab  3 內容 -->
                      <div class="tab-pane fade" id="foodTime">
                          <h3 class="head text-center">紀錄冰入時間及到期日</h3>
                          <div class="col-sm-7 col-sm-offset-2">
                              <div class="form-horizontal text-center" id="foodTime_form" >
                                    <div class="form-group registration-date">
                                       <label for="InDate" class="col-sm-4 control-label">冰入日期 :</label>
                                        <div class="funkyradio col-sm-8">
            	                           <div class="input-group registration-date-time">
            		                          <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbFoodDate" required=""></asp:TextBox>
                                               <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>            
            		                       </div>
                                        </div>  
                                    </div> 
                                       
                                  
                                  <div class="form-group registration-date">
                                       <label for="InDate" class="col-sm-4 control-label">到期日期 :</label>
                                        <div class="funkyradio col-sm-8">
            	                           <div class="input-group registration-date-time">
            		                           <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbFoodDeadline" required=""></asp:TextBox>
                                               <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                                               <asp:CompareValidator ID="vadFoodDateCheck" runat="server" ControlToCompare="tbFoodDate" 
	                                                 ControlToValidate="tbFoodDeadline" ErrorMessage="結束日期必須大於起始日期" Type="Date" Operator="GreaterThan" 
	                                                   Display="Dynamic" SetFocusOnError="True">*</asp:CompareValidator> 
            		                   </div>
                                    </div>  
                                  </div> 

                                   <div class="form-group registration-date">
                                       <label for="InDate" class="col-sm-4 control-label">設定鬧鐘幾天前提醒:</label>
                                        <div class="col-sm-8">
                                           <asp:DropDownList ID="cboSetFoodAlert" runat="server" CssClass="form-control">
                                              <asp:ListItem Text="1天" Value="1"></asp:ListItem>
                                              <asp:ListItem Text="2天" Value="2"></asp:ListItem>
                                              <asp:ListItem Text="3天" Value="3"></asp:ListItem>
                                              <asp:ListItem Text="4天" Value="4"></asp:ListItem>
                                              <asp:ListItem Text="5天" Value="5"></asp:ListItem>
                                           </asp:DropDownList>
                                        </div>  
                                   </div>   
                                  
                                   <div class="form-group"> 
                                       <label for="InDate" class="col-sm-4 control-label">設定食材冰箱位置 :</label>
                                        <div class="col-sm-8">
                                           <asp:DropDownList ID="cboFoodPosition" runat="server" CssClass="form-control">
                                               <asp:ListItem Text="冷凍" Value="0"></asp:ListItem>
                                               <asp:ListItem Text="冷藏" Value="1"></asp:ListItem>
                                           </asp:DropDownList>
                                        </div>  
                                   </div> 
                             <asp:Button ID="Button1" runat="server" Text="確認送出" OnClick="btnFoodAdd_Click" CssClass="btn  btn-outline-rounded green" Font-Names="微軟正黑體" Font-Size="Larger" href="#foodAddFinish"></asp:Button>
                             <a href="#foodAddStart" class="btn-next btn btn-outline-rounded green">取消<span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a> 
                            
                          </div> 
                        </div> 
                      </div>
                 
                    <!--tab 4 內容 -->
                      <div class="tab-pane fade" id="foodAddFinish">
                          <div class="text-center">
                            <i class="img-intro icon-checkmark-circle"></i>
                           </div>
                            <div style="padding-top:20px;">
                               <asp:Label ID="lblMsgResault" runat="server" Text="成功新增食材!! <span style='color:#f48260;'>♥</span>" Font-Size="XX-Large"></asp:Label>               
                               <br />
                               <div class="form-horizontal text-center" id="ok_form">
                                   <a href="ManageFood.aspx" class=" btn btn-outline-rounded green">回到我的冰箱管理<span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a>            
                                   <a href="#foodAddStart" name="success_form" class="btn-next btn btn-outline-rounded green"> 回新增食材<span style="margin-left:10px;" class="glyphicon glyphicon-send"></span></a> 
                               </div>  
                            </div>      
                      </div>
                        <div class="clearfix"></div>
                       </div>
                    </div>
                </center>
            </div>
        </div>
   </section>

  

</asp:Content>

