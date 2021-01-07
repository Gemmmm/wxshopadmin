package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserSellerMapper;
import com.tc.wx.model.ShopUser;
import com.tc.wx.model.ShopUserSeller;
import com.tc.wx.service.ShopUserSellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/27 15:56
 */
@Service
public class ShopUserSellerServiceImpl implements ShopUserSellerService {
    @Autowired
    private ShopUserSellerMapper mapper;

    @Override
    public List<ShopUserSeller> getByShopId(Integer shopId) {
        Example example=new Example(ShopUserSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopUserSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserSeller> getByShopIdAndOrderAndType(Integer shopId, String orderKey, String s) {
        return null;
    }
}
