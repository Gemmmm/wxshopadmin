package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopCaseMapper;
import com.tc.wx.model.ShopCase;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.service.ShopCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:34
 */
@Service
public class ShopCaseServiceImpl implements ShopCaseService {
    @Autowired(required = false)
    private ShopCaseMapper mapper;
    @Override
    public ShopCase getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
    @Override
    public List<ShopCase> getByShopId(Integer shopId) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }


    @Override
    public List<ShopCase> getByShopIdAndOrderkey(Integer shopId, String orderKey) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(orderKey!=null&&!"".equals(orderKey)){
            if(orderKey.equals("1")){
                example.orderBy("createTime").desc();
            }else if(orderKey.equals("2")){
                example.orderBy("lookNum").desc();
            }else if(orderKey.equals("3")){
                example.orderBy("upNum").desc();
            }
        }
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int modify(ShopCase cases) {
        return mapper.updateByPrimaryKeySelective(cases);
    }

    @Override
    public List<ShopCase> getByShopIdAndIsShow(Integer shopId, Integer isShow) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("isShow",isShow);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopCase getByOaCaseId(Integer oaCaseId) {

        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaCaseId",oaCaseId);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }

        return null;
    }

    @Override
    public ShopCase getByShopIdAndOaCaseId(Integer shopId, Integer oaCaseId) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaCaseId",oaCaseId);
        criteria.andEqualTo("shopId",shopId);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopCase> getByShopIdAndTypeIdAndIsShowAndOrderKey(Integer shopId, Integer typeId, Integer isShow, String orderKey) {

        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        if(typeId!=null&&!"".equals(typeId)){
            criteria.andEqualTo("typeId",typeId);
        }
        if(isShow!=null&&!"".equals(isShow)){
            criteria.andEqualTo("isShow",isShow);
        }
        if(orderKey!=null&&!"".equals(orderKey)){
            if(orderKey.equals("1")){
                example.orderBy("createTime").desc();
            }else if(orderKey.equals("2")){
                example.orderBy("lookNum").desc();
            }else if(orderKey.equals("3")){
                example.orderBy("upNum").desc();
            }
        }
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopCase getByShopIdAndTitleAndImgAndCreateTime(Integer shopId, String title, String img, Date date) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("title",title);
        criteria.andEqualTo("img",img);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public int deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<ShopCase> getByShopIdAndTitle(Integer shopId, String title) {
        Example example=new Example(ShopCase.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        criteria.andEqualTo("title",title);
        List<ShopCase> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopCase cases) {
        return mapper.insertSelective(cases);
    }
}
