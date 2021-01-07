package com.tc.wx.service;


import com.tc.wx.model.ShopInfoGood;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:39
 */
public interface ShopInfoGoodService {

    List<ShopInfoGood> getByInfoId(Integer id);

    Integer deleteByInfoId(Integer InfoId);

    Integer insert(ShopInfoGood infoGood);

    int modifyByGoodId(Integer goodId, Integer isShow);
}
