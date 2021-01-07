package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserFollowMapper;
import com.tc.wx.model.ShopUserFollow;
import com.tc.wx.service.ShopUserFollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 9:18
 */
@Service
public class ShopUserFollowServiceImpl implements ShopUserFollowService {
    @Autowired(required = false)
    private ShopUserFollowMapper mapper;

    @Override
    public List<ShopUserFollow> getByShopUserId(Integer userId) {
        Example example=new Example(ShopUserFollow.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopUserId",userId);
        List<ShopUserFollow> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopUserFollow shopUserFollow) {
        return mapper.insertSelective(shopUserFollow);
    }

    @Override
    public List<ShopUserFollow> getByShopIdAndShopUserId(Integer shopId, Integer userId) {
        Example example=new Example(ShopUserFollow.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopUserId",userId);
        criteria.andEqualTo("shopId",shopId);
        List<ShopUserFollow> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserFollow> getByShopAndDate(Integer shopId, Date date) {
        Example example=new Example(ShopUserFollow.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(date!=null){
            criteria.andGreaterThanOrEqualTo("createTime",date);
        }
        example.orderBy("createTime").desc();
        List<ShopUserFollow> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
