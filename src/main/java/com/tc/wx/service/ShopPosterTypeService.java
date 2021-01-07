package com.tc.wx.service;

import com.tc.wx.dao.ShopPosterTypeMapper;
import com.tc.wx.model.ShopPosterType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 10:59
 */
public interface ShopPosterTypeService {

    public List<ShopPosterType> getByShopIdIsShow(Integer shopId, Integer isShow) ;
    public ShopPosterType getById(Integer id);
    public List<ShopPosterType> getByShopId(Integer shopId);
}
