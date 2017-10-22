package com.study.dao;

import com.study.entity.Article;
import com.study.entity.Page;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/10/17.
 */
public interface NewsMapper {
    List<Article> newslist(@Param("article")Article article, @Param("page")Page page);
    int newscount(@Param("article")Article article);
}
