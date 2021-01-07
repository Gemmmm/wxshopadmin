package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopInfoCaseMapper;
import com.tc.wx.model.ShopInfoCase;
import com.tc.wx.service.ShopInfoCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:40
 */
@Service
public class ShopInfoCaseServiceImpl implements ShopInfoCaseService {
    @Autowired(required = false)
    private ShopInfoCaseMapper mapper;
    @Override
    public List<ShopInfoCase> getByInfoId(Integer infoId) {
        Example example=new Example(ShopInfoCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopInfoId",infoId);
        criteria.andEqualTo("isShow",1);
        List<ShopInfoCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public Integer deleteByInfoId(Integer infoId) {
        Example example=new Example(ShopInfoCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopInfoId",infoId);
        List<ShopInfoCase> list = mapper.selectByExample(example);
       return  mapper.deleteByExample(example);
    }

    @Override
    public Integer insert(ShopInfoCase infoCase) {
        return mapper.insertSelective(infoCase);
    }

    @Override
    public int modifyByGoodId(Integer goodId, Integer isShow) {
        Example example=new Example(ShopInfoCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopGoodId",goodId);
        List<ShopInfoCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            for (ShopInfoCase shopInfoCase : list) {
                shopInfoCase.setIsShow(isShow);
                mapper.updateByExampleSelective(shopInfoCase,example);
            }
        }
        return 0;
    }
}
