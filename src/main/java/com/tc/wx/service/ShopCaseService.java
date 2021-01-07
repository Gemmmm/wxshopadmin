package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import com.tc.wx.model.ShopCase;


public interface ShopCaseService {
    /**
     *
     * @param id 案例编号
     * @return 案例信息数组
     */
    List<ShopCase> getByShopId(Integer id);
    /**
     *
     * @param cases 案例信息
     * @return 案例添加是否成功
     */
    int insert(@Valid ShopCase cases);
    /**
     *
     * @param id 案例编号
     * @return 案例信息
     */
    ShopCase getById(Integer id);
    /**
     *
     * @param id 案例编号
     * @return 案例删除是否成功
     */
    int deleteById(Integer id);
    /**
     *
     * @param shopId 门店编号
     * @param title 案例名称
     * @return 案例信息数组
     */
    List<ShopCase> getByShopIdAndTitle(Integer shopId, String title);

    /**
     *
     * @param shopId 门店编号
     * @param orderKey 1时间，2浏览量，3点赞数
     * @return 案例信息列表
     */
    List<ShopCase> getByShopIdAndOrderkey(Integer shopId, String orderKey);
    /**
     *
     * @param cases 案例信息
     * @return 案例修改是否成功
     */
    int modify(ShopCase cases);
    /**
     *
     * @param shopId 门店编号
     * @param isShow 是否展示
     * @return 案例信息列表
     */
    List<ShopCase> getByShopIdAndIsShow(Integer shopId, Integer isShow);


    ShopCase getByOaCaseId(Integer oaCaseId);

    ShopCase getByShopIdAndOaCaseId(Integer shopId, Integer oaCaseId);

    List<ShopCase> getByShopIdAndTypeIdAndIsShowAndOrderKey(Integer shopId, Integer typeId, Integer isShow, String orderKey);

    ShopCase getByShopIdAndTitleAndImgAndCreateTime(Integer shopId, String title, String img, Date date);
}
