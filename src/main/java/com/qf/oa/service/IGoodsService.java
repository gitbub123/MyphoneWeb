package com.qf.oa.service;

import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.entity.Goods;

import java.util.List;
import java.util.Map;

/**
 * @author LuoWei
 * @Date 2019/10/15
 */
public interface IGoodsService extends IBaseService<Goods> {
    PageInfo getPage(Page page);

    SysResult batchDelByID(List<Long> ids);

    int batchUpdateCount(List<Map<String, Integer>> list);
}
