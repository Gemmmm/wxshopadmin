package com.tc.wx.service.impl;

import com.tc.wx.dao.OaInfoMapper;
import com.tc.wx.model.OaInfo;
import com.tc.wx.service.OaInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/9/11 15:41
 */
@Service
public class OaInfoServiceImpl implements OaInfoService {
    @Autowired(required = false)
    private OaInfoMapper mapper;
    @Override
    public List<OaInfo> getByOaId(Integer oaId) {
        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public OaInfo getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<OaInfo> getByOaIdAndIsReport(Integer oaUserId, String isMustReport) {
        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaUserId);
        criteria.andEqualTo("isMustReport",isMustReport);
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }

    @Override
    public List<OaInfo> getByShopIdAndOrder(Integer oaId, String orderKey) {
        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        if("1".equals(orderKey)){
            example.orderBy("createTime").desc();
        }else if("2".equals(orderKey)){
            example.orderBy("isCustomerNum").desc();
        }else if("3".equals(orderKey)){
            example.orderBy("isUsedNum").desc();
        }
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<OaInfo> getByOaIdAndIsShow(Integer oaId, Integer isShow) {
        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        criteria.andEqualTo("isShow",isShow);
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public List<OaInfo> getByOaIdAndOrderAndTypeId(Integer oaId, String orderKey, Integer typeId) {

        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        criteria.andEqualTo("typeId",typeId);
        if("1".equals(orderKey)){
            example.orderBy("createTime").desc();
        }else if("2".equals(orderKey)){
            example.orderBy("isCustomerNum").desc();
        }else if("3".equals(orderKey)){
            example.orderBy("isUsedNum").desc();
        }
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }

    @Override
    public List<OaInfo> getByOaIdAndOrderAndTypeIdAndIsShow(Integer oaId, String orderKey, Integer typeId, String isShow) {
        Example example=new Example(OaInfo.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("oaId",oaId);
        if(typeId!=null&&!"".equals(typeId)){
            criteria.andEqualTo("typeId",typeId);
        }
        if(isShow!=null&&!"".equals(isShow)){
            criteria.andEqualTo("isShow",isShow);
        }


        if("1".equals(orderKey)){
            example.orderBy("createTime").desc();
        }else if("2".equals(orderKey)){
            example.orderBy("isCustomerNum").desc();
        }else if("3".equals(orderKey)){
            example.orderBy("isUsedNum").desc();
        }
        List<OaInfo> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }
}
