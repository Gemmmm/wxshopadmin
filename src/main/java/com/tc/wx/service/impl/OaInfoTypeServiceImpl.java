package com.tc.wx.service.impl;

import com.tc.wx.dao.OaInfoTypeMapper;
import com.tc.wx.model.OaInfoType;
import com.tc.wx.service.OaInfoTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:46
 */
@Service
public class OaInfoTypeServiceImpl implements OaInfoTypeService {
    @Autowired
    private OaInfoTypeMapper mapper;
    @Override
    public OaInfoType getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OaInfoType> getByOaId(Integer oaUserId) {
        Example example=new Example(OaInfoType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaUserId);
        List<OaInfoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
