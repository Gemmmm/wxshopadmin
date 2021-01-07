package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopGoodMapper;
import com.tc.wx.model.ShopCase;
import com.tc.wx.model.ShopGood;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.service.ShopGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 9:19
 */
@Service
public class ShopGoodServiceImpl implements ShopGoodService {
    @Autowired(required = false)
    private ShopGoodMapper mapper;

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(ShopGood good) {
        return mapper.insertSelective(good);
    }


    @Override
    public List<ShopGood> getByShopId(Integer shopId) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods;
        }
        return null;
    }


    @Override
    public ShopGood getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }


    @Override
    public List<ShopGood> getByShopIdAGoodName(Integer shopId, String goodName) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        criteria.andEqualTo("goodName", goodName);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods;
        }
        return null;
    }


    @Override
    public List<ShopGood> getByShopIdAndIsShow(Integer shopId, Integer isShow) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        criteria.andEqualTo("isShow", isShow);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods;
        }
        return null;
    }

    @Override
    public int modifyById(ShopGood good) {
        return mapper.updateByPrimaryKeySelective(good);
    }

    @Override
    public List<ShopGood> getByTypeId(Integer typeId) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("typeId", typeId);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods;
        }
        return null;
    }


    @Override
    public ShopGood getbyOaShopIdAndGoodId(Integer shopId, Integer oaGoodId) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaGoodId", oaGoodId);
        criteria.andEqualTo("shopId", shopId);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods.get(0);
        }
        return null;
    }

    @Override
    public ShopGood getByShopIdAndNameAndImgAndCreateTime(Integer shopId, String goodName, String goodImg, Date date) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        criteria.andEqualTo("goodName", goodName);
        criteria.andEqualTo("goodImg", goodImg);
        criteria.andEqualTo("createTime", date);
        List<ShopGood> shopGoods = mapper.selectByExample(example);
        if (shopGoods != null && shopGoods.size() > 0) {
            return shopGoods.get(0);
        }

        return null;
    }

    @Override
    public List<ShopGood> getByShopIdAndTypeIdAndOrderKeyAndIsShow(Integer shopId, Integer typeId, String orderKey, Integer isShow) {
        Example example = new Example(ShopGood.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        if (typeId != null && typeId != 0) {
            criteria.andEqualTo("goodTypeId", typeId);
        }
        if (isShow != null&&!"".equals(isShow)) {
            criteria.andEqualTo("isShow", isShow);
        }
        if ("1".equals(orderKey)) {
            example.orderBy("createTime").desc();
        } else if ("2".equals(orderKey)) {
            example.orderBy("lookNum").desc();
        } else if ("3".equals(orderKey)) {
            example.orderBy("upNum").desc();
        }
        List<ShopGood> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

}
