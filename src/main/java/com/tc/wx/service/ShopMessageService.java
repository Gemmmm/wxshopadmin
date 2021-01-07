package com.tc.wx.service;

import com.tc.wx.dao.ShopMessageMapper;
import com.tc.wx.model.ShopMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/11 21:33
 */
public interface ShopMessageService {

    public List<ShopMessage> getByShopId(Integer shopId) ;

    public ShopMessage getById(Integer id);
}
