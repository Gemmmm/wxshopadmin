package com.tc.wx.service;

import com.tc.wx.model.ShopBanner;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/24 15:35
 */
public interface ShopBannerService {
    List<ShopBanner> getBySid(Integer shopId);

    Integer deleteById(Integer id);

    Integer insert(ShopBanner banner);

    List<ShopBanner> getBySidAndCatId(Integer shopId, Integer catId);
}
