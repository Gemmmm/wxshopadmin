package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopUserLocus {
    @Id
    private Integer id;

    private Integer shopUserId;

    private Integer shopId;

    private Integer isShare;

    private Integer upNum;

    private Integer lookNum;

    private Integer reportNum;

    private String lookType;

    private String lookTitle;

    private Integer lookTitleId;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getShopUserId() {
        return shopUserId;
    }

    public void setShopUserId(Integer shopUserId) {
        this.shopUserId = shopUserId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getIsShare() {
        return isShare;
    }

    public void setIsShare(Integer isShare) {
        this.isShare = isShare;
    }

    public Integer getUpNum() {
        return upNum;
    }

    public void setUpNum(Integer upNum) {
        this.upNum = upNum;
    }

    public Integer getLookNum() {
        return lookNum;
    }

    public void setLookNum(Integer lookNum) {
        this.lookNum = lookNum;
    }

    public Integer getReportNum() {
        return reportNum;
    }

    public void setReportNum(Integer reportNum) {
        this.reportNum = reportNum;
    }

    public String getLookType() {
        return lookType;
    }

    public void setLookType(String lookType) {
        this.lookType = lookType == null ? null : lookType.trim();
    }

    public String getLookTitle() {
        return lookTitle;
    }

    public void setLookTitle(String lookTitle) {
        this.lookTitle = lookTitle == null ? null : lookTitle.trim();
    }

    public Integer getLookTitleId() {
        return lookTitleId;
    }

    public void setLookTitleId(Integer lookTitleId) {
        this.lookTitleId = lookTitleId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}