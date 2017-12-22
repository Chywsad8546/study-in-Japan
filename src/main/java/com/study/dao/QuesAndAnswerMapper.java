package com.study.dao;

import com.study.entity.Page;
import com.study.entity.QuesAndAnswer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by 18710 on 2017/12/15.
 */
public interface QuesAndAnswerMapper {
    List<QuesAndAnswer> quesList(@Param("page")Page page);
    int queCount();
}
