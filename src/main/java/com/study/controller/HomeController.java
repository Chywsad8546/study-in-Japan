package com.study.controller;

import com.study.dao.RecommendSchoolMapper;
import com.study.entity.Page;
import com.study.entity.School;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
     * 留学资讯
     * @return
     */
    @RequestMapping(value = "/news.html")
    public  ModelAndView news() {
        ModelAndView view = new ModelAndView("news");
        return view;
    }


}
