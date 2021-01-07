package com.tc.wx.service;

import com.tc.wx.dao.ShopTaskMapper;
import com.tc.wx.model.ShopTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 13:39
 */
public interface ShopTaskService {
    public List<ShopTask> getByShopId(Integer shopId) ;

    public int insert(ShopTask shopTask);

    public Integer deleteById(Integer id);

    public ShopTask getById(Integer id);

    public int modifyById(ShopTask task);
}
