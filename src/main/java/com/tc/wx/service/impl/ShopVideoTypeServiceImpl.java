package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopVideoMapper;
import com.tc.wx.dao.ShopVideoTypeMapper;
import com.tc.wx.model.ShopVideo;
import com.tc.wx.model.ShopVideoType;
import com.tc.wx.service.ShopVideoTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 13:38
 */
@Service
public class ShopVideoTypeServiceImpl implements ShopVideoTypeService {
    @Autowired
    private ShopVideoTypeMapper mapper;
    @Override
    public List<ShopVideoType> getByShopId(Integer shopId) {
        Example example=new Example(ShopVideoType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopVideoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopVideoType getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
}
