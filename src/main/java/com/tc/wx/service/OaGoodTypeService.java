package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.OaGoodType;

public interface OaGoodTypeService {

	/**
	 *
	 * @param id 平台商品编号
	 * @return 平台商品
	 */
	OaGoodType getById(Integer id);
	/**
	 *
	 * @param oaId 企业用户编号
	 * @return 企业用户信息
	 */
	List<OaGoodType> getByOaId(Integer oaId);

}
