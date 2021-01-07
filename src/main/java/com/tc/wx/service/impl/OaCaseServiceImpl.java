package com.tc.wx.service.impl;

import com.tc.wx.dao.OaCaseMapper;
import com.tc.wx.model.OaCase;
import com.tc.wx.service.OaCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.thymeleaf.standard.expression.Each;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 14:40
 */
@Service
public class OaCaseServiceImpl implements OaCaseService {
    @Autowired(required = false)
    private OaCaseMapper mapper;
    @Override
    public List<OaCase> getByOaId(Integer oaId) {
        Example example = new Example(OaCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public OaCase getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OaCase> getByOaIdAndTypeId(Integer oaId, Integer typeId) {
        Example example = new Example(OaCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        if(typeId!=null&&!"".equals(typeId)){
            criteria.andEqualTo("typeId",typeId);
        }
        List<OaCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
