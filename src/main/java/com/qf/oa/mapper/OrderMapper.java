package com.qf.oa.mapper;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Order;

import java.util.List;

public interface OrderMapper extends IBaseDao<Order> {
    List<Order> selectByUserId(Integer userid);
}