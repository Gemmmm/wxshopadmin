package com.tc.wx.model;

import javax.persistence.Id;
import java.util.Date;

public class ShopUser {
    @Id
    private Integer id;

    private String openid;

    private String token;

    private String brand;

    private String model;

    private String version;

    private String phonesystem;

    private String platform;

    private String sdkVersion;

    private String ip;

    private Date createTime;

    private String userType;

    private Date isUserTime;

    private String username;

    private String txImg;

    private String phone;

    private String nickName;

    private Integer lookShopNum;

    private Integer lookCardNum;

    private Date lastLookTime;

    private String province;

    private String city;

    private String country;

    private String livingroom;

    private String dinerroom;

    private String kitchen;

    private String bedroom;

    private String houseArea;

    private String budget;

    private String zxLevel;

    private String remarks;

    private String sessionKey;

    private Integer sid;

    private Integer sex;

    private Integer uid;

    private Integer oid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid == null ? null : openid.trim();
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token == null ? null : token.trim();
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version == null ? null : version.trim();
    }

    public String getPhonesystem() {
        return phonesystem;
    }

    public void setPhonesystem(String phonesystem) {
        this.phonesystem = phonesystem == null ? null : phonesystem.trim();
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform == null ? null : platform.trim();
    }

    public String getSdkVersion() {
        return sdkVersion;
    }

    public void setSdkVersion(String sdkVersion) {
        this.sdkVersion = sdkVersion == null ? null : sdkVersion.trim();
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    public Date getIsUserTime() {
        return isUserTime;
    }

    public void setIsUserTime(Date isUserTime) {
        this.isUserTime = isUserTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getTxImg() {
        return txImg;
    }

    public void setTxImg(String txImg) {
        this.txImg = txImg == null ? null : txImg.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public Integer getLookShopNum() {
        return lookShopNum;
    }

    public void setLookShopNum(Integer lookShopNum) {
        this.lookShopNum = lookShopNum;
    }

    public Integer getLookCardNum() {
        return lookCardNum;
    }

    public void setLookCardNum(Integer lookCardNum) {
        this.lookCardNum = lookCardNum;
    }

    public Date getLastLookTime() {
        return lastLookTime;
    }

    public void setLastLookTime(Date lastLookTime) {
        this.lastLookTime = lastLookTime;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getLivingroom() {
        return livingroom;
    }

    public void setLivingroom(String livingroom) {
        this.livingroom = livingroom == null ? null : livingroom.trim();
    }

    public String getDinerroom() {
        return dinerroom;
    }

    public void setDinerroom(String dinerroom) {
        this.dinerroom = dinerroom == null ? null : dinerroom.trim();
    }

    public String getKitchen() {
        return kitchen;
    }

    public void setKitchen(String kitchen) {
        this.kitchen = kitchen == null ? null : kitchen.trim();
    }

    public String getBedroom() {
        return bedroom;
    }

    public void setBedroom(String bedroom) {
        this.bedroom = bedroom == null ? null : bedroom.trim();
    }

    public String getHouseArea() {
        return houseArea;
    }

    public void setHouseArea(String houseArea) {
        this.houseArea = houseArea == null ? null : houseArea.trim();
    }

    public String getBudget() {
        return budget;
    }

    public void setBudget(String budget) {
        this.budget = budget == null ? null : budget.trim();
    }

    public String getZxLevel() {
        return zxLevel;
    }

    public void setZxLevel(String zxLevel) {
        this.zxLevel = zxLevel == null ? null : zxLevel.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public String getSessionKey() {
        return sessionKey;
    }

    public void setSessionKey(String sessionKey) {
        this.sessionKey = sessionKey == null ? null : sessionKey.trim();
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }
}