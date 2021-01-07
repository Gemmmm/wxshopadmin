package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopUserLabel {
    @Id
    private Integer id;

    private Integer shopId;

    private Integer shopUserId;

    private Integer labelId;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getShopUserId() {
        return shopUserId;
    }

    public void setShopUserId(Integer shopUserId) {
        this.shopUserId = shopUserId;
    }

    public Integer getLabelId() {
        return labelId;
    }

    public void setLabelId(Integer labelId) {
        this.labelId = labelId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}