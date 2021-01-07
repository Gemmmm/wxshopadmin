package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import com.tc.wx.model.ShopUserFollow;

public interface ShopUserFollowService {
    /**
     *
     * @param shopUserId 门店用户的编号
     * @return 门店用户的跟进信息
     */
    List<ShopUserFollow> getByShopUserId(Integer shopUserId);

    /**
     *
     * @param shopUserFollow 门店用户跟进信息
     * @return 插入是否成功， 1成功， -1不成功
     */
    int insert(ShopUserFollow shopUserFollow);

    /**
     *
     * @param shopId 门店编号
     * @param id 用户编号
     * @return 门店的用户的跟进信息数组
     */
    List<ShopUserFollow> getByShopIdAndShopUserId(Integer shopId, Integer id);

    List<ShopUserFollow> getByShopAndDate(Integer shopId, Date date);
}
