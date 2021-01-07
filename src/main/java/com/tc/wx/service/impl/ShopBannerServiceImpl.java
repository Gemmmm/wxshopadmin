package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopBannerMapper;
import com.tc.wx.model.ShopBanner;
import com.tc.wx.service.ShopBannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/24 15:36
 */
@Service
public class ShopBannerServiceImpl implements ShopBannerService {
    @Autowired
    private ShopBannerMapper mapper;

    @Override
    public List<ShopBanner> getBySid(Integer shopId) {
        Example example=new Example(ShopBanner.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sid",shopId);
        List<ShopBanner> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Integer insert(ShopBanner banner) {
        return mapper.insertSelective(banner);
    }

    @Override
    public List<ShopBanner> getBySidAndCatId(Integer shopId, Integer catId) {
        Example example=new Example(ShopBanner.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sid",shopId);
        criteria.andEqualTo("catId",catId);
        List<ShopBanner> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }
}
