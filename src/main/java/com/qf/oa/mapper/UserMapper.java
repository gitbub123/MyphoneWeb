package com.qf.oa.mapper;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper extends IBaseDao<User> {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User getUserByUsername(String username);

    List<User> getUserList();

    User getLoginUserByAdmin(String name);

    int batchDelByID(@Param("ids") List<Long> ids);

    List<User> getUserListByRoleId(Long roleId);

    List<User> getNoAuthUserByRoleId(@Param("roleId") Long roleId, @Param("userName") String userName);

    int batchAddUser(@Param("ids") List<Long> ids, @Param("roleId") Long roleId);

    List<User> getUserListByUser(Long roleId);

    int delAuthUser(@Param("roleId") Long roleId);
}