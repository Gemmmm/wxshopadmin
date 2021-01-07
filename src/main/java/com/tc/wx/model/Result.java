package com.tc.wx.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Result {
    private Map<String, Object> map;
    /**
     *  -1 登录失效
     *  200 成功
     *  -2 操作失败
     */
    private String code;
    private String message;
    private Object object;
    private List list;
    private Integer flag;
    private Boolean empty;

    public Boolean getEmpty() {
        return empty;
    }

    public void setEmpty(Boolean empty) {
        this.empty = empty;
    }

    public Integer getFlag() {
        return flag;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Boolean isEmpty() {
        empty=(list == null || list.isEmpty()) && (map == null || map.isEmpty() && (object == null));
        return empty;

    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public void setSuccess() {
        this.code="200";
        this.message = "数据操作成功";
        this.empty=false;
    }
    /**
     *  数据为空
     */
    public void setFail() {
        this.code="-2";
        this.message = "数据为空";
        this.empty=true;
    }
    /**
     *
     * @param opt 操作
     */
    public void setSuccess(String opt) {
        this.code="200";
        this.message = "数据"+opt+"成功";
        this.empty=false;
    }
    public void setFail(String opt) {
        this.code="-2";
        this.message = "数据"+opt+"失败";
        this.empty=true;
    }
    public void setFailToken() {
        this.code="-1";
        this.message = "登录失效，请重新登录";
        this.empty=true;
    }

}
