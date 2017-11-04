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
                <img src="${article.imgurl}" width="720" height="400" alt="">
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
            <div class="side_news_card">
                <img src="images/recommend_list_pic.jpg" width="320" height="180" alt="">
                <h4>日本经营学专业优势介绍</h4>
                <p>日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势</p>
                <div class="eye_num_time clearfix">
                    <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">1024</span>
                    <span class="jfr">2017-10-01 10:33</span>
                </div>
            </div>
            <div class="side_news_card">
                <img src="images/recommend_list_pic.jpg" width="320" height="180" alt="">
                <h4>日本经营学专业优势介绍</h4>
                <p>日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势</p>
                <div class="eye_num_time clearfix">
                    <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">1024</span>
                    <span class="jfr">2017-10-01 10:33</span>
                </div>
            </div>
            <div class="side_news_card">
                <img src="images/recommend_list_pic.jpg" width="320" height="180" alt="">
                <h4>日本经营学专业优势介绍</h4>
                <p>日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势</p>
                <div class="eye_num_time clearfix">
                    <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">1024</span>
                    <span class="jfr">2017-10-01 10:33</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="assessment">
    <div class="assessment_cont clearfix">
        <img src="images/assessment_img.png" width="451" height="387" alt="JAPAN">
        <div class="assessment_form">
            <h2>赴日留学免费评估</h2>
            <form action="">
                <div class="form_box">
                    <div class="message_group clearfix">
                        <input class="name" type="text" placeholder="姓名">
                        <input class="tel" type="tel" placeholder="电话号码" maxlength="11">
                    </div>
                    <textarea name="" id="" placeholder="留言"></textarea>
                    <p>还可以输入<em>90</em>字</p>
                </div>
                <div class="submit_group">
                    <input type="submit" value="提交评估">
                    <p>专业顾问将尽快与您联系</p>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="footer">
    <div class="footer_cont clearfix">
        <div class="footer_main">
            <h4>明德笃实，筑梦名校</h4>
            <div class="tel"><img src="images/white_tel.png" width="22" height="24" alt="电话">400-0888-069</div>
            <p class="email_add"><span>Email: support@yingcai.com</span><span>Add: 北京市朝阳区西大望路XX大厦3层</span></p>
            <p>© 2017 北京英才进学塾出国留学咨询服务有限公司 保留一切权利</p>
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
        <form action="">
            <input type="text" placeholder="姓名">
            <input class="mb25" type="tel" placeholder="电话号码" maxlength="11">
            <button class="assess_btn">立即评估</button>
            <button class="online_btn">在线咨询</button>
        </form>
    </div>
</div>
<a class="fixed_ad" href="#"><img src="images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>