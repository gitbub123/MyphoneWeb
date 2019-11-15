package com.qf.oa.entity;

public class GoodsDomain {
    private Integer id;

    private String name;

    private Integer number;

    private String picture;

    private Integer price;

    private Integer count;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "GoodsDomain{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", number=" + number +
                ", picture='" + picture + '\'' +
                ", price=" + price +
                ", count=" + count +
                '}';
    }
}
