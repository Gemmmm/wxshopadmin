package com.tc.wx.service;

import com.tc.wx.dao.ShopVideoMapper;
import com.tc.wx.model.ShopVideo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:34
 */
public interface ShopVideoService {

    public ShopVideo getById(Integer id);

    public List<ShopVideo> getByShopIdAndOrderKey(Integer shopId, String orderKey) ;

    public int deleteById(Integer id);

    public int insert(ShopVideo video);

    public int modify(ShopVideo video);

    List<ShopVideo> getByShopId(Integer shopId);

    List<ShopVideo> getByShopIdAndTypeIdAndTimeAndNum(Integer shopId, Integer typeId, Integer orderTime, Integer orderNum);
}
