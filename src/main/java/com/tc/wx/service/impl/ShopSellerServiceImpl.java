package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopSellerMapper;
import com.tc.wx.model.ShopSeller;
import com.tc.wx.service.ShopSellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.validation.Valid;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 20:33
 */
@Service
public class ShopSellerServiceImpl implements ShopSellerService {
    @Autowired(required = false)
    private ShopSellerMapper mapper;

    @Override
    public ShopSeller getByOpenid(String openid) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("wxopenid",openid);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public int updateById(ShopSeller seller) {
        return mapper.updateByPrimaryKeySelective(seller);
    }

    @Override
    public ShopSeller getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public ShopSeller getByPhoneAndSid(String phone,String sid) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("phone",phone);
        criteria.andEqualTo("sid",sid);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public ShopSeller getByToken(String token) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("token",token);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopSeller> getByPhone(String phone) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("phone",phone);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }


    @Override
    public ShopSeller findSeller(String sellername, String password) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sellername",sellername);
        criteria.andEqualTo("password",password);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopSeller> getAll() {
        return mapper.selectAll();
    }

    @Override
    public int updatePassword(ShopSeller loginAdmin) {
        return mapper.updateByPrimaryKeySelective(loginAdmin);
    }

    @Override
    public ShopSeller getBySId(String sid) {
        Example example=new Example(ShopSeller.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("sid",sid);
        List<ShopSeller> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public int insert(@Valid ShopSeller seller) {
        return mapper.insertSelective(seller);
    }
}
