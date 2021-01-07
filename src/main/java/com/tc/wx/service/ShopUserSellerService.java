package com.tc.wx.service;

import com.tc.wx.model.ShopUserSeller;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/27 15:56
 */
public interface ShopUserSellerService {
    List<ShopUserSeller> getByShopId(Integer shopId);

    List<ShopUserSeller> getByShopIdAndOrderAndType(Integer shopId, String orderKey, String s);
}
