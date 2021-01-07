package com.tc.wx.service.impl;

import com.tc.wx.dao.OaPosterMapper;
import com.tc.wx.model.OaPoster;
import com.tc.wx.model.ShopPoster;
import com.tc.wx.service.OaPosterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-9 17:58
 */
@Service
public class OaPosterServiceImpl implements OaPosterService {

    @Autowired(required = false)
    private OaPosterMapper mapper;

    @Override
    public List<OaPoster> getByOaId(Integer oaId) {
        Example example=new Example(OaPoster.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaPoster> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<OaPoster> getByExample(Integer oaId, Integer typeId, String createTime, String isCustomerNum) {
        Example example=new Example(OaPoster.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        if(typeId!=null&&!"".equals(typeId)){
            criteria.andEqualTo("typeId",typeId);
        }
        if(createTime!=null&&!"1".equals(createTime)){
            example.orderBy("createTime").asc();
        }else{
            example.orderBy("createTime").desc();
        }
        if(isCustomerNum!=null&&!"1".equals(isCustomerNum)){
            example.orderBy("isCustomerNum").asc();
        }else{
            example.orderBy("isCustomerNum").desc();
        }
        List<OaPoster> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

}
