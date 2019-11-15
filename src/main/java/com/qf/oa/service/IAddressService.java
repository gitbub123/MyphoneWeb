package com.qf.oa.service;

import com.qf.oa.entity.Address;

import java.util.List;

public interface IAddressService extends IBaseService<Address> {
    public List<Address> selectAll();
}
