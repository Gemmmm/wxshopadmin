package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopCaseTypeMapper;
import com.tc.wx.model.ShopCaseType;
import com.tc.wx.model.ShopInfo;
import com.tc.wx.service.ShopCaseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:14
 */
@Service
public class ShopCaseTypeServiceImpl implements ShopCaseTypeService {
    @Autowired(required = false)
    private ShopCaseTypeMapper mapper;

    @Override
    public List<ShopCaseType> getByShopId(Integer shopId) {
        Example example=new Example(ShopCaseType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopCaseType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopCaseType getByShopIdAndName(Integer shopId, String name) {
        Example example=new Example(ShopCaseType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("name",name);
        List<ShopCaseType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }


    @Override
    public int insert(ShopCaseType caseType) {
        return mapper.insertSelective(caseType);
    }

    @Override
    public ShopCaseType getById(Integer typeId) {
        return mapper.selectByPrimaryKey(typeId);
    }
}
