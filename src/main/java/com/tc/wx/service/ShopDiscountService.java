package com.tc.wx.service;

import com.tc.wx.model.ShopDiscount;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-12 9:42
 */
public interface ShopDiscountService {

    List<ShopDiscount> getByShopId(Integer shopId);

    List<ShopDiscount> getByShopIdAndType(Integer shopId, String type);

    int insert(ShopDiscount discount);

    ShopDiscount getById(Integer id);

    int modify(ShopDiscount discount);

    int deleteById(Integer id);
}
