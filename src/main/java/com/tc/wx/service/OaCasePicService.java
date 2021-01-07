package com.tc.wx.service;

import com.tc.wx.model.OaCasePic;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:40
 */
public interface OaCasePicService {

    List<OaCasePic> getByOaCaseId(Integer id);
}
