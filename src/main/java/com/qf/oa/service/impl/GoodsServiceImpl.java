package com.qf.oa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Goods;
import com.qf.oa.entity.User;
import com.qf.oa.mapper.GoodsMapper;
import com.qf.oa.mapper.UserMapper;
import com.qf.oa.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author LuoWei
 * @Date 2019/10/15
 */
@Service
public class GoodsServiceImpl extends BaseServiceImpl<Goods> implements IGoodsService{
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public PageInfo getPage(Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<Goods> userList=goodsMapper.getUserList();
        return new PageInfo(userList);
    }

    @Override
    public SysResult batchDelByID(List<Long> ids) {
        int count=goodsMapper.batchDelByID(ids);
        SysResult result=new SysResult();
        if (count>0){
            //操作成功
            result.setResult(true);
        }else{
            result.setResult(false);
        }
        return result;
    }

    @Override
    public int batchUpdateCount(List<Map<String, Integer>> list) {
        return goodsMapper.batchUpdateCount(list);
    }

    @Override
    public IBaseDao<Goods> getDao() {
        return goodsMapper;
    }
}
