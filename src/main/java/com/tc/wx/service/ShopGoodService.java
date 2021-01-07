package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import com.tc.wx.model.ShopGood;


public interface ShopGoodService {
    List<ShopGood> getByShopId(Integer id);

    int insert(@Valid ShopGood good);

    int deleteById(Integer id);

    ShopGood getById(Integer id);


    List<ShopGood> getByShopIdAGoodName(Integer shopId, String goodName);

    List<ShopGood> getByShopIdAndIsShow(Integer shopId, Integer isShow);

    /**
     * @param shopId   门店编号
     * @param orderKey 排序关键字，1创建时间，2浏览量，3，点赞量
     * @return 所有商品信息
     */

    /**
     * @param good 商品
     * @return 商品添加是否成功
     */
    int modifyById(ShopGood good);

    /**
     * @param typeId 商品类型编号
     * @return
     */
    List<ShopGood> getByTypeId(Integer typeId);

    ShopGood getbyOaShopIdAndGoodId(Integer shopId, Integer oaGoodId);

    ShopGood getByShopIdAndNameAndImgAndCreateTime(Integer shopId, String goodName, String goodImg, Date date);

    List<ShopGood> getByShopIdAndTypeIdAndOrderKeyAndIsShow(Integer shopId, Integer typeId, String orderKey, Integer isShow);
}
