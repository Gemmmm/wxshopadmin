package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopGoodType;


public interface ShopGoodTypeService {
    /**
     *
     * @param id  类型编号
     * @return 类型信息
     */
    ShopGoodType getById(Integer id);
    /**
     *
     * @return 类型信息列表
     */
    List<ShopGoodType> getAll();
    /**
     *
     * @param id 类型编号
     * @return 是否删除
     */
    int deleteById(Integer id);

    /**
     *
     * @param shopId 门店编号
     * @return 商品类型信息数组
     */
    List<ShopGoodType> getByShopId(Integer shopId);

    /**
     *
     * @param goodType 商品类型
     * @return  插入是否成功
     */
    Integer insert(ShopGoodType goodType);

    ShopGoodType getByShopIdAndName(Integer shopId, String typeName);
}
