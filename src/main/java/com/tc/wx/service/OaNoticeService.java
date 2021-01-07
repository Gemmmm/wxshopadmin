package com.tc.wx.service;

import com.tc.wx.model.OaNotice;

import java.util.List;

public interface OaNoticeService {
    List<OaNotice> getByOaId(Integer oaId);

    OaNotice getById(Integer id);
}
