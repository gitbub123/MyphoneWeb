package com.qf.oa.entity;

import java.util.ArrayList;
import java.util.List;


public class ShopCart {
    private List<GoodsDomain> list=new ArrayList<>();  //购物车集合存商品信息和数量

    //查询购物车
    public List<GoodsDomain> getList() {
        return list;
    }

    public void setList(List<GoodsDomain> list) {
        this.list = list;
    }

    //添加购物车
    public void addShopCart(GoodsDomain domain){
        //遍历集合，取出元素的id与domain的id去匹配，如果相同，则直接修改数量即可
        //如果循环后都不匹配，则添加
        boolean flag = false;  //开关变量
        for(GoodsDomain gd : list){
            if(gd.getId()==domain.getId()){
                //获取数量+新添加的数量
                gd.setCount(gd.getCount()+domain.getCount());
                flag = true;  //后面就无需将新添加的domain对象加入集合
                break;
            }
        }
        if(!flag){ //如果没有匹配的id，则添加
            list.add(domain);
        }
    }

    //删除购物车
    public void removeShopCart(int id){
        for(GoodsDomain gd:list){  //遍历集合，判断是否有匹配id，有则删除该对象
            if(gd.getId()==id){
                list.remove(gd);
                break;
            }
        }
    }

    //获取总金额
    public double getPrice(){
        double price=0.0;
        for(GoodsDomain domain : list){
            price += domain.getPrice()*domain.getCount();
        }
        return price;
    }

    //修改购物车信息
    public void updateShopCart(int id, int count) {
        //遍历购物车集合，匹配id，修改domain的数量即可
        for(GoodsDomain gd : list){
            if(gd.getId()==id){
                gd.setCount(count);
                break;
            }
        }

    }

    @Override
    public String toString() {
        return "ShopCart{" +
                "list=" + list +
                '}';
    }
}
