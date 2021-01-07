package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import com.tc.wx.model.ShopUserLocus;

/**
 * @author DELL
 */
public interface ShopUserLocusService {

    /**
     *
     * @param shopUserId 门店用户的编号
     * @return 用户轨迹数组
     */
    List<ShopUserLocus> getByShopUserId(Integer shopUserId);

    /**
     *
     * @param shopId 门店编号
     * @return 用户轨迹数组
     */
    List<ShopUserLocus> getbyShopId(Integer shopId);
    /**
     *
     * @param shopId 门店编号
     * @param shopUserId 用户编号
     * @return 用户轨迹数组
     */
    List<ShopUserLocus> getByShopIdAndShopUserId(Integer shopId, Integer shopUserId);

    List<ShopUserLocus> getByShopIdAndDateAndLookType(Integer shopId, Date date, String lookType);

    List<ShopUserLocus> getbyShopIdAndDate(Integer shopId, Date date);
}
