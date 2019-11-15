package com.qf.oa.mapper;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Goods;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

public interface GoodsMapper extends IBaseDao<Goods> {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<Goods> getUserList();

    int batchDelByID(@Param("ids")List<Long> ids);

    int batchUpdateCount(List<Map<String, Integer>> list);
}