package com.tc.wx.service.impl;

import com.tc.wx.dao.OaUserMapper;
import com.tc.wx.model.OaUser;
import com.tc.wx.service.OaUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author DELL
 * @date 2020/9/27 15:12
 */
@Service
public class OaUserServiceImpl implements OaUserService {
    @Autowired
    private OaUserMapper mapper;

    @Override
    public OaUser getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
}
