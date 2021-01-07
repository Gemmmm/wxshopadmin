package com.tc.wx.service;

import java.util.Date;
import java.util.List;

import com.tc.wx.model.ShopUser;
import com.tc.wx.model.ShopUserAnalysis;

public interface ShopUserService {

    /**
     * @param id 用户id
     * @return 用户信息
     */
    ShopUser getById(Integer id);

    /**
     *
     * @param shopUser
     * @return 修改是否成功
     */
    int modify(ShopUser shopUser);

    /**
     * @param shopId 门店编号
     * @param orderKey 0访问时间降序，1用户姓名升序
     * @param type 0线索，1客户
     * @return 用户列表
     */
    List<ShopUser> getByShopIdAndOrderAndType(Integer shopId, String orderKey, String type);

    List<ShopUser> getByShopId(Integer shopId);

    List<ShopUser> getByShopIdAndDateAndUserType(Integer shopId, Date date, String userType);
}
