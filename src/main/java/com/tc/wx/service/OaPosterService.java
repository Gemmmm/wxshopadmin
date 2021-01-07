package com.tc.wx.service;

import com.tc.wx.model.OaPoster;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-9 17:58
 */
public interface OaPosterService {
    List<OaPoster> getByOaId(Integer oaId);

    List<OaPoster> getByExample(Integer oaId, Integer typeId, String createTime, String isCustomerNum);

}
