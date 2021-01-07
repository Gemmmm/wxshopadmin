package com.tc.wx.service;

import java.util.List;

import com.tc.wx.model.OaInfoType;

public interface OaInfoTypeService {

	/**
	 * 
	 * @param id 咨询编号
	 * @return 企业用户的咨询信息
	 */
	OaInfoType getById(Integer id);

	/**
	 * 
	 * @param oaUserId 企业用户编号
	 * @return 企业用户资讯信息列表
	 */
	List<OaInfoType> getByOaId(Integer oaUserId);

}
