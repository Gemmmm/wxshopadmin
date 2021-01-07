package com.tc.wx.service;

import com.tc.wx.model.ShopSellerImg;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/24 16:22
 */
public interface ShopSellerImgService {
    List<ShopSellerImg> getByShopId(Integer shopId);

    Integer insert(ShopSellerImg sellerImg);

    Integer deleteById(Integer id);
}
