package com.qf.oa.service;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
public interface IBaseService<T> {
    int deleteByPrimaryKey(Integer id);

    int insert(T t);

    int insertSelective(T t);

    T selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(T t);

    int updateByPrimaryKey(T t);
}
