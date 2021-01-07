package com.tc.wx.model;

import javax.persistence.Id;

public class ShopBannerCat {
    @Id
    private Integer id;

    private String name;

    private Integer explain;

    private Integer ports;

    private Integer sorting;

    private Integer isShow;

    private Integer linkid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getExplain() {
        return explain;
    }

    public void setExplain(Integer explain) {
        this.explain = explain;
    }

    public Integer getPorts() {
        return ports;
    }

    public void setPorts(Integer ports) {
        this.ports = ports;
    }

    public Integer getSorting() {
        return sorting;
    }

    public void setSorting(Integer sorting) {
        this.sorting = sorting;
    }

    public Integer getIsShow() {
        return isShow;
    }

    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }

    public Integer getLinkid() {
        return linkid;
    }

    public void setLinkid(Integer linkid) {
        this.linkid = linkid;
    }
}