package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopPosterMapper;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.model.ShopPoster;
import com.tc.wx.service.ShopPosterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:35
 */
@Service
public class ShopPosterServiceImpl implements ShopPosterService {
    @Autowired
    private ShopPosterMapper mapper;

    @Override
    public ShopPoster getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }


    @Override
    public int modifyById(ShopPoster poster) {
        return mapper.updateByPrimaryKeySelective(poster);
    }

    @Override
    public List<ShopPoster> getByShopIdAndOrder(Integer shopId, String orderKey) {
        Example example=new Example(ShopPoster.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(orderKey!=null&&!"".equals(orderKey)) {
            if (orderKey.equals("1")) {
                example.setOrderByClause("createTime desc");
            }else if (orderKey.equals("2")) {
                example.setOrderByClause("isUsedNum asc");
            } else if (orderKey.equals("3")){
                example.setOrderByClause("isCustomerNum desc");
            }else if (orderKey.equals("4")){
                example.setOrderByClause("isCustomerNum asc");
            }
        }
        List<ShopPoster> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(ShopPoster poster) {
        return mapper.insertSelective(poster);
    }

    @Override
    public List<ShopPoster> getByExample(Integer shopId, Integer typeId, String createTime, String isCustomerNum) {
        Example example=new Example(ShopPoster.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(typeId!=null) {
            criteria.andEqualTo("typeId", typeId);
        }
        if("1".equals(createTime)){
            example.orderBy("createTime").asc();
        }else{
            example.orderBy("createTime").desc();
        }
        if("1".equals(isCustomerNum)){
            example.orderBy("isCustomerNum").asc();
        }else{
            example.orderBy("isCustomerNum").desc();
        }
        List<ShopPoster> list = mapper.selectByExample(example);

        if (list != null && list.size() > 0) {
            return list;
        }

        return null;
    }

    @Override
    public List<ShopPoster> getByShopId(Integer shopId) {
        Example example=new Example(ShopPoster.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopPoster> list = mapper.selectByExample(example);

        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }
}
