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
    <title>精品课程</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/global.css?v=2017">
    <link rel="stylesheet" href="css/course.css?v=2017">
</head>
<body>
<div id="wen" class="header clearfix">
    <div class="header_main clearfix">
        <h1><img src="images/logo.png" width="213" height="61" alt="英才"></h1>
        <ul>
            <li>
                <a href="">
                    首页
                    <p>ホームページ</p>
                </a>
            </li>
            <li class="current">
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

<div class="course_banner" id="fixed_bottom_header">
    <div class="tab_banner_shadow"></div>
    <div class="tabs_item">
        <ul>
            <li id="wenmao" class="current"><a href="javascript:void(0)">文科套餐<span>文科コース</span></a></li>
            <li><a href="javascript:void(0)">理科套餐<span>理科コース</span></a></li>
            <li><a href="javascript:void(0)">全科套餐<span>全科コース</span><img class="course_hot" src="images/course_hot.png" width="28" height="14" alt="hot"></a></li>
            <li id="jingmao"><a href="javascript:void(0)">进学套餐<span>进学コース</span></a></li>
            <li><a href="javascript:void(0)">语言套餐<span>语言コース</span></a></li>
        </ul>
    </div>
</div>

<div class="tabs_cont_box">
    <div class="tabs_cont none">
        <div  class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>上半年文科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <%-- <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考理科数学对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考物理对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考日语对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>留考全科小班辅导课程</p>
                         </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>下半年文科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <%-- <li>
                             <i class="course_list_icon loop"></i>
                             <p>6月留考日语对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>6月留考数学对策冲刺课程</p>
                         </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 13%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>全年文科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一桥大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
    </div>

    <div class="tabs_cont">
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>上半年理科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                       <%-- <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>下半年理科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                       <%-- <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 13%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>全年理科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考理科数学对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考物理对策冲刺课程</p>
                         </li>
                         <li>
                             <i class="course_list_icon loop"></i>
                             <p>11月留考日语对策冲刺课程</p>
                         </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                         <%--<li>
                             <i class="course_list_icon loop"></i>
                             <p>留考全科小班辅导课程</p>
                         </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
    </div>

    <div class="tabs_cont nkone">

        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—上半年全科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:20%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—下半年全科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—全年全科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—全年全科强化套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>

        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—上半年全科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—下半年全科套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一桥大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
        <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—全年全科套餐</span></h3>
        <div class="cont_detail clearfix">
            <div class="course_list" style="width: 26%">
                <h4>留学考试课程</h4>
                <ul>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>留考文科综合科目基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>留考文科数学基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>留考日本语基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>11月留考综合科目对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>11月留考数学对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>11月留考日语对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>6月留考综合科目对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>6月留考数学对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>6月留考日语对策冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>各科视频课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>一对一志望理由书修改</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>一对一面试指导</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>东京大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>京都大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>一桥大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>早稻田大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>庆应义塾大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>上智大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>GMARCH・关关同立大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>其他人气私立大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>名门国公立大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>地方国公立大学校内考课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>小论文面试等综合指导课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon only"></i>
                        <p>习题答疑课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>N1能力考对策课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>N2能力考对策课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>能力考对策课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>N1能力考考前冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>N2能力考考前冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>N5-N4能力考基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>留考15000词汇课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>TOEFL60分基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>TOEFL80分基础课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>TOEIC考前冲刺课程</p>
                    </li>
                    <li>
                        <i class="course_list_icon loop"></i>
                        <p>英语基础课程</p>
                    </li>
                    <%--<li>
                        <i class="course_list_icon loop"></i>
                        <p>留考全科小班辅导课程</p>
                    </li>--%>
                </ul>
            </div>
            <div class="list_cont">
                <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                    <span>课程简介：</span>
                    <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                    <span>适用学员：</span>
                    <p>希望留学日本，有一定日语基础的学员。</p>
                    <span>教学目标：</span>
                    <p>提高学员日语水平，提高应试考试能力。</p>
                </div>
                <div class="cont_right">
                    <p>课次：<em class="font36">90</em>节</p>
                    <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                    <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                    <p>上课地点：日本-东京</p>
                </div>
                <div class="price_fix">
                    <span>获取学费价格</span>
                    <button onclick="xianping()" class="">立即评估</button>
                </div>
            </div>
        </div>
        <p class="course_tip">
            <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
            <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
        </p>
    </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—全年全科强化套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一桥大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>



    </div>

    <div class="tabs_cont none">
        <div  class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—2年名门大学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>安心保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—2年安心进学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门大学保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont" id="jingpinmao">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>理科—2年精品进学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考物理基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考化学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留生物基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考理科数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考物理对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门大学保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>安心保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>

        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—2年名门大学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一桥大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>安心保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—2年安心进学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一桥大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon only"></i>
                            <p>名门大学保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                        <%--<li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>--%>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top: 19%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont" >
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>文科—2年精品进学套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list" style="width: 26%">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科综合科目基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考文科数学基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考日本语基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>11月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考综合科目对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考数学对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>6月留考日语对策冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考全科小班辅导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>京都大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>东京工业大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>早稻田大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>庆应义塾大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>上智大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>GMARCH・关关同立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>其他人气私立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>地方国公立大学校内考课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>小论文面试等综合指导课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>各科视频课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>名门大学保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一对一面试指导</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>一对一志望理由书修改</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考前集中特训课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>安心保证</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>习题答疑课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left" style="margin-left: 20px;margin-top:30%">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>


    </div>

    <div class="tabs_cont none">
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>英语套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>

                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>日语套餐</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N3能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
        </div>
        <div class="course_item_cont">
            <h3><img src="images/course_book_icon.png" width="44" height="46" alt="套餐"><span>语言类强化套</span></h3>
            <div class="cont_detail clearfix">
                <div class="course_list">
                    <h4>留学考试课程</h4>
                    <ul>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N1能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N2能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N3能力考对策课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>N5-N4能力考基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>留考15000词汇课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL60分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEFL80分基础课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>TOEIC考前冲刺课程</p>
                        </li>
                        <li>
                            <i class="course_list_icon loop"></i>
                            <p>英语基础课程</p>
                    </li>
                    </ul>
                </div>
                <div class="list_cont">
                    <div class="cont_left">
                        <span>课程简介：</span>
                        <p>该课程为基础类课程，在于帮助学生完成留考的基础应试复习和突击，提高通过率；为每位学员提供留学考试及语言的所有规划。</p>
                        <span>适用学员：</span>
                        <p>希望留学日本，有一定日语基础的学员。</p>
                        <span>教学目标：</span>
                        <p>提高学员日语水平，提高应试考试能力。</p>
                    </div>
                    <div class="cont_right">
                        <p>课次：<em class="font36">90</em>节</p>
                        <p>上课时间：2017/8/1 至 2018/7/31 <em class="color_red">*</em></p>
                        <p class="font12"><em class="color_red">*</em> 根据学员具体情况定制</p>
                        <p>上课地点：日本-东京</p>
                    </div>
                    <div class="price_fix">
                        <span>获取学费价格</span>
                        <button onclick="xianping()" class="">立即评估</button>
                    </div>
                </div>
            </div>
            <p class="course_tip">
                <span><i class="course_list_icon only"></i>每年度只开设一期课程，课程有效期内可参加一次</span>
                <span><i class="course_list_icon loop"></i>循环滚动开课，课程有效期内课任意参加</span>
            </p>
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

                function xianping() {
                    document.getElementById("tanchuang").removeAttribute("hidden");
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
        <img src="images/online_consultant.png"  width="24" height="22" alt="在线咨询">
        <span>在线咨询</span>
    </div>
    <div class="consult_form">
        <form onsubmit="tijiao()" method="post" action="assess.html">
            <input name="name"  type="text" required="required" placeholder="姓名">
            <input class="mb25" name="tel" required="required" type="tel" placeholder="电话号码" maxlength="11">
            <button type="submit" class="assess_btn">立即评估</button>
            <button  onclick="window.open( 'http://p.qiao.baidu.com/cps/chat?siteId=11483335&userId=24811869','','height=500,width=611,scrollbars=yes,status=yes')" class="online_btn">在线咨询</button>
        </form>
    </div>
</div>
<a class="fixed_ad" href="#"><img src="images/fixed_ad.png" width="90" height="60" alt="2018夏季入学优惠"></a>

<div id="tanchuang" class="assess_popup" hidden="hidden">
    <div class="assess_popup_main">
        <h2>提交评估</h2>
        <form onsubmit="tijiao()" method="post" action="assess.html">
            <div class="input_group clearfix">
                <input class="group_name" name="name" required="required" type="text" placeholder="姓名">
                <input class="group_tel" name="tel" required="required" type="tel" placeholder="电话号码">
            </div>
            <textarea oninput="gbcoun1(this)"  name="ass"  maxlength="100" placeholder="留言"></textarea>
            <p>还可以输入<em id="ping1">100</em>字</p>
            <div class="button_group">
                <button onclick="ext()" class="group_cancel">取消</button>
                <button class="group_submit" type="submit">提交评估</button>
            </div>
        </form>
        <p>专业顾问将尽快与您联系</p>
    </div>
</div>
<script>
    function ext() {
            document.getElementById("tanchuang").setAttribute("hidden","hidden");
    }
       function gbcoun1(item) {
           var pval=item.value.length;
           var sheng=100-pval;
           document.getElementById("ping1").innerHTML=sheng;
       }
</script>
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/main.js"></script>
<script>
    window.onload = function() {
        var from = sessionStorage.getItem("tiao");
        if(from == 'jing') {
            //balabala  要触发的点击事件
            $('#jingmao').click()
            window.location.href='course.html#jingpinmao'
            sessionStorage.setItem("tiao",""); //销毁 from 防止在b页面刷新 依然触发$('#xxx').click()
        }else if (from == 'ming'){
            $('#jingmao').click()
            window.location.href='course.html#wen'
            sessionStorage.setItem("tiao",""); //销毁 from 防止在b页面刷新 依然触发$('#xxx').click()
        }else {
            $('#wenmao').click()
            window.location.href='course.html#wen'
        }
    }

</script>
</body>
</html>