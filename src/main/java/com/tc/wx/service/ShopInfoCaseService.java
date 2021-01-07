package com.tc.wx.service;

import com.tc.wx.model.ShopInfoCase;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:40
 */
public interface ShopInfoCaseService {

    List<ShopInfoCase> getByInfoId(Integer infoId);

    Integer deleteByInfoId(Integer id);

    Integer insert(ShopInfoCase infoCase);

    int modifyByGoodId(Integer id, Integer isShow);
}
