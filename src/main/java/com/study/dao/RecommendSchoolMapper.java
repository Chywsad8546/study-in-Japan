package com.study.dao;

import com.study.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/10/9.
 */
public interface RecommendSchoolMapper {
      int nodecount(@Param("type")int type);
    List<School> schoollist(@Param("school") School school, @Param("page")Page page);
    School schoolinfo(@Param("id") int id);
    Exchangerate exchangerate(@Param("id")int id);
    Tuition tuition(@Param("id")int id);
    double cjrate(@Param("id")int id);
    List<Integer>allschoolid();
   List<Schoolimg>schoolimg(int sid);
}
