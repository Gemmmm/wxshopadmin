package com.tc.wx.dao;

import com.tc.wx.model.ShopUser;
import com.tc.wx.util.MyMapper;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

public interface ShopUserMapper extends MyMapper<ShopUser> {

    List<ShopUser> selectByOrder(Integer shopId,String orderKey,String userType);

    List<ShopUser> selectByShopIdAndDateAndUserType(Integer shopId, String userType, Date date);
}