package com.qf.oa.service.impl;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.service.IBaseService;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
public abstract class BaseServiceImpl<T> implements IBaseService<T> {
    public abstract IBaseDao<T> getDao();

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return getDao().deleteByPrimaryKey(id);
    }

    @Override
    public int insert(T t) {
        return getDao().insert(t);
    }

    @Override
    public int insertSelective(T t) {
        return getDao().insertSelective(t);
    }

    @Override
    public T selectByPrimaryKey(Integer id) {
        return getDao().selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(T t) {
        return getDao().updateByPrimaryKeySelective(t);
    }

    @Override
    public int updateByPrimaryKey(T t) {
        return getDao().updateByPrimaryKey(t);
    }
}
