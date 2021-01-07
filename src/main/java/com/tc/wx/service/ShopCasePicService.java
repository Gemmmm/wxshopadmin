package com.tc.wx.service;

import com.tc.wx.model.ShopCasePic;
import com.tc.wx.model.ShopCaseType;

/**
 * @author DELL
 * @date 2020-10-13 16:24
 */
public interface ShopCasePicService {
    Integer insert(ShopCasePic shopCasePic);

    int deleteByCaseId(Integer id);
}
