package com.tc.wx.service;

import com.tc.wx.model.ShopGoodPic;

public interface ShopGoodPicService {
    int insert(ShopGoodPic shopGoodPic);

    int deleteByGoodId(Integer id);
}
