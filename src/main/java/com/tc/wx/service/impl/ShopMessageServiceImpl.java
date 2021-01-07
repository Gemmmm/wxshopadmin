package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopMessageMapper;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.service.ShopMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:33
 */
@Service
public class ShopMessageServiceImpl implements ShopMessageService {
    @Autowired
    private ShopMessageMapper mapper;

    @Override
    public List<ShopMessage> getByShopId(Integer shopId) {
        Example example=new Example(ShopMessage.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopMessage> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public ShopMessage getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
}
