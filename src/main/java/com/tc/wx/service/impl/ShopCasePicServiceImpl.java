package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopCasePicMapper;
import com.tc.wx.model.ShopCasePic;
import com.tc.wx.service.ShopCasePicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:24
 */
@Service
public class ShopCasePicServiceImpl implements ShopCasePicService {
    @Autowired(required = false)
    private ShopCasePicMapper mapper;

    @Override
    public Integer insert(ShopCasePic shopCasePic) {
        return mapper.insertSelective(shopCasePic);
    }

    @Override
    public int deleteByCaseId(Integer caseId) {
        Example example=new Example(ShopCasePic.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("caseId",caseId);
        return mapper.deleteByExample(example);
    }
}
