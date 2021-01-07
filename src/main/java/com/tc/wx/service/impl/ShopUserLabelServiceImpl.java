package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserLabelMapper;
import com.tc.wx.model.ShopUserLabel;
import com.tc.wx.model.ShopUserLocus;
import com.tc.wx.service.ShopUserLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 9:18
 */
@Service
public class ShopUserLabelServiceImpl implements ShopUserLabelService {
    @Autowired(required = false)
    private ShopUserLabelMapper mapper;

    @Override
    public List<ShopUserLabel> getByShopUserId(Integer userId) {
        Example example=new Example(ShopUserLabel.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopUserId",userId);
        List<ShopUserLabel> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopUserLabel userLabel) {
        return mapper.insertSelective(userLabel);
    }

    @Override
    public List<ShopUserLabel> getByShopIdAndShopUserId(Integer shopId, Integer id) {
        Example example=new Example(ShopUserLabel.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("shopUserId",id);
        List<ShopUserLabel> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopUserLabel getByExample(ShopUserLabel label) {
        Example example=new Example(ShopUserLabel.class);
        Example.Criteria criteria = example.createCriteria();
        Integer shopId = label.getShopId();
        if(shopId!=null){

            criteria.andEqualTo("shopId",shopId);
        }
        Integer labelId = label.getLabelId();
        if(labelId!=null){
            criteria.andEqualTo("labelId",labelId);
        }
        Integer shopUserId = label.getShopUserId();
        if(shopUserId!=null){
            criteria.andEqualTo("shopUserId",shopUserId);
        }
        List<ShopUserLabel> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public Integer deleteByUserIdAndLabelId(Integer shopUserId, Integer labelId) {
        Example example=new Example(ShopUserLabel.class);
        Example.Criteria criteria = example.createCriteria();
        if(shopUserId!=null){

            criteria.andEqualTo("shopUserId",shopUserId);
        }
        if(labelId!=null){
            criteria.andEqualTo("labelId",labelId);
        }

        return mapper.deleteByExample(example);
    }

    @Override
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }
}
