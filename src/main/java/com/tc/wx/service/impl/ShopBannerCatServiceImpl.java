package com.tc.wx.service.impl;

import com.tc.wx.dao.ShopBannerCatMapper;
import com.tc.wx.model.ShopBannerCat;
import com.tc.wx.service.ShopBannerCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author DELL
 * @date 2020/9/24 15:42
 */
@Service
public class ShopBannerCatServiceImpl implements ShopBannerCatService {
    @Autowired
    private ShopBannerCatMapper mapper;

    @Override
    public ShopBannerCat getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }
}
