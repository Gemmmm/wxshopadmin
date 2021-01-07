package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopGoodPicMapper;
import com.tc.wx.model.ShopGood;
import com.tc.wx.model.ShopGoodPic;
import com.tc.wx.service.ShopGoodPicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

@Service
public class ShopGoodPicServiceImpl implements ShopGoodPicService {

    @Autowired(required = false)
    private ShopGoodPicMapper mapper;

    @Override
    public int insert(ShopGoodPic shopGoodPic) {
        return mapper.insertSelective(shopGoodPic);
    }

    @Override
    public int deleteByGoodId(Integer id) {
        Example example=new Example(ShopGoodPic.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("goodId",id);

        return mapper.deleteByExample(example);
    }
}
