package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopDiscount {
    @Id
    private Integer id;

    private Integer shopId;

    private Integer shopSellerId;

    private String title;

    private Integer type;

    private Integer discountType;

    private Double discountLevel;

    private Double useLevel;

    private Integer fullReduction;

    private Integer number;

    private Integer limitedNum;

    private Integer isMore;

    private Integer isUsedNum;

    private Integer isCollectedNum;

    private Integer validType;

    private Date startTime;

    private Date endTime;

    private Integer validDayNum;

    private String ruleIntro;

    private Date createTime;

    private Integer idDel;

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

    public Integer getShopSellerId() {
        return shopSellerId;
    }

    public void setShopSellerId(Integer shopSellerId) {
        this.shopSellerId = shopSellerId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getDiscountType() {
        return discountType;
    }

    public void setDiscountType(Integer discountType) {
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

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getLimitedNum() {
        return limitedNum;
    }

    public void setLimitedNum(Integer limitedNum) {
        this.limitedNum = limitedNum;
    }

    public Integer getIsMore() {
        return isMore;
    }

    public void setIsMore(Integer isMore) {
        this.isMore = isMore;
    }

    public Integer getIsUsedNum() {
        return isUsedNum;
    }

    public void setIsUsedNum(Integer isUsedNum) {
        this.isUsedNum = isUsedNum;
    }

    public Integer getIsCollectedNum() {
        return isCollectedNum;
    }

    public void setIsCollectedNum(Integer isCollectedNum) {
        this.isCollectedNum = isCollectedNum;
    }

    public Integer getValidType() {
        return validType;
    }

    public void setValidType(Integer validType) {
        this.validType = validType;
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

    public Integer getValidDayNum() {
        return validDayNum;
    }

    public void setValidDayNum(Integer validDayNum) {
        this.validDayNum = validDayNum;
    }

    public String getRuleIntro() {
        return ruleIntro;
    }

    public void setRuleIntro(String ruleIntro) {
        this.ruleIntro = ruleIntro == null ? null : ruleIntro.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIdDel() {
        return idDel;
    }

    public void setIdDel(Integer idDel) {
        this.idDel = idDel;
    }
}