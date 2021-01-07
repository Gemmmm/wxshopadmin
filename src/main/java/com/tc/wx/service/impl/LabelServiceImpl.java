package com.tc.wx.service.impl;

import com.tc.wx.dao.TLabelMapper;
import com.tc.wx.model.TLabel;
import com.tc.wx.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author DELL
 * @date 2020/8/12 11:53
 */
@Service
public class LabelServiceImpl implements LabelService {
    @Autowired(required = false)
    private TLabelMapper mapper;

    @Override
    public TLabel getById(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<TLabel> getAll() {
        return mapper.selectAll();
    }

    @Override
    public List<TLabel> getByShopId(Integer shopId) {
        Example example = new Example(TLabel.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("shopId", shopId);
        List<TLabel> list = mapper.selectByExample(example);
        if (list != null&&list.size()>0) {
            return list;
        }
        return null;
    }

    @Override
    public Integer insert(TLabel label) {
        return mapper.insertSelective(label);
    }
}
