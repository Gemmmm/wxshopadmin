package com.tc.wx.service.impl;

import com.tc.wx.dao.OaNoticeMapper;
import com.tc.wx.model.OaNotice;
import com.tc.wx.service.OaNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class OaNoticeServiceImpl implements OaNoticeService {

    @Autowired(required = false)
    private OaNoticeMapper mapper;

    @Override
    public List<OaNotice> getByOaId(Integer oaId) {
        Example example=new Example(OaNotice.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        example.orderBy("createTime").desc();
        List<OaNotice> list = mapper.selectByExample(example);
        if(list!=null){
            return list;
        }

        return null;
    }

    @Override
    public OaNotice getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
}
