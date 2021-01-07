package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import com.tc.wx.model.ShopUserDesign;

public interface ShopUserDesignService {
    /**
     *
     * @param shopId 门店编号
     * @return 设计信息数组
     */
    List<ShopUserDesign> getByShopId(Integer shopId);
    /**
     *
     * @param id 设计编号
     * @return 设计信息
     */
    ShopUserDesign getById(Integer id);

    List<ShopUserDesign> getByShopIdAndDate(Integer shopId, Date date);
}
