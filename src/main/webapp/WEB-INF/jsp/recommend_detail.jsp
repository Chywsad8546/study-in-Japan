<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title>推荐名校详情</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="/css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="/css/global.css">
    <link rel="stylesheet" href="/css/recommend_detail.css">
</head>
<body>
    <div class="header header_state clearfix">
        <div class="header_main clearfix">
            <h1><img src="/images/logo.png" width="213" height="61" alt="英才"></h1>
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
            <img src="/images/white_tel.png" width="22" height="24" alt="电话"><span>4008-517-517</span>
        </div>
    </div>

    <div class="msg_main">
        <div class="clearfix">
            <div class="school_msg">
                <div class="msg_header clearfix">
                    <img src="${url}${school.img}" width="90" height="90" alt="${school.uname}">
                    <div>
                        <h2>${school.uname}<em>${school.jpname}</em></h2>
                        <p><i class="recommend_detail_icon"></i>${school.schooladress}</p>
                    </div>
                    <c:if test="${school.authentication==1}">
                    <p>
                        <img src="/images/certify.png" width="42" height="42" alt="教育部认证">
                        <span>教育部认证</span>
                    </p>
                    </c:if>
                </div>
                <div class="clearfix">
                    <dl>
                        <dd><em>性质：</em> <c:choose><c:when test="${school.schoolnature== 1}">国立</c:when>
                            <c:when test="${school.schoolnature== 2}">私立</c:when>
                            <c:when test="${school.schoolnature== 3}">公立</c:when></c:choose></dd>
                        <dd><em>建校年份：</em>${school.buldingschooltime}年</dd>
                        <dd><em>人数：</em>${school.peoplecount}人</dd>
                        <dt><em>知名校友：</em>福田康夫  井深大  李秉喆  堺雅人  村上春树</dt>
                        <dt><em>校训：</em>${school.motto}</dt>
                    </dl>
                    <div class="ranking_box">
                        <p class="ranking"><i class="recommend_detail_icon ranking_icon"></i>CWUR日本大学排名</p>
                        <strong>22</strong>
                        <p class="popularity"><em>人气：</em>${school.popularity}</p>
                        <a class="clearfix" href="#"><i class="recommend_detail_icon tel_icon"></i><em>咨询电话</em><span>${school.phone}</span></a>
                    </div>
                </div>
                <div class="school_overview">
                    <p>${school.synopsis}</p>

                </div>
            </div>
            <div class="jfr">
                <div class="clearfix picCon">
                    <div class="imgBig">
                        <img src="/images/1.jpg">
                    </div>
                    <ul class="picList">
                        <li>
                            <img src="/images/2.jpg" width="120" height="90" alt="">
                        </li>
                        <li>
                            <img src="/images/2.jpg" width="120" height="90" alt="">
                        </li>
                        <li>
                            <img src="/images/2.jpg" width="120" height="90" alt="">
                        </li>
                        <li>
                            <img src="/images/2.jpg" width="120" height="90" alt="">
                        </li>
                        <li>
                            <img src="/images/2.jpg" width="120" height="90" alt="">
                        </li>
                        <li class="lastText">
                            <span>浏览更多 &gt;</span>
                        </li>
                    </ul>
                </div>
                <div class="picLayer">
                    <div class="picLayerCon">
                        <img class="closePicLayer" src="images/close_recommend_detail.png" width="32" height="32" alt="关闭">
                        <!-- Swiper -->
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="/images/1.jpg">
                                </div>
                                <div class="swiper-slide">
                                    <img src="/images/2.jpg">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-container gallery-thumbs">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="/images/1.jpg">
                                </div>
                                <div class="swiper-slide">
                                    <img src="/images/2.jpg">
                                </div>
                            </div>
                        </div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next swiper-button-white"></div>
                        <div class="swiper-button-prev swiper-button-white"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail_item">
            <h3><i class="recommend_detail_icon major"></i>专业设置</h3>
            <div>
                <p>早稻田大学共专业共${school.phd+school.graduate+school.undergraduate+school.speechcenter}个</p>
                <dl>
                    <dd>博士（${school.phd}）</dd>
                    <dd>硕士（${school.graduate}）</dd>
                    <dd>本科（${school.undergraduate}）</dd>
                    <dd>语言中心（${school.speechcenter}}）</dd>
                </dl>
            </div>
        </div>
        <div class="detail_item">
            <h3><i class="recommend_detail_icon cost"></i>留学费用</h3>
            <div>
                <p>2017-2018早稻田大学学费</p>
                <dl>
                    <dt><em>博士</em>参考学费：${tuition.ptuition*rate}日元每周起 RMB${tuition.ptuition}元每周起</dt>
                    <dt><em>硕士</em>参考学费：${tuition.ptuition*rate}日元每周起 RMB${tuition.gtuition}元每周起</dt>
                    <dt><em>本科</em>参考学费：${tuition.ptuition*rate}日元每周起 RMB${tuition.utuition}元每周起</dt>
                    <dt><em>语言中心</em>参考学费：${tuition.ptuition*rate}日元每周起 RMB${tuition.stuition}元每周起</dt>
                </dl>
            </div>
        </div>
        <div class="detail_item">
            <h3><i class="recommend_detail_icon map"></i>地图</h3>
            <div class="map_box"></div>
        </div>
    </div>
    <div class="module_box">
        <img src="/images/recommend_detail_hot_.png" width="42" height="44" alt="热门院校推荐">
        <h2>热门院校推荐</h2>
        <ul class="mb60 clearfix">
            <c:forEach var="node" items="${schoolre}">
            <li>
                <a href="rc/recommend_detail.html?id=${node.id}">
                    <div class="side_news_card hot_item">
                        <img src="/images/${node.img}.jpg" width="240" height="180" alt="">
                        <h4>${node.uname}</h4>
                        <p>${node.jpname}</p>
                    </div>
                </a>
            </li>
            </c:forEach>
        </ul>
    </div>


    <div class="assessment">
        <div class="assessment_cont clearfix">

            <img src="/images/assessment_img.png" width="451" height="387" alt="JAPAN">

            <img src="/images/ass    essment_img.png" width="451" height="387" alt="JAPAN">

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
                <div class="tel"><img src="/images/white_tel.png" width="22" height="24" alt="电话">4008-517-517</div>
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
            <img src="/images/free_assess.png" width="23" height="24" alt="免费评估">
            <span>免费评估</span>
            <img src="/images/online_consultant.png" width="24" height="22" alt="在线咨询">
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
    <a class="fixed_ad" href="#"><img src="/images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/swiper-3.4.2.jquery.min.js"></script>
    <script>
        $(function(){
            $('.picList li').on('click',function(){
                $('.picLayer').fadeIn();
                var galleryTop = new Swiper('.gallery-top', {
                    nextButton: '.swiper-button-next',
                    prevButton: '.swiper-button-prev',
                    spaceBetween: 10
                });
                var galleryThumbs = new Swiper('.gallery-thumbs', {
                    spaceBetween: 10,
                    centeredSlides: true,
                    slidesPerView: 'auto',
                    touchRatio: 0.2,
                    slideToClickedSlide: true
                });
                galleryTop.params.control = galleryThumbs;
                galleryThumbs.params.control = galleryTop;
            });
            $('.picLayer').on('click','.closePicLayer',function(){
                $('.picLayer').fadeOut()
            });

        })
    </script>
</body>
</html>