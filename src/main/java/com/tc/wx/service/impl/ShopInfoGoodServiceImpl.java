package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopInfoCaseMapper;
import com.tc.wx.dao.ShopInfoGoodMapper;
import com.tc.wx.model.ShopInfo;
import com.tc.wx.model.ShopInfoCase;
import com.tc.wx.model.ShopInfoGood;
import com.tc.wx.service.ShopInfoGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:39
 */
@Service
public class ShopInfoGoodServiceImpl implements ShopInfoGoodService {
    @Autowired(required = false)
    private ShopInfoGoodMapper mapper;
    @Override
    public List<ShopInfoGood> getByInfoId(Integer id) {
        Example example=new Example(ShopInfoGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopInfoId",id);
        criteria.andEqualTo("isShow",1);
        List<ShopInfoGood> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public Integer deleteByInfoId(Integer InfoId) {
        Example example=new Example(ShopInfoGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopInfoId",InfoId);
        return   mapper.deleteByExample(example);
    }

    @Override
    public Integer insert(ShopInfoGood infoGood) {
        return mapper.insertSelective(infoGood);
    }

    @Override
    public int modifyByGoodId(Integer goodId, Integer isShow) {
        Example example=new Example(ShopInfoGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopGoodId",goodId);
        List<ShopInfoGood> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            for (ShopInfoGood shopInfoGood : list) {
                shopInfoGood.setIsShow(isShow);
                mapper.updateByExampleSelective(shopInfoGood,example);
            }
        }
        return 0;
    }

}
