package com.tc.wx.service.impl;

import com.tc.wx.dao.OaCasePicMapper;
import com.tc.wx.model.OaCasePic;
import com.tc.wx.service.OaCasePicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020-10-13 16:40
 */
@Service
public class OaCasePicServiceImpl implements OaCasePicService {
    @Autowired(required = false)
    private OaCasePicMapper mapper;

    @Override
    public List<OaCasePic> getByOaCaseId(Integer caseId) {
        Example example=new Example(OaCasePic.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("caseId",caseId);
        List<OaCasePic> list = mapper.selectByExample(example);
        if(list!=null&&list.size()>0){
            return list;
        }

        return null;
    }
}
