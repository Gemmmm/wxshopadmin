package com.tc.wx.service;

import com.tc.wx.dao.ShopPosterMapper;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.model.ShopPoster;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:35
 */
public interface ShopPosterService {

    public ShopPoster getById(Integer id);

    public int modifyById(ShopPoster poster);
    public List<ShopPoster> getByShopIdAndOrder(Integer shopId, String orderKey) ;

    public int deleteById(Integer id);
    public int insert(ShopPoster poster) ;

    List<ShopPoster> getByExample(Integer shopId, Integer typeId, String createTime, String isCustomerNum);

    List<ShopPoster> getByShopId(Integer shopId);
}
