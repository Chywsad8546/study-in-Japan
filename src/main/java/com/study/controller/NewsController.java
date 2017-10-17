package com.study.controller;

import com.study.dao.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 18710 on 2017/10/17.
 */
@RequestMapping("/news")
@Controller
public class NewsController {
    @Autowired
    private NewsMapper nm;

    @RequestMapping(value = "/.html" )
    public ModelAndView recommend( ) {
          ModelAndView modelAndView=new ModelAndView();


          return modelAndView;
    }

}
