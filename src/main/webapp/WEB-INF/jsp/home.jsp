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
    <title>首页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<div class="header clearfix">
    <div class="header_main clearfix">
        <h1><img src="images/logo.png" width="213" height="61" alt="英才"></h1>
        <ul>
            <li class="current">
                <a href="" target="_blank">
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
                <a href="/teacher.html">
                    优秀师资
                    <p>優秀な教師</p>
                </a>
            </li>
            <li>
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

<div class="swiper-container index_banner">
    <div class="swiper-wrapper">
        <c:forEach var="banner" items="${bannerlist}">
            <div class="swiper-slide"><img src="${banner.imgurl}" width="100%" alt="${banner.title}"></div>
        </c:forEach>
        <%--<div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>
        <div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>
        <div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>--%>
    </div>
    <!-- 分页器 -->
    <div class="swiper-pagination"></div>

    <div class="banner_form">
        <p>免费获取专业评估，专业顾问极速响应</p>
        <form action="" class="form_group clearfix">
            <input class="normal name" type="text" placeholder="姓名">
            <input class="normal tel" type="tel" placeholder="电话号码" maxlength="11">
            <input class="button submit" type="submit" value="立即评估">
            <input class="button inline" type="button" value="在线咨询">
        </form>
    </div>
</div>

<div class="module_bg_white">
    <div class="module_box">
        <i class="module_title_icon advantage"></i>
        <h2>英才进学塾优势  我々の強み</h2>
        <ul class="advantage_box">
            <li>
                <a href="news_detail.html">
                    <div class="advantage_card">
                        <img src="images/advantage_pic1.png" width="212" height="212" alt="亲临日本">
                        <h4>亲临日本</h4>
                        <span>日本に位置する</span>
                        <p>学生将在日本完成所有课程的学习，由英才教师管理学生赴日学习的一切生活学习事宜。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="news_detail.html">
                    <div class="advantage_card">
                        <img src="images/advantage_pic2.png" width="212" height="212" alt="师资优秀">
                        <h4>师资优秀</h4>
                        <span>優秀な教師チーム</span>
                        <p>所有英才教师均为国际水准的金牌教师，经验丰富，有众多成功案例积累的独创课程。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="news_detail.html">
                    <div class="advantage_card">
                        <img src="images/advantage_pic3.png" width="212" height="212" alt="精品小班">
                        <h4>精品小班</h4>
                        <span>少人数教育</span>
                        <p>班级规制，通过对班级规模的限制确保为每一位学员提供周到准确的指导服务。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="news_detail.html">
                    <div class="advantage_card">
                        <img src="images/advantage_pic4.png" width="212" height="212" alt="搭配灵活">
                        <h4>搭配灵活</h4>
                        <span>フレキシブルな教育配置</span>
                        <p>根据学员的不同特点和问题进行个性化指导，为每一个学生找到适合ta的学习方法，实现学生潜力开发的最大化。</p>
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="module_bg_bule">
    <div class="module_box">
        <i class="module_title_icon flow"></i>
        <h2>考学流程  試験と進学の流れ</h2>
        <div class="flow_main">
            <div class="flow_main_item">
                <i class="flow_icon"></i>
                <div>
                    <h3>专业留学顾问<br>免费咨询</h3>
                    <p>由具备多年日本留学行业的资深顾问为您一一解答，只有您想不到，没有我们做不到。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <i class="flow_icon"></i>
                <div>
                    <h3>赴日前备考<br>全套服务</h3>
                    <p>帮助学生订购机票，提供住所房源信息，办理赴日手续，辅助学生选择语言学校，尽己所能为考生来日备考提供便利。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <i class="flow_icon"></i>
                <div>
                    <h3>赴日学习<br>金牌教师精准辅导</h3>
                    <p>通过一对一定制的个性化指导，在知识巩固和应试水平提升以外，会对学生志望理由书的撰写和面试制定详尽的针对性策略，为考生在考试中遇到的实际流程打实铺垫和准备。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <i class="flow_icon"></i>
                <div>
                    <h3>考试/面试</h3>
                    <p>帮助学生报名、准备资料以及考前突模拟等，英才进学塾的往届录取率达到93%以上。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <i class="flow_icon"></i>
                <div>
                    <h3>拿到Offer<br>进入梦想学府</h3>
                    <p>帮助所有英才学子完成考学目标！</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="module_box">
    <i class="module_title_icon case"></i>
    <h2>成功案例  合格実績</h2>
    <div class="carousel_case">
        <div class="swiper-container swiper_case">
            <div class="swiper-wrapper">
                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/case_pic1.png" width="100" height="" alt="刘思垒同学">
                            <span>刘思垒同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>北京林业大学  大四</span></li>
                            <li class="case_item_sort"><em>专业：</em><span>英语</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>东京大学 学際情報学府 学際情報学专业</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N1</span></li>
                            <li class="case_item_sort"><em>GPA成绩：</em><span>3.2</span></li>
                            <li class="case_item_sort"><em>入学季：</em><span>2016.10</span></li>
                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>出身背景好，日语、英语成绩具备，非常配合。</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>GPA不够高，对于申请没有自信，数学工科成绩不理想。</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>快速帮助学生精准分析弱势以及选定导师进行弱势课题的学习，突出学生优势亮点；关心学生状态并协助学生自我调整。</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/case_pic1.png" width="100" height="" alt="刘思垒同学">
                            <span>刘思垒同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>北京林业大学  大四</span></li>
                            <li class="case_item_sort"><em>专业：</em><span>英语</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>东京大学 学際情報学府 学際情報学专业</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N1</span></li>
                            <li class="case_item_sort"><em>GPA成绩：</em><span>3.2</span></li>
                            <li class="case_item_sort"><em>入学季：</em><span>2016.10</span></li>
                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>出身背景好，日语、英语成绩具备，非常配合。</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>GPA不够高，对于申请没有自信，数学工科成绩不理想。</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>快速帮助学生精准分析弱势以及选定导师进行弱势课题的学习，突出学生优势亮点；关心学生状态并协助学生自我调整。</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/case_pic1.png" width="100" height="" alt="刘思垒同学">
                            <span>刘思垒同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>北京林业大学  大四</span></li>
                            <li class="case_item_sort"><em>专业：</em><span>英语</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>东京大学 学際情報学府 学際情報学专业</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N1</span></li>
                            <li class="case_item_sort"><em>GPA成绩：</em><span>3.2</span></li>
                            <li class="case_item_sort"><em>入学季：</em><span>2016.10</span></li>
                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>出身背景好，日语、英语成绩具备，非常配合。</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>GPA不够高，对于申请没有自信，数学工科成绩不理想。</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>快速帮助学生精准分析弱势以及选定导师进行弱势课题的学习，突出学生优势亮点；关心学生状态并协助学生自我调整。</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
            </div>
        </div>
        <div class="swiper-button-next case_btn_next"></div>
        <div class="swiper-button-prev case_btn_prev"></div>
    </div>
    <table>
        <tr>
            <th>学生姓名</th>
            <th>出身院校</th>
            <th>专业</th>
            <th>日语考试</th>
            <th>日语成绩</th>
            <th>英语考试</th>
            <th>英语成绩</th>
            <th>录取院校</th>
            <th>录取院系</th>
            <th>录取专业</th>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
        <tr>
            <td>陈同学</td>
            <td>北京理工大学</td>
            <td>光电工程 电子信息与技术</td>
            <td>N1</td>
            <td>102</td>
            <td>托福</td>
            <td>80</td>
            <td>东京工业大学</td>
            <td>综合理工学研究科</td>
            <td>综合理工学研究科</td>
        </tr>
    </table>
</div>
<div class="module_bg_white">
    <div class="module_box">
        <i class="module_title_icon news"></i>
        <h2>留学资讯  留学の情報</h2>
        <ul class="mb60">
            <c:forEach var="item" items="${newslist}">
                <li>
                    <a href="news_detail.html">
                        <div class="side_news_card">
                            <img src="/images/${item.imgurl}.jpg" width="320" height="180" alt="">
                            <h4>${item.ctitle}</h4>
                            <p>${item.description}</p>
                            <div class="eye_num_time clearfix">
                                <span class="jfl"><img class="new_eye_num" src="/images/eye_num_icon.png" width="17" height="12" alt="查看次数">${item.hits}</span>
                                <span class="jfr">${item.updatetime}</span>
                            </div>
                        </div>
                    </a>
                </li>
            </c:forEach>

          <%--  <li>
                <a href="news_detail.html">
                    <div class="side_news_card">
                        <img src="images/recommend_list_pic.jpg" width="320" height="180" alt="">
                        <h4>日本经营学专业优势介绍</h4>
                        <p>日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势</p>
                        <div class="eye_num_time clearfix">
                            <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">1024</span>
                            <span class="jfr">2017-10-01 10:33</span>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="news_detail.html">
                    <div class="side_news_card">
                        <img src="images/recommend_list_pic.jpg" width="320" height="180" alt="">
                        <h4>日本经营学专业优势介绍</h4>
                        <p>日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势介绍日本经营学专业优势</p>
                        <div class="eye_num_time clearfix">
                            <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">1024</span>
                            <span class="jfr">2017-10-01 10:33</span>
                        </div>
                    </div>
                </a>
            </li>--%>
        </ul>
        <a class="more_link" href="/news/morenews.html">更多资讯</a>
    </div>
</div>
<div class="module_box">
    <i class="module_title_icon answer"></i>
    <h2>Q&A</h2>
    <ul class="mb60">
        <li>
            <a href="#">
                <div class="answer_card">
                    <p><i></i>考取日本大学，需要准备哪些考试呢？</p>
                    <p class="mt15"><i></i>考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？</p>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="answer_card">
                    <p><i></i>考取日本大学，需要准备哪些考试呢？</p>
                    <p class="mt15"><i></i>考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？</p>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="answer_card">
                    <p><i></i>考取日本大学，需要准备哪些考试呢？</p>
                    <p class="mt15"><i></i>考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？考取日本大学，需要准备哪些考试呢？</p>
                </div>
            </a>
        </li>
    </ul>
    <a class="more_link" href="#">更多解答</a>
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

<div class="cooperation">
    <div class="media">
        <h2>合作媒体  協力メディア</h2>
        <ul>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
        </ul>
    </div>
    <div class="institution">
        <h2>合作机构  協力組織</h2>
        <ul>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
            <li><img src="" alt="" width="200" height="100"></li>
        </ul>
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

<script src="js/swiper-3.4.2.min.js"></script>
<script>
    var mySwiper = new Swiper ('.index_banner', {
        autoplay: 3000,
        loop: true,

        // 分页器
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
    var CaseSwiper = new Swiper('.swiper_case', {
        loop : true,
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        nextButton: '.case_btn_next',
        prevButton: '.case_btn_prev',
        slidesPerView: 'auto',
        coverflow: {
            rotate: 0,// 旋转的角度
            stretch: 82,// 拉伸   图片间左右的间距和密集度
            depth: 150,// 深度   切换图片间上下的间距和密集度
            modifier: 2,// 修正值 该值越大前面的效果越明显
            slideShadows : false// 页面阴影效果
        }
    });
</script>
</body>
</html>