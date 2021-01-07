package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopInfoTypeMapper;
import com.tc.wx.model.ShopInfoType;
import com.tc.wx.service.ShopInfoTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 13:38
 */
@Service
public class ShopInfoTypeServiceImpl implements ShopInfoTypeService {
    @Autowired
    private ShopInfoTypeMapper mapper;

    @Override
    public ShopInfoType getById(Integer id) {

        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<ShopInfoType> getByShopId(Integer shopId) {
        Example example=new Example(ShopInfoType.class);
        example.orderBy("sorting").asc();
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopInfoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public Integer getMaxSort() {
        Example example=new Example(ShopInfoType.class);
        example.orderBy("sorting").desc();
        List<ShopInfoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0).getSorting();
        }
        return 0;
    }

    @Override
    public ShopInfoType getByShopIdAndName(Integer shopId,String name) {
        Example example=new Example(ShopInfoType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("name",name);
        criteria.andEqualTo("shopId",shopId);
        List<ShopInfoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopInfoType> getByShopIdAndIsShow(Integer shopId, Integer isShow) {
        Example example=new Example(ShopInfoType.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("isShow",isShow);
        List<ShopInfoType> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopInfoType infoType) {
        return mapper.insertSelective(infoType);
    }

    @Override
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Integer modify(ShopInfoType infoType) {
        return mapper.updateByPrimaryKeySelective(infoType);
    }
}
