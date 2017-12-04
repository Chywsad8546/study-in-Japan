package com.study.dao;

import com.study.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/10/20.
 */
public interface HomeMapper {
    List<Img> imglist(@Param("img")Img img);
    List<Article> newslist();
    List<FriendlyLink>meiti();
    List<FriendlyLink>jigou();
    int addassess(@Param("assess")Assess assess);
    List<Erweima>erweilist();
}
