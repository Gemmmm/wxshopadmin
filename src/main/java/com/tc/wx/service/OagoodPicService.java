package com.tc.wx.service;

import com.tc.wx.model.OaGoodPic;

import java.util.List;

public interface OagoodPicService {

    List<OaGoodPic> getByOaGoodId(Integer goodId);
}
