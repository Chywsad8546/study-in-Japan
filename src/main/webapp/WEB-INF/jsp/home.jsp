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
    <title>首页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="css/global.css?v2016">
    <link rel="stylesheet" href="css/index.css?v=20">
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

<div class="swiper-container index_banner">
    <div class="swiper-wrapper">
        <c:forEach var="banner" items="${bannerlist}">
            <div class="swiper-slide"><a target="_blank" href="${banner.links}"><img src="${banner.imgurl}" width="100%" alt="${banner.title}"></a></div>
        </c:forEach>
        <%--<div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>
        <div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>
        <div class="swiper-slide"><img src="/images/index_banner_pic1.jpg" width="100%" alt="明德"></div>--%>
    </div>
    <!-- 分页器 -->
    <div class="swiper-pagination"></div>

    <div class="banner_form">
        <p>免费获取专业评估，专业顾问极速响应</p>
        <form onsubmit="tijiao()" action="assess.html" class="form_group clearfix">
            <input required="required" class="normal name" type="text" placeholder="姓名">
            <input required="required" class="normal tel" type="tel" placeholder="电话号码" maxlength="11">
            <input class="button submit" type="submit" value="立即评估">
           <input onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')" class="button inline" type="button" value="在线咨询">
            <script>
            </script>
        </form>
    </div>
</div>

<div class="module_bg_white">
    <div class="module_box">
        <i class="module_title_icon advantage"></i>
        <h2>英才进学塾优势  我々の強み</h2>
        <ul class="advantage_box">
            <li>
                <a href="javascript:void(0)" onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')">
                    <div class="advantage_card">
                        <img src="images/advantage_pic1.png" width="212" height="212" alt="亲临日本">
                        <h4>亲临日本</h4>
                        <span>日本に位置する</span>
                        <p>学生将在日本完成所有课程的学习，由英才教师管理学生赴日学习的一切生活学习事宜。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="teacher.html">
                    <div class="advantage_card">
                        <img src="images/advantage_pic2.png" width="212" height="212" alt="师资优秀">
                        <h4>师资优秀</h4>
                        <span>優秀な教師</span>
                        <p>所有英才教师均为国际水准的金牌教师，经验丰富，有众多成功案例积累的独创课程。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="course.html">
                    <div class="advantage_card">
                        <a href="course.html" onclick="tiaojing()"><img src="images/advantage_pic3.png" width="212" height="212" alt="精品小班"></a>
                        <h4>精品小班</h4>
                        <span>少人数教育</span>
                        <p>班级规制，通过对班级规模的限制确保为每一位学员提供周到准确的指导服务。</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="rc/recommend.html">
                    <div class="advantage_card">
                        <a href="course.html" onclick="tiaoming()"><img src="images/advantage_pic4.png" width="212" height="212" alt="搭配灵活"></a>
                        <h4>搭配灵活</h4>
                        <span>フレキシブルな教育配置/span>
                        <p>根据学员的不同特点和问题进行个性化指导，为每一个学生找到适合ta的学习方法，实现学生潜力开发的最大化。</p>
                        </span></div>
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
                <a href="javascript:void(0)" onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')"><i class="flow_icon"></i></a>
                <div>
                    <h3>专业留学顾问<br>免费咨询</h3>
                    <p>由具备多年日本留学行业的资深顾问为您一一解答，只有您想不到，没有我们做不到。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <a href="javascript:void(0)" onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')"><i class="flow_icon"></i></a>
                <div>
                    <h3>赴日前备考<br>全套服务</h3>
                    <p>帮助学生订购机票，提供住所房源信息，办理赴日手续，辅助学生选择语言学校，尽己所能为考生来日备考提供便利。</p>
                </div>
            </div>
            <div class="flow_main_item">
                <a href="course.html"><i class="flow_icon"></i></a>
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
               <a href="rc/recommend.html"> <i class="flow_icon"></i></a>
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
                            <img src="images/wustudent.png" width="100" height="" alt="权同学">
                            <span>吴同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>高中毕业</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>早稻田 创造理工学部</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N2</span></li>
                            <li class="case_item_sort"><em>其他科目：</em><span>基础牢固</span></li>
                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>日语基础较好，其他科目基础不错</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>择校十分敷衍</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>分析学生强弱项并进行针对辅导</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/yanstudent.png" width="100" height="" alt="廖同学">
                            <span>廖同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>高中毕业</span></li>
                            <li class="case_item_sort"><em>其他科目：</em><span>较好</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>早稻田 基干理工学部</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N2</span></li>
                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>三科成绩比较平均，自身也非常努力</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>目标比较模糊</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>与学生多次面谈确定将来志向，并针对留考以及校内考帮助学生提高成绩</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
                <div class="swiper-slide case_item">
                <div class="clearfix">
                    <p>
                        <img src="images/quanstudent.png" width="100" height="" alt="权同学">
                        <span>权同学</span>
                    </p>
                    <ul>
                        <li class="case_item_sort"><em>学生情况：</em><span>高中毕业</span></li>
                        <li class="case_item_sort"><em>其他科目：</em><span>较弱</span></li>
                        <li class="case_item_sort"><em>录取院校：</em><span>早稻田 创造理工学部</span></li>
                        <li class="case_item_sort"><em>日语：</em><span>N2</span></li>

                    </ul>
                </div>
                <hr>
                <ul>
                    <li class="case_item_sort"><em>优势：</em><span>由于喜欢日本偶像日语学习非常积极</span></li>
                    <li class="case_item_sort"><em>劣势：</em><span>除了日语其他科目较差</span></li>
                    <li class="case_item_sort"><em>英才辅导：</em><span>发挥该学生自身优势，提高日语成绩，针对志向制定辅导计划</span></li>
                </ul>
                <div class="mask"></div>
            </div>

                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/xiaostudent.png" width="100" height="" alt="肖同学">
                            <span>肖同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>高中毕业</span></li>
                            <li class="case_item_sort"><em>其他科目：</em><span>很好</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>早稻田 政治经济学部</span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N1</span></li>

                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>在国内已确定留学计划，自学过留考科目</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>缺少做题技巧</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>该同学基础牢固，主要教授留考以及校内考的做题技巧</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
                <div class="swiper-slide case_item">
                    <div class="clearfix">
                        <p>
                            <img src="images/tianstudent.png" width="100" height="" alt="田同学">
                            <span>田同学</span>
                        </p>
                        <ul>
                            <li class="case_item_sort"><em>学生情况：</em><span>高中毕业</span></li>
                            <li class="case_item_sort"><em>其他科目：</em><span>中等</span></li>
                            <li class="case_item_sort"><em>录取院校：</em><span>明治大学 商学部  </span></li>
                            <li class="case_item_sort"><em>日语：</em><span>N2</span></li>

                        </ul>
                    </div>
                    <hr>
                    <ul>
                        <li class="case_item_sort"><em>优势：</em><span>接受能力高，语感较好</span></li>
                        <li class="case_item_sort"><em>劣势：</em><span>对日语以外的科目学习欲望较低</span></li>
                        <li class="case_item_sort"><em>英才辅导：</em><span>分析学生强弱项并进行针对辅导</span></li>
                    </ul>
                    <div class="mask"></div>
                </div>
            </div>
        </div>
        <div class="swiper-button-next case_btn_next"></div>
        <div class="swiper-button-prev case_btn_prev"></div>
    </div>
    <table style="width: 1200px">
        <tr>
            <th>刘同学</th>
            <th>大学</th>
            <th>留考日语</th>
            <th>能力考</th>
            <th>英语</th>
            <th>录取学部</th>
            <th>学科</th>
        </tr>
        <tr>
            <th>张同学</th>
            <td>青山学院大学</td>
            <td>311</td>
            <td>n1</td>
            <td>---</td>
            <td>社会情报</td>
            <td>社会情报</td>
        </tr>
        <tr>
            <th>陈同学</th>
            <td>中央大学</td>
            <td>299 </td>
            <td>---</td>
            <td>TOEFL60</td>
            <td>经济</td>
            <td>国际经济</td>
        </tr>
        <tr>
            <th>肖同学</th>
            <td>中央大学</td>
            <td>296</td>
            <td>---</td>
            <td>TOEFL61</td>
            <td>经济</td>
            <td>经济</td>
        </tr>
        <tr>
            <th>李同学</th>
            <td>明治大学</td>
            <td>305</td>
            <td>n1</td>
            <td>TOEFL75</td>
            <td>商</td>
            <td>商</td>
        </tr>
        <tr>
            <th>王同学</th>
            <td>同志社大学</td>
            <td>287</td>
            <td>n2</td>
            <td>---</td>
            <td>社会</td>
            <td>产业关系</td>
        </tr>
        <tr>
            <th>赵同学</th>
            <td>立命馆大学</td>
            <td>316</td>
            <td>n1</td>
            <td>---</td>
            <td>产业社会</td>
            <td>現代社会-メディア社会</td>
        </tr>
        <tr>
            <th>孙同学</th>
            <td>立命馆大学</td>
            <td>273</td>
            <td>n2</td>
            <td>TOEFL52</td>
            <td>理工</td>
            <td>環境システム工</td>
        </tr>
        <tr>
            <th>周同学</th>
            <td>法政大学 </td>
            <td>319</td>
            <td>n1</td>
            <td>----</td>
            <td>经济</td>
            <td>经济</td>
        </tr>
        <tr>
            <th>沈同学</th>
            <td>法政大学</td>
            <td>316</td>
            <td>n1</td>
            <td>TOEFL80</td>
            <td>国际文化 </td>
            <td>国际文化 </td>
        </tr>
        <tr>
            <th>徐同学</th>
            <td>秋田大学</td>
            <td>296</td>
            <td>n1</td>
            <td>----</td>
            <td>教育文化</td>
            <td>地域文化-地域社会</td>
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
                    <a href="news/newsdetail.html?id=${item.id}">
                        <div class="side_news_card ">
                            <img src="${url}${item.imgurl}" width="320" height="180" alt="">
                            <h4 style=" color:#66647D;">${item.title}</h4>
                            <p>${item.description}</p>
                            <div class="eye_num_time clearfix">
                                <span class="jfl"><img class="new_eye_num" src="images/eye_num_icon.png" width="17" height="12" alt="查看次数">${item.hits}</span>
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
        <a class="more_link" href="news/morenews.html">更多资讯</a>
    </div>
</div>
<div class="module_box">
    <i class="module_title_icon answer"></i>
    <h2>Q&A</h2>
    <ul class="mb60">
        <li>

                <div class="answer_card" style="width: 300px">
                    <p><i></i>留学需要提前多长时间准备？</p>
                    <p class="mt15"><i></i>至少提前半年才不会手忙脚乱哦（笑）</p>
                </div>

        </li>
        <li>
                <div class="answer_card" style="width: 300px">
                    <p><i></i>去留学必须要上塾吗？</p>
                    <p class="mt15"><i></i>答案是肯定的，塾针对进学方向进行辅导，如有进学意向的学子在塾中可以得到相关考试的辅导与各项考试相关信息（如各大学科目偏重取向）等多项优势。塾中课程学习速度较快，可以在较短时间内完成课程，考入理想学府。且塾中学习氛围更好，学习更有动力。</p>
                </div>
        </li>
        <li>
                <div class="answer_card" style="width: 300px">
                    <p><i></i>塾的上课时间是什么时候？会不会和语言学校冲突？</p>
                    <p class="mt15"><i></i>塾上课的时间一般为平日的六点以后与周末，不会与语言学校冲突。平日其他时间也开放自习室，欢迎同学们来自习。</p>
                </div>
        </li>

    </ul>
    <a class="more_link" href="questionAndAnswer.html">更多解答</a>
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

<div class="cooperation">
    <div class="media">
        <h2>合作媒体  協力メディア</h2>
        <ul>
            <c:forEach items="${meiti}" var="item">
                    <li>
                        <a rel="nofollow"  href="${item.webAddress}">
                        <img src="${url}${item.webLogo}" alt="${item.webTitle}" width="200" height="58">
                        </a>
                    </li>
            </c:forEach>

        </ul>
    </div>
    <div class="institution">
        <h2>合作机构  協力組織</h2>
        <ul>
            <c:forEach items="${jigou}" var="item">
                <li>
                    <a rel="nofollow" href="${item.webAddress}">
                    <img src="${url}${item.webLogo}" alt="${item.webTitle}" width="200" height="65">
                    </a>
                </li>
            </c:forEach>
        </ul>
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
    
    function tiaojing() {
        sessionStorage.setItem("tiao","jing");
         return true;
    }
    function tiaoming() {
        sessionStorage.setItem("tiao","ming");
        return true;
    }

</script>
<%--<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?52d04642571a502b8b15e7f9f15caa91";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>--%>

</body>
</html>