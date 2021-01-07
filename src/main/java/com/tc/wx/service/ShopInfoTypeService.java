package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopInfoType;

public interface ShopInfoTypeService {

    ShopInfoType getById(Integer typeId);

    List<ShopInfoType> getByShopId(Integer shopId);

    Integer modify(ShopInfoType infoType);

    int insert(ShopInfoType infoType);

    Integer deleteById(Integer id);

    Integer getMaxSort();

    ShopInfoType getByShopIdAndName(Integer shopId,String name);

    List<ShopInfoType> getByShopIdAndIsShow(Integer shopId, Integer isShow);

}
