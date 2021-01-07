package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopMessageDetailMapper;
import com.tc.wx.dao.ShopMessageMapper;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.model.ShopMessageDetail;
import com.tc.wx.service.ShopMessageDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:33
 */
@Service
public class ShopMessageDetailServiceImpl  implements ShopMessageDetailService {
    @Autowired
    private ShopMessageDetailMapper mapper;
    @Override
    public ShopMessageDetail getOneByMessageId(Integer id) {
        Example example=new Example(ShopMessageDetail.class);
        example.setOrderByClause("create_time desc");
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("message_id",id);
        List<ShopMessageDetail> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ShopMessageDetail> getByMessageId(Integer id) {
        Example example=new Example(ShopMessageDetail.class);
        example.setOrderByClause("createTime desc");
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("messageId",id);
        List<ShopMessageDetail> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0) {
            return list;
        }
        return null;
    }
}
