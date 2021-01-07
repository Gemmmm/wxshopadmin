package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.OaInfo;

public interface OaInfoService {

	/**
	 *
	 * @param oaId 企业用户编号
	 * @return 企业咨询
	 */
	List<OaInfo> getByOaId(Integer oaId);

	/**
	 *
	 * @param id 咨询编号
	 * @return 咨询信息
	 */
	OaInfo getById(Integer id);

	/**
	 *
	 * @param oaUserId 企业编号
	 * @param isMustReport 是否必转
	 * @return 咨询信息
	 */
	List<OaInfo> getByOaIdAndIsReport(Integer oaUserId, String isMustReport);

	/**
	 *
	 * @param oaId 企业编号
	 * @param orderKey 排序规则 ，0默认排序，1最新发布，2获客量，3使用量
	 * @return 平台咨询
	 */
	List<OaInfo> getByShopIdAndOrder(Integer oaId, String orderKey);

    List<OaInfo> getByOaIdAndIsShow(Integer oaId, Integer isShow);

	List<OaInfo> getByOaIdAndOrderAndTypeId(Integer oaId, String orderKey, Integer typeId);

    List<OaInfo> getByOaIdAndOrderAndTypeIdAndIsShow(Integer oaId, String orderKey, Integer typeId, String isIndex);
}
