package com.study.controller;

import com.study.dao.RecommendSchoolMapper;
import com.study.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by 18710 on 2017/10/9.
 */
@RequestMapping("/rc")
@Controller
public class RecommendController {
    @Autowired
    private RecommendSchoolMapper rc;
    /**
     * 推荐名校
     * @return
     */
    @RequestMapping(value = "/recommend.html")
    public ModelAndView recommend(HttpServletRequest request,
                                  @RequestParam(value = "pnow", defaultValue = "1", required = false) int pagenow,
                                  @RequestParam(value = "type", defaultValue = "0", required = false) int type) {
        ModelAndView view = new ModelAndView("recommend");

        Page pg=new Page();
        pg.setPageNow(pagenow);
        pg.setStartNum((pagenow-1)*pg.getAvgPageCount());
        int nodeCount=rc.nodecount(type);
        pg.setNodeCount(nodeCount);
        pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);

        School school =new School();
        school.setSchoolnature(type);
        List<School> schools=rc.schoollist(school,pg);

        view.addObject("type",type);
        view.addObject("schools",schools);
        view.addObject("page",pg);
        view.addObject("url", WebAdress.url);



        return view;
    }


    /**
     * 资讯详情
     * @return
     */
    @RequestMapping(value = "/recommend_detail.html")
    public ModelAndView newDetail(HttpServletRequest request) {
        ModelAndView view = new ModelAndView("recommend_detail");
        int id=Integer.parseInt(request.getParameter("id"));
        //System.out.println(id);
        School school=rc.schoolinfo(id);
        Tuition tuition=rc.tuition(id);
        List<Schoolimg>schoolimgs=rc.schoolimg(id);
        Integer rid=Integer.valueOf(id);
        List<Integer>allschoolid=rc.allschoolid();
        allschoolid.remove(rid);

        int schoolidcount=allschoolid.size();
       // System.out.println(schoolidcount);

        //用suiji方法递归 放入数组
        int schoolrandom[]=new int[4];
        //int rerandoms[]= new int[4];
        for (int i=0;i<schoolrandom.length;i++){
            schoolrandom[i]=suiji(schoolrandom,schoolidcount);
            //System.out.println("最终"+schoolrandom[i]);
        }

        //最终随机的4个值
        int sidcount[]=new int[4];
        for (int i=0;i<schoolrandom.length;i++) {
            sidcount[i]=allschoolid.get(schoolrandom[i]);
            //System.out.println("最终"+sidcount[i]);
        }

        List<School> schoolre=new ArrayList<School>();
        for (int i=0;i<4;i++){
            schoolre.add(rc.schoolinfo(sidcount[i]));
        }



        double rate=rc.cjrate(1);

        view.addObject("school",school);
        view.addObject("tuition",tuition);
        view.addObject("rate",rate);
        view.addObject("schoolre",schoolre);
        view.addObject("url",WebAdress.url);
        view.addObject("schoolsimg",schoolimgs);
        return view;
    }




      public int suiji(int nn[],int count){
          Random random = new Random();
          int rnum = random.nextInt(count);
         // System.out.println("随机:"+rnum);
          if (rnum==nn[0]){
              //System.out.println("if0");
              rnum=suiji(nn,count);
          }else if (rnum==nn[1]){
              //System.out.println("if1");
              rnum=suiji(nn,count);
          }else if (rnum==nn[2]){
              //System.out.println("if2");
              rnum=suiji(nn,count);
          } else if (rnum==nn[3]) {
             // System.out.println("if3");
              rnum=suiji(nn,count);
          }

          return rnum;
      }





    }

