package com.qf.oa.controller;


import com.qf.oa.entity.*;
import com.qf.oa.service.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("Shoping")
public class ShopingController {

    @Autowired
    private ISysUserService sysUserService;

    @Autowired
    private IShopService shopService;

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IAddressService addressService;

    @Autowired
    private IGoodsService goodsService;

    @RequestMapping("dd/{id}")
    public String dd(@PathVariable int id, ModelMap map){
        Goods goods = shopService.selectByPrimaryKey(id);
        map.put("goods",goods);
        return "product2Infor";
    }

    @RequestMapping("addCar/{id}/{count}")
    @ResponseBody
    public void AddCar(@PathVariable int id, @PathVariable int count, ModelMap map, HttpSession session){
        Goods goods = shopService.selectByPrimaryKey(id);
        GoodsDomain domain = new GoodsDomain();
        domain.setCount(count);
        BeanUtils.copyProperties(goods,domain);
        ShopCart shopCart = (ShopCart) session.getAttribute("cart");
        if (shopCart==null){
            shopCart = new ShopCart();
        }
        shopCart.addShopCart(domain);
        session.setAttribute("cart",shopCart);
    }

    @RequestMapping("Del/{id}")
    public String Del(@PathVariable int id,HttpSession session){
        ShopCart shopCart = (ShopCart) session.getAttribute("cart");
        shopCart.removeShopCart(id);
        return "shopcart";
    }

    @RequestMapping("Update/{id}/{count}")
    @ResponseBody
    public void Update(@PathVariable int id, @PathVariable int count,HttpSession session){
        ShopCart shopCart = (ShopCart) session.getAttribute("cart");
        shopCart.updateShopCart(id,count);
    }

    @RequestMapping("JieSuan")
    public String JieSuan(ModelMap map,HttpSession session){
        List<Address> list =addressService.selectAll();
        map.put("list",list);
        User user = (User) session.getAttribute("userByUsername");
        if (user==null){
            return "user/login";
        }
        return "pay";
    }

    @RequestMapping(value = "submit",method = RequestMethod.POST)
    public String Submit(HttpSession session,Order order,String express,String paytype,ModelMap map2){
        ShopCart shopCart = (ShopCart) session.getAttribute("cart");
        User user = (User) session.getAttribute("userByUsername");
        int price = (int) shopCart.getPrice();
        User userByUsername = sysUserService.getUserByUsername(user.getName());

        order.setUserid(userByUsername.getId());
        order.setPaycount(price);
        order.setOrderdate(new Date());
        order.setUserid(((User)SecurityUtils.getSubject().getPrincipal()).getId());
        order.setPaytype(paytype);
        order.setSendtype(express);
        int i = orderService.insertSelective(order);
        List<Map<String,Integer>> list = new ArrayList<>();
        if(i>0){
            for (GoodsDomain domain : shopCart.getList()) {
                Map<String,Integer> map = new HashMap<>();
                map.put("goodsId",domain.getId());
                map.put("count",domain.getCount());
                list.add(map);
            }
            int y = goodsService.batchUpdateCount(list);
        }
        map2.put("order",order);
        return "success";
    }

    @RequestMapping(value = "addAddress",method = RequestMethod.POST)
    public String AddAddress(String shouhuoren,String phone,String address,ModelMap map){
        Address address1 = new Address();
        address1.setShouhuoren(shouhuoren);
        address1.setPhone(phone);
        address1.setAddress(address);
        address1.setIsdefault("否");
        addressService.insertSelective(address1);
        List<Address> list =addressService.selectAll();
        map.put("list",list);
        return "pay";
    }

    @RequestMapping("toindex")
    public String orderIndex(HttpSession session,ModelMap map){
        User user = (User) session.getAttribute("userByUsername");
        User userByUsername = sysUserService.getUserByUsername(user.getName());

        List<Order> order = orderService.selectByUserId(userByUsername.getId());
        map.put("order",order);
        return "orderindex";
    }

    private ShopCart getShopingCart(HttpSession session, HttpServletResponse response){
        ShopCart cart = (ShopCart) session.getAttribute("cart");
        if (cart==null){
            cart = new ShopCart();
            session.setAttribute("cart",cart);
        }
        Cookie cookie = new Cookie("JSESSIONID",session.getId());
        cookie.setMaxAge(60*60*24);
        session.setMaxInactiveInterval(60*60*24);
        response.addCookie(cookie);
        return cart;
    }
}
