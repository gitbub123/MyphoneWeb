package com.qf.oa.service;

import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.entity.User;

import java.util.List;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
public interface ISysUserService extends  IBaseService<User>{
    User getUserByUsername(String username);

    PageInfo getPage(Page page);

    User getLoginUserByAdmin(String username);

    SysResult batchDelByID(List<Long> ids);

    PageInfo getUserListByAdmin(Page page, Long roleId);

    PageInfo<User> getNoAuthUserByRoleId(Page page, String userName, Long roleId);

    SysResult batchAddUser(List<Long> ids, Long roleId);

    PageInfo getUserListByUser(Page page, Long roleId);

    SysResult delAuthUser(Long roleId);
}
