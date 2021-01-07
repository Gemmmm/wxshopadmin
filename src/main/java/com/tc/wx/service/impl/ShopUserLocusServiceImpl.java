package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopUserLocusMapper;
import com.tc.wx.model.ShopUserAnalysis;
import com.tc.wx.model.ShopUserFollow;
import com.tc.wx.model.ShopUserLocus;
import com.tc.wx.service.ShopUserLocusService;
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
public class ShopUserLocusServiceImpl implements ShopUserLocusService {
    @Autowired
    private ShopUserLocusMapper mapper;

    @Override
    public List<ShopUserLocus> getByShopUserId(Integer userId) {
        Example example=new Example(ShopUserLocus.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopUserId",userId);
        List<ShopUserLocus> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserLocus> getbyShopId(Integer shopId) {
        Example example=new Example(ShopUserLocus.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopUserLocus> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserLocus> getByShopIdAndShopUserId(Integer shopId, Integer shopUserId) {
        Example example=new Example(ShopUserLocus.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("shopUserId",shopUserId);
        List<ShopUserLocus> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserLocus> getByShopIdAndDateAndLookType(Integer shopId, Date date, String lookType) {
        Example example=new Example(ShopUserLocus.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(date!=null){
            criteria.andGreaterThanOrEqualTo("createTime",date);
        }
        if("1".equals(lookType)){
            criteria.andEqualTo("lookType","8");
        }
        List<ShopUserLocus> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopUserLocus> getbyShopIdAndDate(Integer shopId, Date date) {
        Example example=new Example(ShopUserLocus.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(date!=null){
            criteria.andGreaterThanOrEqualTo("createTime",date);
        }
        List<ShopUserLocus> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
