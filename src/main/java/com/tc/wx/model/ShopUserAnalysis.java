package com.tc.wx.model;

import javax.persistence.Id;

public class ShopUserAnalysis {
    @Id
    private Integer id;

    private Integer shopId;

    private Integer shopUserId;

    private Integer lookShopNum;

    private Integer askNum;

    private Integer lookGoodNum;

    private Integer lookCaseNum;

    private Integer lookVideoNum;

    private Integer lookInfoNum;

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

    public Integer getLookShopNum() {
        return lookShopNum;
    }

    public void setLookShopNum(Integer lookShopNum) {
        this.lookShopNum = lookShopNum;
    }

    public Integer getAskNum() {
        return askNum;
    }

    public void setAskNum(Integer askNum) {
        this.askNum = askNum;
    }

    public Integer getLookGoodNum() {
        return lookGoodNum;
    }

    public void setLookGoodNum(Integer lookGoodNum) {
        this.lookGoodNum = lookGoodNum;
    }

    public Integer getLookCaseNum() {
        return lookCaseNum;
    }

    public void setLookCaseNum(Integer lookCaseNum) {
        this.lookCaseNum = lookCaseNum;
    }

    public Integer getLookVideoNum() {
        return lookVideoNum;
    }

    public void setLookVideoNum(Integer lookVideoNum) {
        this.lookVideoNum = lookVideoNum;
    }

    public Integer getLookInfoNum() {
        return lookInfoNum;
    }

    public void setLookInfoNum(Integer lookInfoNum) {
        this.lookInfoNum = lookInfoNum;
    }
}