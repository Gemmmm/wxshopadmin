package com.tc.wx.service;

import com.tc.wx.dao.ShopVideoMapper;
import com.tc.wx.dao.ShopVideoTypeMapper;
import com.tc.wx.model.ShopVideo;
import com.tc.wx.model.ShopVideoType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 13:38
 */
public interface ShopVideoTypeService {
    public List<ShopVideoType> getByShopId(Integer shopId) ;

    public ShopVideoType getById(Integer id);
}
