package com.tc.wx.service.impl;


import com.tc.wx.dao.ShopSellerImgMapper;
import com.tc.wx.model.ShopSellerImg;
import com.tc.wx.service.ShopSellerImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/24 16:22
 */
@Service
public class ShopSellerImgServiceImpl implements ShopSellerImgService {
    @Autowired
    private ShopSellerImgMapper mapper;

    @Override
    public List<ShopSellerImg> getByShopId(Integer shopId) {
        Example example=new Example(ShopSellerImg.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopSellerImg> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public Integer insert(ShopSellerImg sellerImg) {
        return mapper.insertSelective(sellerImg);
    }

    @Override
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }
}
