<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="footer">
   <div class="wrap">
      <div class="foot">
            <div class="foot-left fl">
                 <a href="javascript:void(0)">关于我们</a>
                 <a href="javascript:void(0)">加入我们</a>
                 <a href="javascript:void(0)">联系我们</a>
                 <a href="javascript:void(0)">媒体采访</a>
            </div>
            <div class="foot-c fl"><a href=""><img src="/chbbs/resource/academy/images/foot-logo.jpg"></a></div>
            <div class="foot-right fr">
                 <a href="javascript:void(0)">同城活动</a>
                 <a href="javascript:void(0)">课程资讯</a>
                 <a href="javascript:void(0)">最新发布</a>
                 <a href="javascript:void(0)">热门文章</a>
            </div>
       </div> 
       <div class="foot-btm"><a href="adminRedirect">2015130242丨陈瀚 &copy; 系统后台入口</a></div>    
   </div>
</div>

<!--登录注册弹窗-->
<div class="mask"></div>
<div class="login">
    <div class="login-title">
        <div class="login-a">登录</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
    	<form action="login" method="post">
	        <div class="login-d"><input type="text" class="login-text" placeholder="注册时填写的用户名" name="user.username" maxlength="5" required></div>
	        <div class="login-d"><input type="password" class="login-pas" placeholder="密码" name="user.password" required></div>
	        <div class="login-d"><input type="submit" class="login-btn" value="登录"></div>
	    </form>
        <div class="login-f">
             <a href="javascript:void(0)">忘记密码</a>
             <span>还没有陈瀚BBS账号?><a href="javascript:;" class="reg-href">点击注册</a></span>
        </div>
    </div>
</div>

<div class="reg">
    <div class="login-title">
        <div class="login-a">注册</div>
        <div class="login-b"></div>
        <div class="login-c close">x</div>
    </div>
    <div class="login-btm">
    	<form action="register" method="post">
	        <div class="login-d"><input type="text" class="login-text" placeholder="用户名" name="user.username" maxlength="5" required></div>
	        <div class="login-d"><input type="password" class="login-pas" placeholder="密码" name="user.password" required></div>
	        <div class="login-d"><input type="email" class="login-text" placeholder="邮箱" name="user.email" required></div>
	        <div class="login-d">
       			<select class="login-text" name="user.sex">
                    <option selected = "selected">男</option>
                    <option>女</option>
                </select>
            </div>
	        <div class="login-d"><input type="text" class="login-text" placeholder="手机" name="user.phone" maxlength="11" required></div>
	        <div class="login-d"><input type="text" class="login-text" placeholder="地址" name="user.address" required></div>
	        <div class="login-d"><input type="text" id="birthday" class="login-text" placeholder="出生日期" name="user.birthday" required/></div>
	        <div class="login-d"><input type="submit" class="login-btn" value="注册"></div>
        </form>
        <div class="login-f">
             <a href="javascript:void(0)">忘记密码</a>
        </div>
    </div>
</div>

<script src="/chbbs/resource/academy/js/jquery-1.11.1.min.js"></script>
<script src="/chbbs/resource/academy/js/Action.js"></script>
<script src="/chbbs/resource/academy/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
  $(function ($) {
            $(".fullSlide").slide({
                titCell: ".hbox ul",
                mainCell: ".box ul",
                effect: "fold",
				mouseOverStop:false,
                autoPlay: true,
                autoPage: true,
                trigger: "click",
                startFun: function (i) {
                    var curLi = jQuery(".fullSlide .bd li").eq(i);
                    if (!!curLi.attr("_src")) {
                        curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
                    }
                }
            });
          
        });
      
</script>
<script>
   $(".com-fl").slide({
		    titCell: ".bd ul" , 
		    mainCell:".hd ul" , 
	        effect:"fold", 
	        autoPlay:true,
	        autoPage: true, 
		    mouseOverStop:false,
 		    trigger: "click",
		    startFun: function (i) {
                    var curLi = jQuery(".com-fl .bd li").eq(i);
                    if (!!curLi.attr("_src")) {
                        curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
                    }
                }
		 })	
</script>
<script>
	$(".cou-a1").hover(function(){
		$(this).find(".cou-inside").stop(true,true).animate({top:0},500);
		},function(){
	        $(this).find(".cou-inside").stop(true,true).animate({top:201},500);
	});	
</script>
<script>
   $(".sort").click(function(){
	   $(this).toggleClass("sort-cut")  
	})
</script>
<script>
   $(".dropdown").bind({
	    click: function () {
	        $(this).find(".droplist").stop().slideDown();
	    },
	    mouseleave: function () {
	        $(this).find(".droplist").hide();
	    }
	});
	$(".dropdown .droplist li").click(function () {
	    $(this).parents(".dropdown").children("span").text($(this).text());
	    $(this).parents(".droplist").hide().attr("data-value", $(this).attr("data-id"));
	});
</script>
<script>
   $(".act-banner").slide({
		    titCell: ".bd ul" , 
		    mainCell:".hd ul" , 
	        effect:"fold", 
	        autoPlay:true,
	        autoPage: true, 
		    mouseOverStop:false,
 		    trigger: "click",
		    startFun: function (i) {
                    var curLi = jQuery(".act-banner .bd li").eq(i);
                    if (!!curLi.attr("_src")) {
                        curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
                    }
                }
		 })	
</script>

<script>
$(".act-a-img").hover(function(){
		$(this).find(".inside").stop(true,true).animate({top:0},500);
		},function(){
	        $(this).find(".inside").stop(true,true).animate({top:295},500);
		});	
</script>

<script>
  $(".page a").click(function(){
	  $(this).addClass("page-cut").siblings().removeClass("page-cut")  
	  
	})
</script>

<script>
$(".tsm-title").click(function(){
	  $(this).toggleClass("tsm-t2").parent().siblings().find(".tsm-title").removeClass("tsm-t2"),
	  $(this).next().slideToggle().parent().siblings().find(".tsm-a").slideUp()
})
</script>



<!-- 出生日期js -->
<script src="/chbbs/resource/btzero7/js/datePicker.js" type="text/javascript"></script>
<script>
	var calendar = new datePicker();
	calendar.init({
		'trigger': '#birthday', /*按钮选择器，用于触发弹出插件*/
		'type': 'date',/*模式：date日期；datetime日期时间；time时间；ym年月；*/
		'minDate':'1900-1-1',/*最小日期*/
		'maxDate':'2100-12-31',/*最大日期*/
		'onSubmit':function(){/*确认时触发事件*/
			var theSelectData=calendar.value;
		},
		'onClose':function(){/*取消时触发事件*/
		}
	});
</script>