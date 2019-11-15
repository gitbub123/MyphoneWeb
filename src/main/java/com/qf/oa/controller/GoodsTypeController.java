package com.qf.oa.controller;

import com.github.pagehelper.PageInfo;
import com.qf.oa.common.Page;
import com.qf.oa.common.SysResult;
import com.qf.oa.entity.Goods;
import com.qf.oa.entity.User;
import com.qf.oa.service.IGoodsService;
import com.qf.oa.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * @author LuoWei
 * @Date 2019/10/15
 */
@Controller
@RequestMapping("goods")
public class GoodsTypeController {
    @Autowired
    private IGoodsService goodsService;

    //分页展示用户信息
    @RequestMapping("list")
    public String Page(Page page, Model model){
        //查询到分页的数据
        PageInfo pageInfo=goodsService.getPage(page);
        //存起来
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("url", "goods/list");
        return "back/goodstype/goodstype";
    }
    //管理员添加商品功能
    @RequestMapping("add")
    public String addUsers(Goods goods, @RequestParam("file") MultipartFile file, HttpServletRequest request){
        goods.setPicture(file.getOriginalFilename());
        int result=goodsService.insertSelective(goods);
        upload(file,request);
        if (result>0){
            System.out.println("添加用户成功");
            return "redirect:/goods/list";
        }
        return "sysUser/add";
    }
    //封装上传图片
    private static void upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        File file2 = new File(request.getSession().getServletContext().getRealPath("/"));
        File file3 = new File(file2.getAbsoluteFile().getParent());
        String realPath = file3.getAbsoluteFile().getParent()+"\\src\\main\\webapp\\images";
        String target = realPath+ File.separator+file.getOriginalFilename();
        System.out.println(target);
        //String realPath = "d:\\lwl\\Phone_Demo\\src\\main\\webapp\\images";
        //String target = realPath+File.separator+file.getOriginalFilename();
        String images = request.getSession().getServletContext().getRealPath("images");
        String target2 = images+File.separator+file.getOriginalFilename();
        System.out.println(target2);
        try {
            FileCopyUtils.copy(file.getInputStream(),new FileOutputStream(target));
            FileCopyUtils.copy(file.getInputStream(),new FileOutputStream(target2));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //管理员修改初始化
    @RequestMapping("updateInit/{id}")
    public String updateInit(@PathVariable Integer id, Model model){
        Goods st=goodsService.selectByPrimaryKey(id);
        model.addAttribute("st", st);
        return "back/goodstype/goodstypeupdate";
    }
    //管理员修改用户信息
    @RequestMapping("update")
    public String updateMsgs(Goods goods,@RequestParam("file") MultipartFile file, HttpServletRequest request){
        if (file.getSize()!=0){
            goods.setPicture(file.getOriginalFilename());
            upload(file,request);
        }
        int result = goodsService.updateByPrimaryKeySelective(goods);
        if (result>0){
            System.out.println("修改用户成功");
            return "redirect:/goods/list";
        }
        return "back/goodstype/goodstypeupdate";
    }
    //管理员删除用户信息
    @RequestMapping("del/{id}")
    public String deleMsgs(@PathVariable Integer id){
        int result = goodsService.deleteByPrimaryKey(id);
        if (result>0){
            System.out.println("删除用户成功");
            return "redirect:/goods/list";
        }
        System.out.println("删除用户失败");
        return "redirect:/goods/list";
    }
    //管理员批量删除
    @RequestMapping(value = "batchDelId")
    @ResponseBody
    public SysResult batchDelIdMsgs(@RequestParam("ids")List<Long> ids){
        return  goodsService.batchDelByID(ids);

    }
}
