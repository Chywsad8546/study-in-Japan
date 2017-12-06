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
    <link rel="stylesheet" href="css/news_recommend.css?v=2017">
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
           <li class="current"><a href="javascript:void(0)">一</a></li>
            <li><a href="javascript:void(0)">二</a></li>
            <li><a href="javascript:void(0)">三</a></li>
            <li><a href="javascript:void(0)">四</a></li>
        </ul>
    </div>
</div>

<div class="tabs_cont_box clearfix">
    <div class="tabs_cont_height">
        <div class="tabs_cont">
            <ul>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>1.塾是什么？</span></h3>
                                <p style="font-size: 16px">塾是辅导来日学子考入大学/大学院所必要课程、加强学生各项能力的培训机构，包括了留考EJU(日语、文理综、数学）、日语能力考（JLPT）、英语、各大学校内考、各大学面试与大学院专业课等多项课程辅导。同时也是为来日学子提供第一手考学有效信息，并且针对个人情况为其学习与进学方向制定计划的咨询机构。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>2.去留学必须要上塾吗？</span></h3>
                                <p style="font-size: 16px">答案是肯定的，塾针对进学方向进行辅导，如有进学意向的学子在塾中可以得到相关考试的辅导与各项考试相关信息（如各大学科目偏重取向）等多项优势。塾中课程学习速度较快，可以在较短时间内完成课程，考入理想学府。且塾中学习氛围更好，学习更有动力。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>3.塾的上课时间是什么时候？会不会和语言学校冲突？</span></h3>
                                <p style="font-size: 16px">塾上课的时间一般为平日的六点以后与周末，不会与语言学校冲突。平日其他时间也开放自习室，欢迎同学们来自习。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>4.上塾周末休息吗？</span></h3>
                                <p style="font-size: 16px">在考学的不同阶段所选择的课程有所不同，上课的时间也有不同。若是在留考对策阶段周末就没有时间就休息了，但在校内考对策阶段课程较少，自由时间相对较多。【不过即使是自由时间也得准备报考材料和完成作业，真正的休息时间是拿到录取通知书以后（笑）】</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>5.在日本生活中有困难塾会帮助解决吗？</span></h3>
                                <p style="font-size: 16px">在分班后有任何生活上的问题都可以问班主任，班主任老师会尽全力帮你的！</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>6.上塾有没有作业？</span></h3>
                                <p style="font-size: 16px">答案是有的，因为课堂练习时间有限，需要同学们通过家庭作业来巩固知识与熟练技巧。另外，写志望理由书等的报考材料准备性质的“家庭作业”也是不可避免的。</p>
                            </div>
                        </div>
                    </a>
                </li>

            </ul>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>7.塾和语言学校有什么区别？</span></h3>
                                <p style="font-size: 16px">语言学校主要偏重于日语的学习和语感的培养，学习速度较慢，但可以给学生提供留学签证。语言学校中关于留考与校内考辅导较少，无法满足学生考学需要，必须另行准备。塾主要是以对学生升学各项考试进行辅导，短时间内提高学生语言能力为目的，并为学生提供第一手考学信息，助学生考入理想学府。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>8.留学需要提前多长时间准备？</span></h3>
                                <p style="font-size: 16px">至少提前半年才不会手忙脚乱哦（笑）</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>9.日本留学考试的考试科目是什么？</span></h3>
                                <p style="font-size: 16px">留考日语（文理通科）、综合科目（文科）、理化生三选二（理科）、数学Ⅰ（文科）、数学Ⅱ（理科）</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>10.留学生考试是在什么时候？</span></h3>
                                <p style="font-size: 16px">留学生考试在每年的6月与11月各有一次，一年共两次</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>11.能参加几次留学生考试？如果没考上可以继续考吗？</span></h3>
                                <p style="font-size: 16px">在日期间内可以多次参加留学生考试，成绩会以报考学校时提交的成绩为标准判定是否录取。另外，留考分数足够高还可以拿到奖学金的哦（笑）。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>12.学文科好还是理科好？</span></h3>
                                <p style="font-size: 16px">各有千秋，日本在文科与理科两方面都有闪光点。但因为“经营”“经济”等热门学科多为文科学科，且国内理科生来日本转文影响较小，文科人数较多。</p>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>13.在日本可以打工吗？</span></h3>
                                <p style="font-size: 16px">可以。取得“资格外活动许可”后每周可以打工28小时，但打工会影响到学习，所以考学期间不推荐打工。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>14.在日本考大学需要考英语吗？</span></h3>
                                <p style="font-size: 16px">需要。日本许多大学报考都是需要托福或托业英语成绩，校内考也会有考英语，不过要求不是那么高。也有一部分大学是不需要英语就可以报考的（如学习院大学）。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>15.留学需要的费用是多少？</span></h3>
                                <p style="font-size: 16px">言学校学费平均70万日元一年，国公立大学学费50万日元左右一年,私立大学理科学费150万左右日元一年，私立大学文科学费120万左右一年。在加上生活费平均每个月一万元人民币。一年下来平均15万到20万人民币。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>16.一般国公立大学对于留考要求多少分数？</span></h3>
                                <p style="font-size: 16px">各个国公立大学的各个学科要求分数也都有不同，不过普遍比私立大学要求分数高。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>17.如果参加了塾，分数怎么能提到理想的分数？</span></h3>
                                <p style="font-size: 16px">按时参加课程并按时完成作业，随时与班主任老师沟通修正学习计划。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>18.保证班是什么？如果没考上怎么办？</span></h3>
                                <p style="font-size: 16px">保证班是能保证学生考上日本TOP50的大学，如果考不上可以退款或免费再学一年</p>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tabs_cont none">
            <ul>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>19.日本安全吗？</span></h3>
                                <p style="font-size: 16px">东京是全世界犯罪率最低的城市之一，且国民都很遵守规则，很安全。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>20.留学毕业之后可以留在日本工作吗？</span></h3>
                                <p style="font-size: 16px">毕业后可以和选择在日本就业，并且近些年中资企业进驻日本，对于留学生雇员需求数量增加。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>21.可以帮助找住宿的地方吗？</span></h3>
                                <p style="font-size: 16px">可以，住房方面会提供帮助。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>22.去日本留学有什么要求吗，包括学历什么的？</span></h3>
                                <p style="font-size: 16px">考大学需要高中或同等学历，大学院需要大学本科学历，专科可以考的大学较少。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>23.留学生考试对日语有什么要求吗？</span></h3>
                                <p style="font-size: 16px">没有底限，都可以参加。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>24.日本留学对年龄有要求吗？</span></h3>
                                <p style="font-size: 16px">没有要求，经常还有70，80岁的爷爷奶奶上学呢（笑）</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>25.报了日语留考（EJU）课程还需要参加能力考（JLPT）课程吗？</span></h3>
                                <p style="font-size: 16px">需要，日语留考主要考察的是大学内听课的能力，能力考考察的综合的日语能力，所以两个考试都有参加的必要。</p>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a class="recommend_list_item clearfix" href="javascript:void(0)">
                        <div class="recommend_item_cont clearfix">
                            <div class="school_msg">
                                <h3><span>26.如有能力考成绩能上大学吗</span></h3>
                                <p style="font-size: 16px"> 有些大学是可以用能力考报考的，但数量很少且不如留考有说服力，所以如果是以进学为目的，用留考成绩报考较好。</p>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="side_assess_box">
        <div class="side_assess_main" id="side_assess_fixed">
            <h2>免费评估</h2>
            <form action="">
                <input type="text" placeholder="姓名">
                <input class="mb25" type="tel" placeholder="电话号码">
                <button class="assess_btn">立即评估</button>
                <button class="online_btn"  onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')">在线咨询</button>
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