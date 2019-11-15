package com.qf.oa.service.impl;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Goods;
import com.qf.oa.mapper.GoodsMapper;
import com.qf.oa.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopServiceImpl extends BaseServiceImpl<Goods> implements IShopService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public IBaseDao<Goods> getDao() {
        return goodsMapper;
    }
}
