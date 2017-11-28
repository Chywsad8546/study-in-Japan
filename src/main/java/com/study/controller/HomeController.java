package com.study.controller;

import com.study.dao.HomeMapper;
import com.study.dao.RecommendSchoolMapper;
import com.study.entity.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Leo on 2017/10/8.
 */
@Controller
public class HomeController {


    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private HomeMapper hm;

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        ModelAndView view = new ModelAndView("home");
       //ModelAndView view = new ModelAndView("mode");
        List<Article>newslist=hm.newslist();
        List<FriendlyLink>meiti=hm.meiti();
        List<FriendlyLink>jigou=hm.jigou();


        Img img=new Img();
        img.setClass1(BannerClassId.class1id);
        List<Img> bannerList=hm.imglist(img);
       /* for (Article item:newslist) {
            System.out.println(item.getId());
        }*/
        for (int i=0;i<bannerList.size();i++){
            Img it= bannerList.get(i);
            it.setImgurl(it.getImgurl().replaceAll("\\.\\.\\/",WebAdress.url));
            bannerList.set(i,it);
          //    System.out.println(bannerList.get(i).getImgurl());
        }

        view.addObject("bannerlist",bannerList);
        view.addObject("newslist",newslist);
        view.addObject("url",WebAdress.url);
        view.addObject("meiti",meiti);
        view.addObject("jigou",jigou);
        logger.trace("Welcome to Study-In-Japan!");
        return view;
    }


    //提交评估
    @RequestMapping(value = "/assess.html")
    public ModelAndView assess(HttpServletRequest request,
                               @RequestParam(value = "ass", defaultValue = "", required = false)String ass) {
        ModelAndView view=new ModelAndView("forward:/");

           String name=request.getParameter("name");
           String phone=request.getParameter("tel");
           Assess assess=new Assess();
           assess.setAname(name);
           assess.setChuli(1);
           assess.setPhone(phone);
           assess.setContent(ass);
           hm.addassess(assess);

       return view;
    }


    /**
     * 精品课程
     * @return
     */
    @RequestMapping(value = "/course.html")
    public  ModelAndView course() {
        ModelAndView view = new ModelAndView("course");
        return view;
    }

    /**
     * 优秀师资
     * @return
     */
    @RequestMapping(value = "/teacher.html")
    public  ModelAndView teacher() {
        ModelAndView view = new ModelAndView("teacher");
        return view;
    }



    @RequestMapping(value = "/recommend_detail.html")
    public  ModelAndView recommendDetail() {
        ModelAndView view = new ModelAndView("recommend_detail");
        return view;
    }

    /**
     * 留学资讯
     * @return
     */
    @RequestMapping(value = "/news.html")
    public  ModelAndView news() {
        ModelAndView view = new ModelAndView("news");
        return view;
    }


}
