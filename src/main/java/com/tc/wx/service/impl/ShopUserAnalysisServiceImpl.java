package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserAnalysisMapper;
import com.tc.wx.model.ShopUserAnalysis;
import com.tc.wx.service.ShopUserAnalysisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 9:17
 */
@Service
public class ShopUserAnalysisServiceImpl implements ShopUserAnalysisService {
    @Autowired
    private ShopUserAnalysisMapper mapper;

    @Override
    public ShopUserAnalysis getByShopUserId(Integer userId) {
        Example example=new Example(ShopUserAnalysis.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopUserId",userId);
        List<ShopUserAnalysis> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public int modify(ShopUserAnalysis analysis) {
        return mapper.updateByPrimaryKeySelective(analysis);
    }

    @Override
    public List<ShopUserAnalysis> getByShopId(Integer shopId) {
        Example example=new Example(ShopUserAnalysis.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopUserAnalysis> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;

    }

    @Override
    public ShopUserAnalysis getShopIdAndByShopUserId(Integer shopId, Integer shopUserId) {
        Example example=new Example(ShopUserAnalysis.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("shopUserId",shopUserId);
        List<ShopUserAnalysis> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }
}
