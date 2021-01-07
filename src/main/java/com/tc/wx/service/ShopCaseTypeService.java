package com.tc.wx.service;

import com.tc.wx.model.ShopCaseType;
import com.tc.wx.model.ShopInfo;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:14
 */
public interface ShopCaseTypeService {
    List<ShopCaseType> getByShopId(Integer shopId);

    ShopCaseType getByShopIdAndName(Integer shopId,String name);

    int insert(ShopCaseType caseType);

    ShopCaseType getById(Integer typeId);
}
