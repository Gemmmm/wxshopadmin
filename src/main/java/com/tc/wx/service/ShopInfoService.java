package com.tc.wx.service;

import java.util.List;

import javax.validation.Valid;

import com.tc.wx.model.OaInfo;
import com.tc.wx.model.ShopInfo;


public interface ShopInfoService {

    /**
     *
     * @param shopId 门店编号
     * @return 门店的资讯信息
     */
    List<ShopInfo> getByShopId(Integer shopId);
    /**
     *
     * @param id 资讯编号
     * @return 删除是否成功
     */
    int deleteById(Integer id);
    /**
     *
     * @param info 资讯信息
     * @return 资讯是否插入成功
     */
    int insert(@Valid ShopInfo info);

    /**
     *
     * @param id 资讯编号
     * @return 资讯信息
     */
    ShopInfo getById(Integer id);

    /**
     *
     * @param info 资讯信息
     * @return 修改是否成功
     */
    int updateById(@Valid ShopInfo info);

    /**
     *
     * @param shopId 门店编号
     * @param title 资讯标题
     * @return 资讯信息列表
     */
    List<ShopInfo> getByShopIdAndTitle(Integer shopId, String title);

    /**
     *
     * @param shopId 门店编号
     * @return 需要显示的资讯信息
     */
    List<ShopInfo> getByShopIdAndIsShow(Integer shopId,Integer isShow);

    /**
     *
     * @param shopId 门店编号
     * @param orderKey 1时间降序，2获客次数降序，3呗使用次数降序
     * @return 资讯信息列表
     */
    List<ShopInfo> getByShopIdAndOrder(Integer shopId, String orderKey);
    /**
     *
     * @param info 资讯信息
     * @return 资讯信息
     */
    int modifyById(ShopInfo info);

    /**
     * @param shopId 门店编号
     * @param orderKey 排序规则，1时间降序，2获客次数降序，3被使用次数降序
     * @param typeId 资讯类型
     * @return 资讯信息
     */
    List<ShopInfo> getByShopIdAndOrderAndTypeId(Integer shopId, String orderKey, Integer typeId);


    List<ShopInfo> getByShopIdAndOrderAndTypeIdAndIsIndex(Integer shopId, String orderKey, Integer typeId, String isIndex);

    ShopInfo getByOaInfoId(Integer oaInfoId);

    List<ShopInfo> getByShopIdAndIsReport(Integer shopId, String isReport);

    ShopInfo getByShopIdAndOaInfoId(Integer shopId, Integer id);

}
