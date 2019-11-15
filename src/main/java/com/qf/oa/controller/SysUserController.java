package com.qf.oa.controller;
import	java.sql.ResultSet;

import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.entity.User;
import com.qf.oa.service.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.util.Arrays;
import java.util.List;

/**
 * @author LuoWei
 * @Date 2019/10/10
 */
@Controller
@RequestMapping("sysUser")
public class SysUserController {
    @Autowired
    private ISysUserService sysUserService;
    //    xx/sysUser/getById?userId=1
    @RequestMapping("getById")
    @ResponseBody
    public User getById(Integer userId){
        User user = sysUserService.selectByPrimaryKey(userId);
        return user;
    }
    //前端登录验证
    @RequestMapping("checkLogin")
    public String checkLogin(User user,boolean rememberMe,Model model,HttpSession session){
        System.out.println(user.getName()+":"+user.getPassword()+":"+rememberMe);
        //通过shiro框架进行登录认证
        //得到subject对象
        Subject currentUser = SecurityUtils.getSubject();
        //判断是否已经登陆认证
        if (!currentUser.isAuthenticated()){
            UsernamePasswordToken token = new UsernamePasswordToken(user.getName(), user.getPassword());
            //记住我
                token.setRememberMe(rememberMe);
            try {
                currentUser.login(token);
            } catch (AuthenticationException e) {
                System.out.println("登录认证失败");
                return "user/login";
            }
        }
        User userByUsername = sysUserService.getUserByUsername(user.getName());
        session.setAttribute("userByUsername",userByUsername);
        return "index";
    }

    @GetMapping("/kaptcha/get")
    @ResponseBody
    public String getKaptcha(HttpSession session){
        return (String) session.getAttribute("KAPTCHA_SESSION_KEY");
    }


    @RequestMapping("panchong")
    @ResponseBody
    public int Panchong(String userName){
        if (sysUserService.getUserByUsername(userName)!=null){
            return 1;
        }else{
            return 0;
        }
    }

    //注册
    @RequestMapping("register")
    public String Register(User user){
        System.out.println(user.getName());
        String algorithmName = "MD5";
        // 2.密码
        Object source = user.getPassword();
        // 3.盐值
        Object salt = ByteSource.Util.bytes(user.getName()); // 盐值一般是用户名或者userId
        // 4.加密次数
        int hashIterations = 1024;
        String newpassword = new SimpleHash(algorithmName, source, salt, hashIterations).toHex();
        // 5.得到加密后的密码
        System.out.println(newpassword);
        user.setPassword(newpassword);
        user.setAdmin(0);
        sysUserService.insert(user);
        System.out.println(user.getId());
        return "user/login";
    }
    //分页展示用户信息
    @RequestMapping("list")
    public String Page(Page page, Model model){
        //查询到分页的数据
        PageInfo pageInfo=sysUserService.getPage(page);
        //存起来
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("url", "sysUser/list");
        return "back/user/userinfo";
    }

    //管理员后台登陆
    @RequestMapping("backlogin")
    public String backLogin(User user){
        System.out.println(user.getName()+":"+user.getPassword());
        User user1=sysUserService.getLoginUserByAdmin(user.getName());
        if (user1!=null){
            if ("1".equals(user1.getAdmin().toString())){
                return "back/main";
            }
        }
        return "backLogin";
    }
    //管理员添加功能
    @RequestMapping("add")
    public String addUsers(User user){
        int result=sysUserService.insertSelective(user);
        if (result>0){
            System.out.println("添加用户成功");
            return "redirect:/sysUser/list";
        }
            return "sysUser/add";
    }
    //管理员修改初始化
    @RequestMapping("updateInit/{id}")
    public String updateInit(@PathVariable Integer id,Model model){
        User st=sysUserService.selectByPrimaryKey(id);
        model.addAttribute("st", st);
        return "back/user/updateuser";
    }
    //管理员修改用户信息
    @RequestMapping("update")
    public String updateMsgs(User user){
        int result = sysUserService.updateByPrimaryKeySelective(user);
        if (result>0){
            System.out.println("修改用户成功");
            return "redirect:/sysUser/list";
        }
        return "back/user/updateuser";
    }
    //管理员删除用户信息
    @RequestMapping("del/{id}")
    public String deleMsgs(@PathVariable Integer id){
        int result = sysUserService.deleteByPrimaryKey(id);
        if (result>0){
            System.out.println("删除用户成功");
            return "redirect:/sysUser/list";
        }
        System.out.println("删除用户失败");
        return "redirect:/sysUser/list";
    }
    //管理员批量删除
    @RequestMapping(value = "batchDelId")
    @ResponseBody
    public SysResult batchDelIdMsgs(@RequestParam("ids")List<Long> ids){
        return  sysUserService.batchDelByID(ids);

    }
}
