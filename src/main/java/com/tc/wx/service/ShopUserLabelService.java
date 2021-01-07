package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.ShopUserLabel;

public interface ShopUserLabelService {

    /**
     *
     * @param id 门店用户编号
     * @return 门店用户的标签
     */
    List<ShopUserLabel> getByShopUserId(Integer id);

    /**
     *
     * @param shopUserLabel 门店用户标签
     * @return 插入是否成功
     */
    int insert(ShopUserLabel shopUserLabel);

    /**
     *
     * @param shopId 门店编号
     * @param id 门店用户编号
     * @return 门店该用户的所有标签
     */
    List<ShopUserLabel> getByShopIdAndShopUserId(Integer shopId, Integer id);

    /**
     *
     * @param label shopId 门店编号
     * @param label shopUserId 门店编号
     * @param label labelId 标签编号
     * @return 用户标签信息
     */
    ShopUserLabel getByExample(ShopUserLabel label);

    /**
     *
     * @param shopUserId  门店
     * @param labelId
     * @return
     */
    Integer deleteByUserIdAndLabelId(Integer shopUserId, Integer labelId);
    /**
     *
     * @param id 标签id
     * @return
     */
    Integer deleteById(Integer id);

}
