package com.study.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Leo on 2017/10/8.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        ModelAndView view = new ModelAndView("home");
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

    /**
     * 推荐名校
     * @return
     */
    @RequestMapping(value = "/recommend.html")
    public  ModelAndView recommend() {
        ModelAndView view = new ModelAndView("recommend");
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

    /**
     * 资讯详情
     * @return
     */
    @RequestMapping(value = "/news_detail.html")
    public ModelAndView newDetail() {
        ModelAndView view = new ModelAndView("news_detail");
        return view;
    }
}
