package com.tc.wx.service;

import com.tc.wx.model.TLabel;

import java.util.List;

public interface LabelService {

    /**
     * @param id 标签编号
     * @return 标签信息
     */
    TLabel getById(Integer id);

    /**
     * @return 所有标签信息，按时间降序排列
     */
    List<TLabel> getAll();

    /**
     *
     * @param shopId 门店编号
     * @return 门店下的标签信息,按时间降序排列
     */
    List<TLabel> getByShopId(Integer shopId);

    /**
     *
     * @param TLabel 标签信息库
     * @return 插入是成功
     */
    Integer insert(TLabel TLabel);

}
