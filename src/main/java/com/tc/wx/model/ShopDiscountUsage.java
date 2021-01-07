package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopDiscountUsage {
    @Id
    private Integer id;

    private Integer shopId;

    private Integer discountId;

    private Integer userId;

    private String title;

    private Double discountType;

    private Double discountLevel;

    private Double useLevel;

    private Integer fullReduction;

    private Integer isCollectedNum;

    private Integer isUsed;

    private Date startTime;

    private Date endTime;

    private Date createTime;

    private Integer isDel;

    private String onlyId;

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

    public Integer getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Integer discountId) {
        this.discountId = discountId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Double getDiscountType() {
        return discountType;
    }

    public void setDiscountType(Double discountType) {
        this.discountType = discountType;
    }

    public Double getDiscountLevel() {
        return discountLevel;
    }

    public void setDiscountLevel(Double discountLevel) {
        this.discountLevel = discountLevel;
    }

    public Double getUseLevel() {
        return useLevel;
    }

    public void setUseLevel(Double useLevel) {
        this.useLevel = useLevel;
    }

    public Integer getFullReduction() {
        return fullReduction;
    }

    public void setFullReduction(Integer fullReduction) {
        this.fullReduction = fullReduction;
    }

    public Integer getIsCollectedNum() {
        return isCollectedNum;
    }

    public void setIsCollectedNum(Integer isCollectedNum) {
        this.isCollectedNum = isCollectedNum;
    }

    public Integer getIsUsed() {
        return isUsed;
    }

    public void setIsUsed(Integer isUsed) {
        this.isUsed = isUsed;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public String getOnlyId() {
        return onlyId;
    }

    public void setOnlyId(String onlyId) {
        this.onlyId = onlyId == null ? null : onlyId.trim();
    }
}