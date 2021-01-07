package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopSellerLabel;

public interface ShopSellerLabelService {
    /**
     *
     * @param sellerId 商家编号
     * @return 商家标签
     */
    List<ShopSellerLabel> getBySellerId(Integer sellerId);

}
