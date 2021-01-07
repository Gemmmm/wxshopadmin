package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserDesignMapper;
import com.tc.wx.model.ShopUserDesign;
import com.tc.wx.service.ShopUserDesignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 10:59
 */
@Service
public class ShopUserDesignServiceImpl implements ShopUserDesignService {
    @Autowired
    private ShopUserDesignMapper mapper;
    @Override
    public List<ShopUserDesign> getByShopId(Integer shopId) {
        Example example=new Example(ShopUserDesign.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopUserDesign> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return  list;
        }
        return null;
    }

    @Override
    public ShopUserDesign getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopUserDesign> getByShopIdAndDate(Integer shopId, Date date) {
        Example example=new Example(ShopUserDesign.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(date!=null){
            criteria.andGreaterThanOrEqualTo("createTime",date);
        }
        List<ShopUserDesign> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return  list;
        }
        return null;
    }
}
