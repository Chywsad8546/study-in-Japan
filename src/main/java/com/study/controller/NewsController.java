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
        //System.out.println(nodeCount);
        pg.setNodeCount(nodeCount);
        pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);

        List<Article>articlelist=nm.newslist(article,pg);
          for (int i=0;i<articlelist.size();i++){
             Article it= articlelist.get(i);
             it.setImgurl(it.getImgurl().replaceAll("\\.\\.\\/",WebAdress.url));
             articlelist.set(i,it);
            //  System.out.println(articlelist.get(i).getImgurl());
          }

              modelAndView.addObject("type",type);
              modelAndView.addObject("page",pg);
              modelAndView.addObject("articlelist",articlelist);
             // modelAndView.addObject("url", WebAdress.url);

          return modelAndView;
    }

    @RequestMapping(value = "/newsdetail.html" )
    public ModelAndView newsdetail(HttpServletRequest request){
             ModelAndView view=new ModelAndView("news_detail");
           int id=Integer.parseInt(request.getParameter("id"));
           int hitadd=nm.hitadd(id);
           Article article=nm.newsdetail(id);
         article.setImgurl(article.getImgurl().replaceAll("\\.\\.\\/",WebAdress.url));

         List<Article>renews=nm.renews();
        for (int i=0;i<renews.size();i++){
            Article it= renews.get(i);
            it.setImgurl(it.getImgurl().replaceAll("\\.\\.\\/",WebAdress.url));
            renews.set(i,it);
            //  System.out.println(articlelist.get(i).getImgurl());
        }
           view.addObject("article",article);
           view.addObject("url", WebAdress.url);
           view.addObject("renews",renews);
return view;
    }

}
