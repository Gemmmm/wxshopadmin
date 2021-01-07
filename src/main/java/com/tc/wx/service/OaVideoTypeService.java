package com.tc.wx.service;

import com.tc.wx.model.OaVideoType;

import java.util.List;

public interface OaVideoTypeService {
    List<OaVideoType> getByOaId(Integer oaId);
}
