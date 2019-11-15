package com.qf.oa.service.impl;

import com.qf.oa.dao.IBaseDao;
import com.qf.oa.entity.Address;
import com.qf.oa.mapper.AddressMapper;
import com.qf.oa.service.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl extends BaseServiceImpl<Address> implements IAddressService{

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public IBaseDao<Address> getDao() {
        return addressMapper;
    }

    @Override
    public List<Address> selectAll() {
        return  addressMapper.selectAll();
    }
}
