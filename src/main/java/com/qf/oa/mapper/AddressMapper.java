package com.qf.oa.mapper;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Address;

import java.util.List;

public interface AddressMapper extends IBaseDao<Address> {
    int deleteByPrimaryKey(Integer id);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    List<Address> selectAll();
}