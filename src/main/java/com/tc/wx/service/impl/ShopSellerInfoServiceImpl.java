package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopSellerInfoMapper;
import com.tc.wx.model.ShopSellerInfo;
import com.tc.wx.service.ShopSellerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:33
 */
@Service
public class ShopSellerInfoServiceImpl implements ShopSellerInfoService {
    @Autowired
    private ShopSellerInfoMapper mapper;
    @Override
    public ShopSellerInfo getBySId(String sid) {
        Example example=new Example(ShopSellerInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sid",sid);
        List<ShopSellerInfo> list= mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopSellerInfo> getAllByCompany(String shopName) {
        Example example=new Example(ShopSellerInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("company",shopName);
        List<ShopSellerInfo> list= mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopSellerInfo sellerInfo) {
        return 0;
    }

    @Override
    public int updateById(ShopSellerInfo sellerInfo) {
        return mapper.updateByPrimaryKeySelective(sellerInfo);
    }

}
