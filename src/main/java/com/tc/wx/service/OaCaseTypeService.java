package com.tc.wx.service;

import com.tc.wx.model.OaCase;
import com.tc.wx.model.OaCaseType;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:38
 */
public interface OaCaseTypeService {
    List<OaCaseType> getByOaId(Integer oaId);

    OaCaseType getById(Integer typeId);
}
