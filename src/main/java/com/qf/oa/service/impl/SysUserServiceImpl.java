package com.qf.oa.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.User;
import com.qf.oa.mapper.UserMapper;
import com.qf.oa.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
@Service
public class SysUserServiceImpl extends BaseServiceImpl<User> implements ISysUserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public IBaseDao<User> getDao() {
        return userMapper;
    }

    @Override
    public User getUserByUsername(String username) {

        return userMapper.getUserByUsername(username);
    }

    @Override
    public PageInfo getPage(Page page) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<User> userList=userMapper.getUserList();
        return new PageInfo(userList);
    }

    @Override
    public User getLoginUserByAdmin(String username) {
        return userMapper.getLoginUserByAdmin(username);
    }

    @Override
    public SysResult batchDelByID(List<Long> ids) {
        int count=userMapper.batchDelByID(ids);
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
    public PageInfo getUserListByAdmin(Page page, Long roleId) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<User> userList=userMapper.getUserListByRoleId(roleId);
        return new PageInfo(userList);
    }

    @Override
    public PageInfo<User> getNoAuthUserByRoleId(Page page, String userName, Long roleId) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<User> userList=userMapper.getNoAuthUserByRoleId(roleId,userName);
        return new PageInfo(userList);
    }

    @Override
    public SysResult batchAddUser(List<Long> ids, Long roleId) {
        int count=userMapper.batchAddUser(ids,roleId);
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
    public PageInfo getUserListByUser(Page page, Long roleId) {
        PageHelper.startPage(page.getCurrentPage(),page.getPageSize());
        List<User> userList=userMapper.getUserListByUser(roleId);
        return new PageInfo(userList);
    }

    @Override
    public SysResult delAuthUser(Long roleId) {
        int count=userMapper.delAuthUser(roleId);
        SysResult result=new SysResult();
        if (count>0){
            //操作成功
            result.setResult(true);
        }else{
            //操作失败
            result.setResult(false);
        }
        return result;
    }

}
