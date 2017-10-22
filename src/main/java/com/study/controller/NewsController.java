package com.study.controller;

import com.study.dao.NewsMapper;
import com.study.entity.Article;
import com.study.entity.Page;
import com.study.entity.WebAdress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 18710 on 2017/10/17.
 */
@RequestMapping("/news")
@Controller
public class NewsController {
    @Autowired
    private NewsMapper nm;

    @RequestMapping(value = "/morenews.html" )
    public ModelAndView recommend( @RequestParam(value = "pnow", defaultValue = "1", required = false)int pagenow,
                                   @RequestParam(value = "type", defaultValue = "0", required = false)int type
                                                                                                               ) {


          ModelAndView modelAndView=new ModelAndView("news");

          Article article=new Article();
          article.setClass2(type);


          Page pg=new Page();
        pg.setPageNow(pagenow);
        pg.setStartNum((pagenow-1)*pg.getAvgPageCount());
        int nodeCount=nm.newscount(article);
        System.out.println(nodeCount);
        pg.setNodeCount(nodeCount);
        pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);

        List<Article>articlelist=nm.newslist(article,pg);

              modelAndView.addObject("type",type);
              modelAndView.addObject("page",pg);
              modelAndView.addObject("articlelist",articlelist);
              modelAndView.addObject("url", WebAdress.url);

          return modelAndView;
    }

}
