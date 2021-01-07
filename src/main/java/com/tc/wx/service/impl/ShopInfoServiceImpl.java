package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopInfoMapper;
import com.tc.wx.model.ShopCase;
import com.tc.wx.model.ShopInfo;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.service.ShopInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.validation.Valid;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/10 18:15
 */
@Service
public class ShopInfoServiceImpl implements ShopInfoService {
    @Autowired(required = false)
    private ShopInfoMapper mapper;


    @Override
    public ShopInfo getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateById(@Valid ShopInfo info) {
        return mapper.updateByPrimaryKeySelective(info);
    }

    @Override
    public List<ShopInfo> getByShopIdAndTitle(Integer shopId, String title) {
        return null;
    }

    @Override
    public List<ShopInfo> getByShopIdAndIsShow(Integer shopId, Integer isShow) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("isShow",isShow);
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopInfo> getByShopId(Integer shopId) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int modifyById(ShopInfo info) {
        return mapper.updateByPrimaryKeySelective(info);
    }

    @Override
    public List<ShopInfo> getByShopIdAndOrderAndTypeId(Integer shopId, String orderKey, Integer typeId) {

        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("typeId",typeId);
        if(orderKey!=null&&!"".equals(orderKey)){
            if(orderKey.equals("1")){
                example.orderBy("createTime").desc();
            }else if(orderKey.equals("2")){
                example.orderBy("isCustomerNum").desc();
            }else if(orderKey.equals("3")){
                example.orderBy("isUsedNum").desc();
            }
        }
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<ShopInfo> getByShopIdAndOrderAndTypeIdAndIsIndex(Integer shopId, String orderKey, Integer typeId, String isIndex) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("typeId",typeId);
        criteria.andEqualTo("isIndex",isIndex);
        if(orderKey!=null&&!"".equals(orderKey)){
            if(orderKey.equals("1")){
                example.orderBy("createTime").desc();
            }else if(orderKey.equals("2")){
                example.orderBy("isCustomerNum").desc();
            }else if(orderKey.equals("3")){
                example.orderBy("isUsedNum").desc();
            }
        }
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }

    @Override
    public ShopInfo getByOaInfoId(Integer oaInfoId) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaInfoId",oaInfoId);
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopInfo> getByShopIdAndIsReport(Integer shopId, String isReport) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("isReport",isReport);
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }

    @Override
    public ShopInfo getByShopIdAndOaInfoId(Integer shopId, Integer oaInfoId) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("oaInfoId",oaInfoId);
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopInfo> getByShopIdAndOrder(Integer shopId, String orderKey) {
        Example example=new Example(ShopInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(orderKey!=null&&!"".equals(orderKey)){
            if(orderKey.equals("1")){
                example.orderBy("createTime").desc();
            }else if(orderKey.equals("2")){
                example.orderBy("isCustomerNum").desc();
            }else if(orderKey.equals("3")){
                example.orderBy("isUsedNum").desc();
            }
        }
        List<ShopInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopInfo info) {
        return mapper.insertSelective(info);
    }

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }
}
