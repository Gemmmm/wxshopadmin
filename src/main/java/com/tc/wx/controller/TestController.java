package com.tc.wx.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.expression.MapAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tc.wx.model.Result;
import com.tc.wx.model.ShopUserFollow;
import com.tc.wx.service.ShopUserFollowService;

@Controller
@ResponseBody
@RequestMapping("test")
public class TestController {

	@Autowired
	private ShopUserFollowService fService;

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public Result testLocus(@PathVariable(value = "id", required = true) Integer id) {
		Result result = new Result();
		Map<String, Object> mapResult = new HashMap<String, Object>();
		List<Map<String, Object>> mapListMapList=new ArrayList<Map<String,Object>>();
		Map<String, Object> mapListMap = null;
		List<Map<String, Object>> mapList =null;
		Map<String, Object> map = null;
		SimpleDateFormat sdfData = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
		// 客户跟进
		List<ShopUserFollow> follows = fService.getByShopUserId(id);
		if (follows != null && follows.size() > 0) {
			for (ShopUserFollow follow : follows) {
				long createTime = follow.getCreateTime().getTime();
				
				String date = sdfData.format(createTime);
				int i = 0;
				// 循环判断是否包含该日期的key
				for (i = 0; i < mapListMapList.size(); i++) {
					if (mapListMapList.get(i).get("date").equals(date)) {
						mapListMap = mapListMapList.get(i);
						break;
					}
				}
				// true则mapListMapList没有该自选的key，需要new一个新的数据
				if (i == mapListMapList.size()) {
					
					mapListMap = new HashMap<String, Object>();
					mapList = new ArrayList<Map<String, Object>>();
					map = new HashMap<String, Object>();
					
					mapListMap.put("date", date);
					map.put("time", sdfTime.format(createTime));
					map.put("content", follow.getContent());
					mapList.add(map);

					mapListMap.put("data", mapList);
					mapListMapList.add(mapListMap);

				} else if (i < mapListMapList.size()) {
					mapList = (List<Map<String, Object>>) mapListMap.get("data");
					map = new HashMap<String, Object>();

					map.put("time", sdfTime.format(createTime));
					map.put("content", follow.getContent());
					mapList.add(map);
					mapListMap.put("data", mapList);
					mapListMapList.remove(i);
					mapListMapList.add(mapListMap);

				}

			}
			mapResult.put("followList", mapListMapList);
		}
		result.setMap(mapResult);
		return result;
	}
}
