package com.tc.wx.service;

import com.tc.wx.model.OaCase;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 14:40
 */
public interface OaCaseService {

    List<OaCase> getByOaId(Integer oaId);

    OaCase getById(Integer id);

    List<OaCase> getByOaIdAndTypeId(Integer oaId, Integer typeId);
}
