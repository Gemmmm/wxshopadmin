package com.tc.wx.service.impl;

import com.tc.wx.dao.OaVideoTypeMapper;
import com.tc.wx.model.OaVideo;
import com.tc.wx.model.OaVideoType;
import com.tc.wx.service.OaVideoTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class OaVideoTypeServiceImpl implements OaVideoTypeService {
    @Autowired(required = false)
    private OaVideoTypeMapper mapper;

    @Override
    public List<OaVideoType> getByOaId(Integer oaId) {
        Example example=new Example(OaVideoType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaVideoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
