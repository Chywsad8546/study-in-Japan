package com.study.dao;

import com.study.entity.Article;
import com.study.entity.ImformationFinal;
import com.study.entity.Img;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/10/20.
 */
public interface HomeMapper {
    List<Img> imglist(@Param("img")Img img);
    List<Article> newslist(@Param("im")ImformationFinal im);
}
