package com.tc.wx.service.impl;

import com.tc.wx.dao.OaVideoMapper;
import com.tc.wx.model.OaVideo;
import com.tc.wx.service.OaVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-9 17:58
 */
@Service
public class OaVideoServiceImpl implements OaVideoService {
    @Autowired(required = false)
    private OaVideoMapper mapper;

    @Override
    public List<OaVideo> getByOaId(Integer oaId) {
        Example example = new Example(OaVideo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId", oaId);
        List<OaVideo> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public List<OaVideo> getByExample(Integer oaId, Integer typeId, String createTime, String isCustomerNum) {
        Example example = new Example(OaVideo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId", oaId);
        if (typeId != null && !"".equals(typeId)) {
            criteria.andEqualTo("typeId", typeId);
        }
        if ("1".equals(createTime)) {
            example.orderBy("createTime").asc();
        } else if ("0".equals(createTime)) {
            example.orderBy("createTime").desc();
        }
        if ("1".equals(isCustomerNum)) {
            example.orderBy("beCustmerNum").asc();
        } else if ("0".equals(isCustomerNum)) {
            example.orderBy("beCustmerNum").desc();
        }

        List<OaVideo> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }
}
