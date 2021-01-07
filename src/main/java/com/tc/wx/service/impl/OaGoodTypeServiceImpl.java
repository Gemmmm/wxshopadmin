package com.tc.wx.service.impl;

import com.tc.wx.dao.OaGoodTypeMapper;
import com.tc.wx.model.OaGoodType;
import com.tc.wx.service.OaGoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/1 10:20
 */
@Service
public class OaGoodTypeServiceImpl implements OaGoodTypeService {
    @Autowired
    private OaGoodTypeMapper mapper;

    @Override
    public OaGoodType getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OaGoodType> getByOaId(Integer oaId) {
        Example example=new Example(OaGoodType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaGoodType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
