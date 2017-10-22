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
    <title>推荐名校</title>
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
            <li>
                <a href="">
                    首页
                    <p>ホームページ</p>
                </a>
            </li>
            <li>
                <a href="/course.html">
                    精品课程
                    <p>逸品課程</p>
                </a>
            </li>
            <li>
                <a href="/teacher.html">
                    优秀师资
                    <p>優秀な教師</p>
                </a>
            </li>
            <li class="current">
                <a href="/rc/recommend.html?pnow=1&type=0">
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
        <img src="images/white_tel.png" width="22" height="24" alt="电话"><span>4008-517-517</span>
    </div>
</div>
<div class="news_banner" id="fixed_bottom_header">
    <div class="tab_banner_shadow"></div>
    <div class="tabs_item">
        <ul>
            <li  <c:if test="${type==0}">class="current"</c:if>><a href="/rc/recommend.html?pnow=1&type=0">全部大学<span>日文名字</span></a></li>
            <li  <c:if test="${type==1}">class="current"</c:if>><a href="/rc/recommend.html?pnow=1&type=1">国立大学<span>日文名字</span></a></li>
            <li  <c:if test="${type==2}">class="current"</c:if>><a href="/rc/recommend.html?pnow=1&type=2">私立大学<span>日文名字</span></a></li>
            <li  <c:if test="${type==3}">class="current"</c:if>><a href="/rc/recommend.html?pnow=1&type=3">公历大学<span>日文名字</span></a></li>
        </ul>
    </div>
</div>
<div class="tabs_cont_box clearfix">
    <div class="tabs_cont_height">
        <div class="tabs_cont">
            <ul>
                <c:forEach  var="node" begin="0" end="3" >
                    <c:if test="${schools[node]!=null}">
                <li>
                    <a class="recommend_list_item clearfix" href="/rc/recommend_detail.html?id=${schools[node].id}">
                        <img src="${url}${schools[node].img}" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>${schools[node].uname}</span>${schools[node].jpname}</h3>
                                <p><img src="/images/address_icon.png" width="12" height="16" alt="地址">${schools[node].schooladress}</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em><c:choose>
                                        <c:when test="${schools[node].schoolnature== 1}">国立</c:when>
                                        <c:when test="${schools[node].schoolnature== 2}">私立</c:when>
                                        <c:when test="${schools[node].schoolnature== 3}">公立</c:when>
                                    </c:choose></em></dd>
                                    <dd>建校年份：<em>${schools[node].buldingschooltime}年</em></dd>
                                    <dd>中国教育部认证：<em>  <c:choose>
                                        <c:when test="${schools[node].authentication== 1}">认证</c:when>
                                        <c:when test="${schools[node].authentication== 2}">未认证</c:when>
                                    </c:choose></em></dd>
                                    <dd>人数：<em>${schools[node].peoplecount}人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="/images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>${node+1+page.startNum}</strong>
                            </div>
                            <div class="popularity_time">人气：<span>${schools[node].popularity}</span></div>
                        </div>
                    </a>
                </li>

                    </c:if>
                </c:forEach>
                <%--<li>
                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>--%>
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
                            <a href="/rc/recommend.html?pnow=${page.pageNow+1}&type=${type}" >&rsaquo;</a>
                            <a href="/rc/recommend.html?pnow=${page.pageCount}&type=${type}" >&raquo;</a>
                        </div>
                    </c:when>

                    <c:when test="${page.pageNow== page.pageCount}">
                        <div class="pagination_cont">
                            <a href="/rc/recommend.html?pnow=1&type=${type}">&laquo;</a>
                            <a href="/rc/recommend.html?pnow=${page.pageNow-1}&type=${type}">&lsaquo;</a>
                            <div class="page_num">
                                <span>${page.pageNow}</span>/<span class="disable">${page.pageCount}</span>
                            </div>
                            <a href="#" class="disable" onclick="return false;">&rsaquo;</a>
                            <a href="#" class="disable" onclick="return false;">&raquo;</a>
                        </div>
                    </c:when>


                    <c:otherwise>
                        <div class="pagination_cont">
                            <a href="/rc/recommend.html?pnow=1&type=${type}">&laquo;</a>
                            <a href="/rc/recommend.html?pnow=${page.pageNow-1}&type=${type}">&lsaquo;</a>
                            <div class="page_num">
                                <span>${page.pageNow}</span>/<span class="disable">${page.pageCount}</span>
                            </div>
                            <a href="/rc/recommend.html?pnow=${page.pageNow+1}&type=${type}" >&rsaquo;</a>
                            <a href="/rc/recommend.html?pnow=${page.pageCount}&type=${type}" >&raquo;</a>
                        </div>
                     </c:otherwise>

                </c:choose>





                <p>
                    <span>每页<em>4</em>条</span>
                    <span class="ml10">共<em>${page.nodeCount}</em>条</span>
                </p>
            </div>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学（国立）</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">

                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
            </ul>
            <div class="pagination">
                <div class="pagination_cont">
                    <a href="#">&laquo;</a>
                    <a href="#">&lsaquo;</a>
                    <div class="page_num">
                        <span>29</span>/<span class="disable">29</span>
                    </div>
                    <a href="#" class="disable">&rsaquo;</a>
                    <a href="#" class="disable">&raquo;</a>
                </div>
                <p>
                    <span>每页<em>10</em>条</span>
                    <span class="ml10">共<em>1000</em>条</span>
                </p>
            </div>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学（公立）</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">

                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">

                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
            </ul>
            <div class="pagination">
                <div class="pagination_cont">
                    <a href="#">&laquo;</a>
                    <a href="#">&lsaquo;</a>
                    <div class="page_num">
                        <span>29</span>/<span class="disable">29</span>
                    </div>
                    <a href="#" class="disable">&rsaquo;</a>
                    <a href="#" class="disable">&raquo;</a>
                </div>
                <p>
                    <span>每页<em>10</em>条</span>
                    <span class="ml10">共<em>1000</em>条</span>
                </p>
            </div>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学（私立）</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">

                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
                <li>

                    <a class="recommend_list_item clearfix" href="recommend_detail.jsp">
                        <img src="/images/recommend_list_pic.jpg" width="240" height="180" alt="">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>早稻田大学</span>日本名字</h3>
                                <p><img src="images/address_icon.png" width="12" height="16" alt="地址">日本-东京都-新宿区</p>
                                <dl class="clearfix">
                                    <dd>院校性质：<em>私立</em></dd>
                                    <dd>建校年份：<em>1982年</em></dd>
                                    <dd>中国教育部认证：<em>认证</em></dd>
                                    <dd>人数：<em>53574人</em></dd>
                                </dl>
                            </div>
                            <div class="school_ranking">
                                <p><img src="images/ranking_gray.png" width="16" height="16" alt="排名">CWUR日本大学排名</p>
                                <strong>1</strong>
                            </div>
                            <div class="popularity_time">人气：<span>29830</span></div>
                        </div>
                    </a>
                </li>
            </ul>
            <div class="pagination">
                <div class="pagination_cont">
                    <a href="#">&laquo;</a>
                    <a href="#">&lsaquo;</a>
                    <div class="page_num">
                        <span>29</span>/<span class="disable">29</span>
                    </div>
                    <a href="#" class="disable">&rsaquo;</a>
                    <a href="#" class="disable">&raquo;</a>
                </div>
                <p>
                    <span>每页<em>10</em>条</span>
                    <span class="ml10">共<em>1000</em>条</span>
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
                <button class="online_btn">在线咨询</button>
            </form>
        </div>

    </div>
</div>

<div class="assessment">
    <div class="assessment_cont clearfix">
        <img src="/images/assessment_img.png" width="451" height="387" alt="JAPAN">
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
            <div class="tel"><img src="images/white_tel.png" width="22" height="24" alt="电话">4008-517-517</div>
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
<a class="fixed_ad" href="#"><img src="images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>