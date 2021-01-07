package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopDiscountUsage;

public interface ShopDiscountUsageService {

	List<ShopDiscountUsage> getByDiscountId(Integer id);

    ShopDiscountUsage getById(Integer id);

    int modify(ShopDiscountUsage discountUsage);

    ShopDiscountUsage getByUserIdAndOnlyId(Integer userId, String id);
}
