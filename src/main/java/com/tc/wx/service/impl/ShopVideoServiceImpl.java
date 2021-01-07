package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopVideoMapper;
import com.tc.wx.model.ShopVideo;
import com.tc.wx.service.ShopVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:34
 */
@Service
public class ShopVideoServiceImpl implements ShopVideoService {
    @Autowired
    private ShopVideoMapper mapper;


    @Override
    public ShopVideo getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopVideo> getByShopIdAndOrderKey(Integer shopId, String orderKey) {
        Example example = new Example(ShopVideo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        List<ShopVideo> list = mapper.selectByExample(example);
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
    public int insert(ShopVideo video) {
        return mapper.insertSelective(video);
    }

    @Override
    public int modify(ShopVideo video) {
        return mapper.updateByPrimaryKeySelective(video);
    }

    @Override
    public List<ShopVideo> getByShopId(Integer shopId) {
        Example example = new Example(ShopVideo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        List<ShopVideo> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public List<ShopVideo> getByShopIdAndTypeIdAndTimeAndNum(Integer shopId, Integer typeId, Integer orderTime, Integer orderNum) {
        Example example = new Example(ShopVideo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        criteria.andEqualTo("typeId", typeId);
        if (orderTime == 1) {
            example.orderBy("createTime").asc();
        } else {
            example.orderBy("createTime").desc();
        }
        if (orderNum == 1) {
            example.orderBy("beCustmerNum").asc();
        } else {
            example.orderBy("beCustmerNum").desc();
        }

        List<ShopVideo> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }
}
