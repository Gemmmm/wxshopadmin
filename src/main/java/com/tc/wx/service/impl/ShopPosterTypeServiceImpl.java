package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopPosterTypeMapper;
import com.tc.wx.model.ShopPosterType;
import com.tc.wx.service.ShopPosterTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 10:59
 */
@Service
public class ShopPosterTypeServiceImpl implements ShopPosterTypeService {
    @Autowired
    private ShopPosterTypeMapper mapper;

    @Override
    public List<ShopPosterType> getByShopIdIsShow(Integer shopId, Integer isShow) {
        Example example = new Example(ShopPosterType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        criteria.andEqualTo("isShow", isShow);
        List<ShopPosterType> list = mapper.selectByExample(example);
        if (list != null && list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public ShopPosterType getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopPosterType> getByShopId(Integer shopId) {
        Example example=new Example(ShopPosterType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopPosterType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;


    }
}
