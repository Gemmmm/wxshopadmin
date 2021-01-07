package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopDiscountUsageMapper;
import com.tc.wx.model.ShopDiscountUsage;
import com.tc.wx.service.ShopDiscountUsageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.persistence.Id;
import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 15:46
 */
@Service
public class ShopDiscountUsageServiceImpl implements ShopDiscountUsageService {
    @Autowired(required = false)
    private ShopDiscountUsageMapper mapper;

    @Override
    public List<ShopDiscountUsage> getByDiscountId(Integer discountId) {
        Example example=new Example(ShopDiscountUsage.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("discountId",discountId);
        List<ShopDiscountUsage> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopDiscountUsage getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public int modify(ShopDiscountUsage discountUsage) {
        return mapper.updateByPrimaryKeySelective(discountUsage);
    }

    @Override
    public ShopDiscountUsage getByUserIdAndOnlyId(Integer userId, String onlyId) {
        Example example=new Example(ShopDiscountUsage.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("userId",userId);
        criteria.andEqualTo("onlyId",onlyId);
        List<ShopDiscountUsage> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }
}
