package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopPoster {
    @Id
    private Integer id;

    private Integer shopId;

    private Integer typeId;

    private String title;

    private Integer isUsedNum;

    private Integer isCustomerNum;

    private String img;

    private Integer sellerId;

    private Date createTime;

    private Date lastUpdateTime;

    private String content;

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

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getIsUsedNum() {
        return isUsedNum;
    }

    public void setIsUsedNum(Integer isUsedNum) {
        this.isUsedNum = isUsedNum;
    }

    public Integer getIsCustomerNum() {
        return isCustomerNum;
    }

    public void setIsCustomerNum(Integer isCustomerNum) {
        this.isCustomerNum = isCustomerNum;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}