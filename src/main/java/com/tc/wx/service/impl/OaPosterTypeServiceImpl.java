package com.tc.wx.service.impl;

import com.tc.wx.dao.OaPosterTypeMapper;
import com.tc.wx.model.OaPoster;
import com.tc.wx.model.OaPosterType;
import com.tc.wx.service.OaPosterTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class OaPosterTypeServiceImpl implements OaPosterTypeService {

    @Autowired(required = false)
    private OaPosterTypeMapper mapper;

    @Override
    public List<OaPosterType> getByOaId(Integer oaId) {
        Example example=new Example(OaPosterType.class);
        Example.Criteria criteria = example.createCriteria();

        criteria.andEqualTo("oaId",oaId);
        List<OaPosterType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }
}
