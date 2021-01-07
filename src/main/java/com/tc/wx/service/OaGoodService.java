package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.OaGood;

public interface OaGoodService {

	/**
	 *
	 * @param oaUserId 企业用户编号
	 * @return 平台商品的信息
	 */
	List<OaGood> getByOaId(Integer oaUserId);
	/**
	 *
	 * @param id 企业用户编号
	 * @return 企业信息
	 */
	OaGood getById(Integer id);

    List<OaGood> getByOaIdAndTypeId(Integer oaId, Integer typeId);

}
