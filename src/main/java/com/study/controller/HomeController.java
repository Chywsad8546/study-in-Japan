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
}
