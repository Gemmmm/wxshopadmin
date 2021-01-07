package com.tc.wx.service.impl;

import com.tc.wx.dao.OaGoodMapper;
import com.tc.wx.model.OaGood;
import com.tc.wx.service.OaGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/1 10:19
 */
@Service
public class OaGoodServiceImpl implements OaGoodService {
    @Autowired(required = false)
    private OaGoodMapper mapper;
    @Override
    public List<OaGood> getByOaId(Integer oaUserId) {
        Example example =new Example(OaGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaUserId);
        example.orderBy("createTime").desc();
        List<OaGood> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public OaGood getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OaGood> getByOaIdAndTypeId(Integer oaId, Integer typeId) {
        Example example =new Example(OaGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        criteria.andEqualTo("goodTypeId",typeId);
        example.orderBy("createTime").desc();
        List<OaGood> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
