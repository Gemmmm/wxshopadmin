package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopSellerLabelMapper;
import com.tc.wx.model.ShopSellerLabel;
import com.tc.wx.service.ShopSellerLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 11:53
 */
@Service
public class ShopSellerLabelServiceImpl implements ShopSellerLabelService {
    @Autowired
    private ShopSellerLabelMapper mapper;

    @Override
    public List<ShopSellerLabel> getBySellerId(Integer sellerId) {
        Example example=new Example(ShopSellerLabel.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sellerId",sellerId);
        List<ShopSellerLabel> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
