package com.qf.oa.service;

import com.qf.oa.entity.Order;

import java.util.List;
import java.util.Map;

public interface IOrderService extends IBaseService<Order> {

    List<Order> selectByUserId(Integer userid);
}
