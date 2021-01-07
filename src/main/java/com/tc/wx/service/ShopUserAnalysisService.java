package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopUserAnalysis;

public interface ShopUserAnalysisService {

    /**
     *
     * @param shopUserId 门店用户的编号
     * @return 用户的智能分析
     */
    ShopUserAnalysis getByShopUserId(Integer shopUserId);
    /**
     *
     * @param analysis 智能分析 信息
     * @return 修改是否成功
     */
    int modify(ShopUserAnalysis analysis);
    /**
     *
     * @param shopId 门店编号
     * @return 门店下所有的智能分析信息数组
     */
    List<ShopUserAnalysis> getByShopId(Integer shopId);
    /**
     *
     * @param shopId 门店编号
     * @param shopUserId  用户编号
     * @return 门店下该用户的智能分析
     */
    ShopUserAnalysis getShopIdAndByShopUserId(Integer shopId, Integer shopUserId);

}
