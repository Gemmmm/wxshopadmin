package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopTask {
    @Id
    private Integer id;

    private Integer shopId;

    private String title;

    private String content;

    private String isSpecified;

    private String specifiedIdList;

    private Integer newClueNum;

    private Integer newSpreadNum;

    private Integer newPhoneNum;

    private Integer newReportNum;

    private String timeLimitType;

    private Date startTime;

    private Date endTime;

    private String remindType;

    private String executor;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getIsSpecified() {
        return isSpecified;
    }

    public void setIsSpecified(String isSpecified) {
        this.isSpecified = isSpecified == null ? null : isSpecified.trim();
    }

    public String getSpecifiedIdList() {
        return specifiedIdList;
    }

    public void setSpecifiedIdList(String specifiedIdList) {
        this.specifiedIdList = specifiedIdList == null ? null : specifiedIdList.trim();
    }

    public Integer getNewClueNum() {
        return newClueNum;
    }

    public void setNewClueNum(Integer newClueNum) {
        this.newClueNum = newClueNum;
    }

    public Integer getNewSpreadNum() {
        return newSpreadNum;
    }

    public void setNewSpreadNum(Integer newSpreadNum) {
        this.newSpreadNum = newSpreadNum;
    }

    public Integer getNewPhoneNum() {
        return newPhoneNum;
    }

    public void setNewPhoneNum(Integer newPhoneNum) {
        this.newPhoneNum = newPhoneNum;
    }

    public Integer getNewReportNum() {
        return newReportNum;
    }

    public void setNewReportNum(Integer newReportNum) {
        this.newReportNum = newReportNum;
    }

    public String getTimeLimitType() {
        return timeLimitType;
    }

    public void setTimeLimitType(String timeLimitType) {
        this.timeLimitType = timeLimitType == null ? null : timeLimitType.trim();
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

    public String getRemindType() {
        return remindType;
    }

    public void setRemindType(String remindType) {
        this.remindType = remindType == null ? null : remindType.trim();
    }

    public String getExecutor() {
        return executor;
    }

    public void setExecutor(String executor) {
        this.executor = executor == null ? null : executor.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}