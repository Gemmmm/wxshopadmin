package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopGoodTypeMapper;
import com.tc.wx.model.ShopGoodType;
import com.tc.wx.service.ShopGoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 15:59
 */
@Service
public class ShopGoodTypeServiceImpl implements ShopGoodTypeService {

    @Autowired(required = false)
    private ShopGoodTypeMapper mapper;

    @Override
    public ShopGoodType getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopGoodType> getAll() {
        return mapper.selectAll();
    }

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<ShopGoodType> getByShopId(Integer shopId) {
        Example example=new Example(ShopGoodType.class);
        Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopGoodType> goodTypes = mapper.selectByExample(example);
        if(goodTypes!=null&&goodTypes.size()>0) {
            return goodTypes;
        }
        return null;
    }

    @Override
    public Integer insert(ShopGoodType goodType) {
        return mapper.insertSelective(goodType);
    }

    @Override
    public ShopGoodType getByShopIdAndName(Integer shopId, String typeName) {
        Example example=new Example(ShopGoodType.class);
        Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("name",typeName);
        List<ShopGoodType> goodTypes = mapper.selectByExample(example);
        if(goodTypes!=null&&goodTypes.size()>0) {
            return goodTypes.get(0);
        }

        return null;
    }
}
