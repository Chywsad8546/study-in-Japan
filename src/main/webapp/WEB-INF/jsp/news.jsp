<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="/">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>资讯</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/news_recommend.css">
</head>
<body>
<div class="header clearfix">
    <div class="header_main clearfix">
        <h1><img src="images/logo.png" width="213" height="61" alt="英才"></h1>
        <ul>
            <li class="current">
                <a href="">
                    首页
                    <p>ホームページ</p>
                </a>
            </li>
            <li>
                <a href="course.html">
                    精品课程
                    <p>プレミア課程</p>
                </a>
            </li>
            <li>
                <a href="teacher.html">
                    优秀师资
                    <p>優秀な教師チーム</p>
                </a>
            </li>
            <li>
                <a href="rc/recommend.html?pnow=1&type=0">
                    推荐名校
                    <p>名門校の推薦</p>
                </a>
            </li>
            <li>
                <a href="news/newsdetail.html?id=45">
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
<div class="news_banner" id="fixed_bottom_header">
    <div class="tab_banner_shadow"></div>
    <div class="tabs_item">
        <ul>
            <li <c:if test="${type==0}">class="current"</c:if>><a href="news/morenews.html">全部资讯<span>全部情報</span></a></li>
            <li <c:if test="${type==43}">class="current"</c:if>><a href="news/morenews.html?type=43">留学资讯<span>留学の情報</span></a></li>
            <li <c:if test="${type==46}">class="current"</c:if>><a href="news/morenews.html?type=46">招生资讯<span>募集情報</span></a></li>
            <li <c:if test="${type==47}">class="current"</c:if>><a href="news/morenews.html?type=47">学习资料<span>学習資料</span></a></li>
        </ul>
    </div>
</div>
<div class="tabs_cont_box clearfix">
    <div class="tabs_cont_height">
        <div class="tabs_cont">
            <ul>
                <c:forEach var="article" items="${articlelist}">
                <li>
                    <a class="news_list_item clearfix" href="news/newsdetail.html?id=${article.id}">
                        <img src="${article.imgurl}" width="200" height="150" alt="">
                        <div class="news_item_cont">
                            <h3>${article.title}</h3>
                            <p>${article.description}</p>
                            <div class="num_time">
                                <span><img src="images/eye_num_icon.png" width="23" height="16" alt="查看数量">${article.hits}</span>
                                <span class="ml20">${article.updatetime}</span>
                            </div>
                        </div>
                    </a>
                </li>
                </c:forEach>
            </ul>
            <div class="pagination">
                <c:choose>
                    <c:when test="${page.pageCount==1||page.pageCount==0}">
                        <div class="pagination_cont">
                            <a href="#" onclick="return false;" class="disable">&laquo;</a>
                            <a href="#" onclick="return false;" class="disable">&lsaquo;</a>
                            <div class="page_num">
                                <span>1</span>
                            </div>
                            <a href="#" onclick="return false;" class="disable">&rsaquo;</a>
                            <a href="#" onclick="return false;" class="disable">&raquo;</a>
                        </div>
                    </c:when>

                    <c:when test="${page.pageNow== 1}">
                        <div class="pagination_cont">
                            <a href="#" class="disable" onclick="return false;">&laquo;</a>
                            <a href="#" class="disable" onclick="return false;">&lsaquo;</a>
                            <div class="page_num">
                                <span>${page.pageNow}</span>/<span class="disable">${page.pageCount}</span>
                            </div>
                            <a href="news/morenews.html?pnow=${page.pageNow+1}&type=${type}" >&rsaquo;</a>
                            <a href="news/morenews.html?pnow=${page.pageCount}&type=${type}" >&raquo;</a>
                        </div>
                    </c:when>

                    <c:when test="${page.pageNow== page.pageCount}">
                        <div class="pagination_cont">
                            <a href="news/morenews.html?pnow=1&type=${type}">&laquo;</a>
                            <a href="news/morenews.html?pnow=${page.pageNow-1}&type=${type}">&lsaquo;</a>
                            <div class="page_num">
                                <span>${page.pageNow}</span>/<span class="disable">${page.pageCount}</span>
                            </div>
                            <a href="#" class="disable" onclick="return false;">&rsaquo;</a>
                            <a href="#" class="disable" onclick="return false;">&raquo;</a>
                        </div>
                    </c:when>


                    <c:otherwise>
                        <div class="pagination_cont">
                            <a href="news/morenews.html?pnow=1&type=${type}">&laquo;</a>
                            <a href="news/morenews.html?pnow=${page.pageNow-1}&type=${type}">&lsaquo;</a>
                            <div class="page_num">
                                <span>${page.pageNow}</span>/<span class="disable">${page.pageCount}</span>
                            </div>
                            <a href="news/morenews.html?pnow=${page.pageNow+1}&type=${type}" >&rsaquo;</a>
                            <a href="news/morenews.html?pnow=${page.pageCount}&type=${type}" >&raquo;</a>
                        </div>
                    </c:otherwise>
                </c:choose>
                <p>
                    <span>每页<em>4</em>条</span>
                    <span class="ml10">共<em>${page.nodeCount}</em>条</span>
                </p>
            </div>
        </div>
    </div>

    <div class="side_assess_box">
        <div class="side_assess_main" id="side_assess_fixed">
            <h2>免费评估</h2>
            <form action="">
                <input type="text" placeholder="姓名">
                <input class="mb25" type="tel" placeholder="电话号码">
                <button class="assess_btn">立即评估</button>
                <button onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')" class="online_btn">在线咨询</button>
            </form>
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
            <c:forEach var="item" items="${erweimalist}">
                <li style="margin-right: 40px">
                    <p>${item.name}</p>
                    <img src="${url}${item.url}" width="125" height="125" alt="${item.name}">
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<a class="fixed_ad" href="#"><img src="images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>