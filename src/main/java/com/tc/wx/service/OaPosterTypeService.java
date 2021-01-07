package com.tc.wx.service;

import com.tc.wx.model.OaPosterType;

import java.util.List;

public interface OaPosterTypeService {
    List<OaPosterType> getByOaId(Integer oaId);
}
