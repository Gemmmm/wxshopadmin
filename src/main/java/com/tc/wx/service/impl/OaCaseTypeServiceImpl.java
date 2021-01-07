package com.tc.wx.service.impl;

import com.tc.wx.dao.OaCaseTypeMapper;
import com.tc.wx.model.OaCase;
import com.tc.wx.model.OaCaseType;
import com.tc.wx.service.OaCaseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:38
 */
@Service
public class OaCaseTypeServiceImpl implements OaCaseTypeService {
    @Autowired(required = false)
    private OaCaseTypeMapper mapper;

    @Override
    public List<OaCaseType> getByOaId(Integer oaId) {
        Example example=new Example(OaCaseType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaCaseType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public OaCaseType getById(Integer id) {
        Example example=new Example(OaCaseType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("id",id);
        List<OaCaseType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }
}
