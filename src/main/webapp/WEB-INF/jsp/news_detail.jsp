<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>资讯详情</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/news_recommend.css">
</head>
<body>
<div class="header header_state clearfix">
    <div class="header_main clearfix">
        <h1><img src="images/logo.png" width="213" height="61" alt="英才"></h1>
        <ul>
            <li>
                <a href="">
                    首页
                    <p>ホームページ</p>
                </a>
            </li>
            <li>
                <a href="course.html">
                    精品课程
                    <p>逸品課程</p>
                </a>
            </li>
            <li>
                <a href="teacher.html">
                    优秀师资
                    <p>優秀な教師</p>
                </a>
            </li>
            <li>
                <a href="rc/recommend.html">
                    推荐名校
                    <p>名門校を推薦する</p>
                </a>
            </li>
            <li>
                <a href="#">
                    关于英才
                    <p>英才について</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="header_tel">
        <img src="images/white_tel.png" width="22" height="24" alt="电话"><span>400-0888-069</span>
    </div>
</div>

<p class="breadcrumb"><a href="news.html">资讯</a><em>&rsaquo;</em><span>资讯正文</span></p>
<div class="tabs_cont_box mt0 clearfix">

    <div class="tabs_cont_height">
        <div class="news_detail_cont">
            <h2>${article.title}</h2>
            <div class="eye_num_time">
                <span><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">${article.hits}</span>
                <span class="ml20">${article.updatetime}</span>
            </div>
            <div class="detail_cont_main">
                <img src="${article.imgurl}"  alt="">
                ${article.content}
            </div>
            <div class="share">
                <span>分享到</span>
                <a href="#"><img src="images/share_qq.png" width="20" height="20" alt="分享到QQ"></a>
                <a href="#"><img src="images/share_qzone.png" width="20" height="20" alt="分享到QQ空间"></a>
                <a href="#"><img src="images/share_wechat.png" width="25" height="20" alt="分享到微信"></a>
                <a href="#"><img src="images/share_weibo.png" width="23" height="20" alt="分享到微博"></a>
            </div>
        </div>
    </div>

    <div class="side_assess_box side_news_box">
        <div class="news_detail_side">
            <h2>英才精彩推荐</h2>
            <c:forEach items="${renews}" var="article">
                <a href="news/newsdetail.html?id=${article.id}">
            <div class="side_news_card">
                    <img src="${article.imgurl}" width="320" height="180" alt="">
                <h4>${article.title}</h4>
                <p>${article.description}</p>
                <div class="eye_num_time clearfix">
                    <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">${article.hits}</span>
                    <span class="jfr">${article.updatetime}</span>
                </div>
            </div>
                </a>
            </c:forEach>
        </div>
    </div>
</div>

<div class="assessment">
    <div class="assessment_cont clearfix">
        <img src="images/assessment_img.png" width="451" height="387" alt="JAPAN">
        <div class="assessment_form">
            <h2>赴日留学免费评估</h2>
            <form onsubmit="tijiao()" method="post" action="assess.html">
                <div class="form_box">
                    <div class="message_group clearfix">
                        <input class="name" name="name" required="required" maxlength="20" type="text" placeholder="姓名">
                        <input class="tel" name="tel" required="required" type="tel" placeholder="电话号码" maxlength="11">
                    </div>
                    <textarea required="required" oninput="gbcoun(this)" name="ass" id="pvalue" placeholder="留言" maxlength="100"></textarea>
                    <p>还可以输入<em id="ping">100</em>字</p>
                </div>
                <div class="submit_group">
                    <input type="submit" value="提交评估">
                    <p>专业顾问将尽快与您联系</p>
                </div>
            </form>
            <script language="javascript" >
                function gbcoun(item) {
                    var pval=item.value.length;
                    var sheng=100-pval;
                    document.getElementById("ping").innerHTML=sheng;
                }

                function tijiao() {
                    alert("评估成功，留意电话")
                    return true;
                }

            </script>
        </div>
    </div>
</div>

<div class="footer">
    <div class="footer_cont clearfix">
        <div class="footer_main">
            <h4>明德笃实，筑梦名校</h4>
            <div class="tel"><img src="images/white_tel.png" width="22" height="24" alt="电话">400-0888-069</div>
            <p class="email_add"><span>Email: service@ycjxschool.com</span><span>Add: 北京市朝阳区百子湾路29号楼3层A02室</span></p>
            <p>©  2017 北京中天艺圣文化传媒有限公司 保留一切权利</p>
        </div>
        <ul class="QR_code">
            <li>
                <p>官方微信</p>
                <img src="" width="125" height="125" alt="官方微信二维码">
            </li>
            <li>
                <p>官方微博</p>
                <img src="" width="125" height="125" alt="官方微博二维码">
            </li>
        </ul>
    </div>
</div>

<div class="consult_fix clearfix">
    <div class="consult_show">
        <img src="images/free_assess.png" width="23" height="24" alt="免费评估">
        <span>免费评估</span>
        <img src="images/online_consultant.png" width="24" height="22" alt="在线咨询">
        <span>在线咨询</span>
    </div>
    <div class="consult_form">
        <form onsubmit="tijiao()" method="post" action="assess.html">
            <input name="name"  type="text" required="required" placeholder="姓名">
            <input class="mb25" name="tel" required="required" type="tel" placeholder="电话号码" maxlength="11">
            <button type="submit" class="assess_btn">立即评估</button>
            <button onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')" class="online_btn">在线咨询</button>
        </form>
    </div>
</div>
<a class="fixed_ad" href="#"><img src="images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>