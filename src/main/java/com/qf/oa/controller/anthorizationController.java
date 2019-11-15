package com.qf.oa.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.entity.User;
import com.qf.oa.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author LuoWei
 * @Date 2019/10/14
 */
@Controller
@RequestMapping("auth")
public class anthorizationController {
    @Autowired
    private ISysUserService sysUserService;

    @RequestMapping("showAuthPage")
    public String authManger(Page page,ModelMap map){
        //查询所有的权限用户信息
        PageInfo pageInfo = sysUserService.getPage(page);
        map.put("roleList",pageInfo);
        return "auth/authorization";
    }
    //查询权限用户
    @RequestMapping("getUserListByAdmin")
    public String getUserListByAdmin(Page page,Long roleId,ModelMap map){
        PageInfo pageInfo=sysUserService.getUserListByAdmin(page,roleId);
        //设置url地址
        map.put("url","auth/getUserListByAdmin");
        map.put("pageInfo",pageInfo);
        map.put("roleId",roleId);

        //把条件转成json,传递给page页面使用
        Map<String,Object> paramMap=new HashMap<>();
        paramMap.put("roleId",roleId);
        map.put("params",new Gson().toJson(paramMap));
        return "auth/auth_user";
    }

    //查询该角色下没有的用户信息
    @RequestMapping("getNoAuthUserByRoleId")
    public String getNoAuthUserByRoleId(Page page,String userName,Long roleId,ModelMap map){
        PageInfo<User> pageInfo=sysUserService.getNoAuthUserByRoleId(page,userName,roleId);
        map.put("url","auth/getNoAuthUserByRoleId");
        map.put("pageInfo",pageInfo);
        map.put("roleId",roleId);
        map.put("userName",userName);

        Map<String,Object> paramMap=new HashMap<>();
        paramMap.put("roleId",roleId);
        paramMap.put("userName",userName);
        map.put("params",new Gson().toJson(paramMap));

        return "auth/no_auth_user";
    }

    //批量授权用户
    @RequestMapping("batchAddUser")
    @ResponseBody
    public SysResult batchAddUser(@RequestParam("ids") List<Long> ids, Long roleId){
        return sysUserService.batchAddUser(ids,roleId);
    }

    //查询普通权限用户
    @RequestMapping("getUserListByUser")
    public String getUserListByUser(Page page,Long roleId,ModelMap map){
        PageInfo pageInfo=sysUserService.getUserListByUser(page,roleId);
        //设置url地址
        map.put("url","auth/getUserListByUser");
        map.put("pageInfo",pageInfo);
        map.put("roleId",roleId);

        //把条件转成json,传递给page页面使用
        Map<String,Object> paramMap=new HashMap<>();
        paramMap.put("roleId",roleId);
        map.put("params",new Gson().toJson(paramMap));
        return "auth/auth_user";
    }
    //解除授权用户
    @RequestMapping("delAuthUser")
    @ResponseBody
    public SysResult delAuthUser(Long roleId){
        return sysUserService.delAuthUser(roleId);
    }
}
