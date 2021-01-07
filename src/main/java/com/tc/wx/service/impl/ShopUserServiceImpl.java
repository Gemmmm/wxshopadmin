package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserMapper;
import com.tc.wx.model.ShopUser;
import com.tc.wx.service.ShopUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:34
 */
@Service
public class ShopUserServiceImpl implements ShopUserService {
    @Autowired
    private ShopUserMapper mapper;

    @Override
    public ShopUser getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopUser> getByShopIdAndOrderAndType(Integer shopId, String orderKey, String userType) {
        Example example = new Example(ShopUser.class);
        Example.Criteria criteria = example.createCriteria();
        if (orderKey.equals("0")) {
            orderKey = "last_look_time desc";
        } else {
            orderKey = "username asc";
        }
        List<ShopUser> list = mapper.selectByOrder(shopId, orderKey, userType);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUser> getByShopId(Integer shopId) {
        List<ShopUser> list = mapper.selectByOrder(shopId, null, null);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUser> getByShopIdAndDateAndUserType(Integer shopId, Date date, String userType) {
        List<ShopUser> list = mapper.selectByShopIdAndDateAndUserType(shopId,userType,date);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public int modify(ShopUser shopUser) {
        return mapper.updateByPrimaryKeySelective(shopUser);
    }
}
