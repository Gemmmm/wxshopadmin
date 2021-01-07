package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopDiscountMapper;
import com.tc.wx.model.ShopDiscount;
import com.tc.wx.service.ShopDiscountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020-10-12 9:42
 */
@Service
public class ShopDiscountServiceImpl implements ShopDiscountService {

    @Autowired(required = false)
    private ShopDiscountMapper mapper;

    @Override
    public List<ShopDiscount> getByShopId(Integer shopId) {
        Example example=new Example(ShopDiscount.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopDiscount> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopDiscount> getByShopIdAndType(Integer shopId, String type) {
        Example example=new Example(ShopDiscount.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        Date nowDate=new Date();

        if("2".equals(type)){
            criteria.andGreaterThan("endTime",nowDate);
        }else if("3".equals(type)){
            criteria.andLessThan("endTime",nowDate);
        }
        List<ShopDiscount> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopDiscount discount) {
        return mapper.insertSelective(discount);
    }

    @Override
    public ShopDiscount getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public int modify(ShopDiscount discount) {
        return mapper.updateByPrimaryKeySelective(discount);
    }

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }
}
