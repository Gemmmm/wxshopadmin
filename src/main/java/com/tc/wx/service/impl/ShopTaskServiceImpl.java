package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopTaskMapper;
import com.tc.wx.model.ShopTask;
import com.tc.wx.service.ShopTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 13:39
 */
@Service
public class ShopTaskServiceImpl implements ShopTaskService {
    @Autowired
    private ShopTaskMapper mapper;
    @Override
    public List<ShopTask> getByShopId(Integer shopId) {
        Example example=new Example(ShopTask.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId",shopId);
        List<ShopTask> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
    }

    @Override
    public int insert(ShopTask shopTask) {
        return mapper.insertSelective(shopTask);
    }

    @Override
    public Integer deleteById(Integer id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public ShopTask getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public int modifyById(ShopTask task) {
        return mapper.updateByPrimaryKeySelective(task);
    }
}
