package com.qf.oa.entity;

import java.util.Date;

public class Order {
    private Integer id;

    private String sendtype;

    private String paytype;

    private Integer paycount;

    private Date orderdate;

    private Integer userid;

    private String username;

    private Integer userphone;

    private String useradress;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSendtype() {
        return sendtype;
    }

    public void setSendtype(String sendtype) {
        this.sendtype = sendtype;
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype;
    }

    public Integer getPaycount() {
        return paycount;
    }

    public void setPaycount(Integer paycount) {
        this.paycount = paycount;
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getUserphone() {
        return userphone;
    }

    public void setUserphone(Integer userphone) {
        this.userphone = userphone;
    }

    public String getUseradress() {
        return useradress;
    }

    public void setUseradress(String useradress) {
        this.useradress = useradress;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sendtype=").append(sendtype);
        sb.append(", paytype=").append(paytype);
        sb.append(", paycount=").append(paycount);
        sb.append(", orderdate=").append(orderdate);
        sb.append(", userid=").append(userid);
        sb.append(", username=").append(username);
        sb.append(", userphone=").append(userphone);
        sb.append(", useradress=").append(useradress);
        sb.append("]");
        return sb.toString();
    }
}