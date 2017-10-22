package com.study.controller;

import com.study.dao.HomeMapper;
import com.study.dao.RecommendSchoolMapper;
import com.study.entity.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

        List<Article>newslist=hm.newslist(new ImformationFinal());


        Img img=new Img();
        img.setClass1(41);
        List<Img> bannerList=hm.imglist(img);
        for (Article item:newslist) {
            System.out.println(item.getId());
        }
        view.addObject("bannerlist",bannerList);
        view.addObject("newslist",newslist);

        logger.trace("Welcome to Study-In-Japan!");
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
