package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopInfoGood {
    @Id
    private Integer id;

    private Integer shopInfoId;

    private Integer shopGoodId;

    private Date createTime;

    private Integer isShow;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShopInfoId() {
        return shopInfoId;
    }

    public void setShopInfoId(Integer shopInfoId) {
        this.shopInfoId = shopInfoId;
    }

    public Integer getShopGoodId() {
        return shopGoodId;
    }

    public void setShopGoodId(Integer shopGoodId) {
        this.shopGoodId = shopGoodId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIsShow() {
        return isShow;
    }

    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }
}