package com.tc.wx.service;

import com.tc.wx.model.OaVideo;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-9 17:59
 */
public interface OaVideoService {
    List<OaVideo> getByOaId(Integer oaId);

    List<OaVideo> getByExample(Integer oaId, Integer typeId, String createTime, String isCustomerNum);
}
