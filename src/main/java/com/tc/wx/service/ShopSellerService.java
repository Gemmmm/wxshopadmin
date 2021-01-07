package com.tc.wx.service;

import java.util.List;

import javax.validation.Valid;

import com.tc.wx.model.ShopSeller;


public interface ShopSellerService {
    ShopSeller findSeller(String sellername, String password);

    List<ShopSeller> getAll();

    int updatePassword(ShopSeller loginAdmin);

    ShopSeller getBySId(String sid);

    int insert(@Valid ShopSeller seller);

    ShopSeller getByOpenid(String openid);

    int updateById(ShopSeller seller);

    ShopSeller getById(Integer id);

    ShopSeller getByPhoneAndSid(String phone,String sid);

    ShopSeller getByToken(String token);

    List<ShopSeller> getByPhone(String phone);
}
