package com.qf.oa.realm;
import	java.util.HashSet;

import com.qf.oa.entity.User;
import com.qf.oa.service.ISysUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Set;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
public class Myrealm extends AuthorizingRealm {

    @Autowired
    private ISysUserService sysUserService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        System.out.println("授权处理");
        Set<String> permissionsSet=new HashSet<String> ();
        //得到登录的用户id
        User user = (User) principals.getPrimaryPrincipal();
        String admin =""+user.getAdmin();
        //设置当前用户的权限
        if ("1".equals(admin)){
            permissionsSet.add(admin);
        }
        //返回AuthorizationInfo接口的实现类，提供权限信息
        SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
        authorizationInfo.setStringPermissions(permissionsSet);
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("认证处理。。。");
        //得到UsernamePasswordToken
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        //得到用户名
        String username = token.getUsername();
        //通过用户名查询用户对象
        User user=sysUserService.getUserByUsername(username);
        if(user!=null){
            //返回真实的用户信息去做对比
            //加盐值
            ByteSource byteSource = ByteSource.Util.bytes(username);
            return new SimpleAuthenticationInfo(user,user.getPassword(),byteSource,this.getName());
        }
        return null;
    }
}
