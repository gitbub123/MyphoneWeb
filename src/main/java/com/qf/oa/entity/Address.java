package com.qf.oa.entity;

public class Address {
    private Integer id;

    private String shouhuoren;

    private String phone;

    private String address;

    private Integer userid;

    private String isdefault;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShouhuoren() {
        return shouhuoren;
    }

    public void setShouhuoren(String shouhuoren) {
        this.shouhuoren = shouhuoren;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(String isdefault) {
        this.isdefault = isdefault;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", shouhuoren=").append(shouhuoren);
        sb.append(", phone=").append(phone);
        sb.append(", address=").append(address);
        sb.append(", userid=").append(userid);
        sb.append(", isdefault=").append(isdefault);
        sb.append("]");
        return sb.toString();
    }
}