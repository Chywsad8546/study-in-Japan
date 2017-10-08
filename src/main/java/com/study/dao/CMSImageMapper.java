package com.study.dao;

import com.study.entity.CMSImage;

public interface CMSImageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CMSImage record);

    int insertSelective(CMSImage record);

    CMSImage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CMSImage record);

    int updateByPrimaryKey(CMSImage record);
}