package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopSellerInfo;


public interface ShopSellerInfoService {
    /**
     * @param sid  字段
     * @return 门店信息
     */
    ShopSellerInfo getBySId(String sid);

    /**
     *
     * @param shopName 门店名称
     * @return 所有的门店信息
     */
    List<ShopSellerInfo> getAllByCompany(String shopName);

    /**
     *
     * @param sellerInfo 门店详细信息
     * @return 添加是否成功
     */
    int insert(ShopSellerInfo sellerInfo);

    /**
     *
     * @param sellerInfo 门店信息
     * @return 修改是否成功
     */
    int updateById(ShopSellerInfo sellerInfo);


}
