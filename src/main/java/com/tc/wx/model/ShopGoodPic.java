package com.tc.wx.model;

import javax.persistence.Id;

public class ShopGoodPic {
    @Id
    private Integer id;

    private Integer goodId;

    private String img;

    private String sorting;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getSorting() {
        return sorting;
    }

    public void setSorting(String sorting) {
        this.sorting = sorting == null ? null : sorting.trim();
    }
}