package com.tc.wx.service.impl;

import com.tc.wx.dao.OaGoodPicMapper;
import com.tc.wx.model.OaGoodPic;
import com.tc.wx.service.OagoodPicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class OaGoodPicServiceImpl  implements OagoodPicService {

    @Autowired(required = false)
    private OaGoodPicMapper mapper;

    @Override
    public List<OaGoodPic> getByOaGoodId(Integer goodId) {
        Example example=new Example(OaGoodPic.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("goodId",goodId);
        List<OaGoodPic> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }
}
