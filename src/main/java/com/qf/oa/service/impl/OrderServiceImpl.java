package com.qf.oa.service.impl;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Order;
import com.qf.oa.mapper.OrderMapper;
import com.qf.oa.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl extends BaseServiceImpl<Order> implements IOrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public IBaseDao<Order> getDao() {
        return orderMapper;
    }

    @Override
    public List<Order> selectByUserId(Integer userid) {
        return orderMapper.selectByUserId(userid);
    }
}
