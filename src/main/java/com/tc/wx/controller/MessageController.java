package com.tc.wx.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tc.wx.model.Result;
import com.tc.wx.model.ShopCase;
import com.tc.wx.model.ShopGood;
import com.tc.wx.model.ShopGoodType;
import com.tc.wx.model.ShopInfo;
import com.tc.wx.model.ShopMessage;
import com.tc.wx.model.ShopMessageDetail;
import com.tc.wx.model.ShopPoster;
import com.tc.wx.model.ShopSeller;
import com.tc.wx.model.ShopSellerInfo;
import com.tc.wx.model.ShopUser;
import com.tc.wx.model.ShopVideo;
import com.tc.wx.service.ShopCaseService;
import com.tc.wx.service.ShopGoodService;
import com.tc.wx.service.ShopGoodTypeService;
import com.tc.wx.service.ShopInfoService;
import com.tc.wx.service.ShopMessageDetailService;
import com.tc.wx.service.ShopMessageService;
import com.tc.wx.service.ShopPosterService;
import com.tc.wx.service.ShopSellerInfoService;
import com.tc.wx.service.ShopUserService;
import com.tc.wx.service.ShopVideoService;
import com.tc.wx.util.DateUtil;
import com.tc.wx.util.StringUtil;

@Controller
@ResponseBody
@RequestMapping("message")
public class MessageController {

    @Autowired
    private HttpSession session;
    @Autowired
    private ShopMessageService messageService;
    @Autowired
    private ShopMessageDetailService mdService;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopUserService userService;
    @Autowired
    private ShopGoodService goodService;
    @Autowired
    private ShopGoodTypeService gtService;
    @Autowired
    private ShopInfoService infoService;
    @Autowired
    private ShopCaseService caseService;
    @Autowired
    private ShopPosterService posterService;

    /**
     * @return 消息页面的列表信息
     */
    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public Result allMessage() {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = (ShopSeller) session.getAttribute("seller");
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        //消息列表
        List<ShopMessage> messageList = messageService.getByShopId(sellerInfo.getShopId());
        if (messageList != null) {
            for (ShopMessage message : messageList) {
                map = new HashMap<String, Object>();
                Integer shopUserId = message.getShopUserId();
                ShopUser shopUser = userService.getById(shopUserId);
                ShopMessageDetail messageDetail = null;
                // messageDetail =mdService.getNewOneByMessageId(message.getId());
                map.put("id", shopUser.getId());
                map.put("tximg", shopUser.getTxImg());
                map.put("username", shopUser.getUsername());
                Date createTime = messageDetail.getCreateTime();
                if (createTime.getTime() > DateUtil.thisWeekBegin()) {
                    SimpleDateFormat sdf = new SimpleDateFormat("aa hh:mm");
                    map.put("createTime", sdf.format(createTime));
                } else {
                    SimpleDateFormat sdf = new SimpleDateFormat("M月d号");
                    map.put("createTime", sdf.format(createTime));
                }
                String contentType = messageDetail.getContentType();
                if (contentType != null) {
                    if (contentType.equals("0")) {
                        map.put("content", messageDetail.getContent());
                    } else {
                        map.put("content", "[" + StringUtil.messageTypeForName(contentType) + "]");
                    }
                }
                maps.add(map);
            }
        }
        result.setList(maps);
        if (maps.size() > 0) {
            result.setSuccess();
        }else{
            result.setFail();
        }
        return result;

    }

    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public Result detailMessage(@PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        ShopMessage message = messageService.getById(id);
        ShopUser shopUser = userService.getById(message.getShopUserId());
        List<ShopMessageDetail> messageDetailList = mdService.getByMessageId(id);
        resultMap.put("tximg", shopUser.getTxImg());
        String userType = shopUser.getUserType();

        if ("1".equals(userType)) {
            resultMap.put("userType", "客户");
        } else if ("0".equals(userType)) {
            resultMap.put("userType", "线索");
        }
        resultMap.put("username", shopUser.getUsername());
        if (messageDetailList != null) {

            for (ShopMessageDetail mDetail : messageDetailList) {
                map = new HashMap<String, Object>();

                String contentType = mDetail.getContentType();
                if (contentType != null && !"".equals(contentType) ){
                    if (contentType.equals("0")) {
                        map.put("name", mDetail.getContent());
                        map.put("id", "id");
                    } else {
                        map.put("type", "1");
                        Integer contentId = mDetail.getContentId();
                        if (contentType.equals("1")) {
                            ShopGood shopGood = goodService.getById(contentId);
                            ShopGoodType goodType = gtService.getById(shopGood.getGoodTypeId());
                            map.put("id", shopGood.getId());
                            map.put("img", shopGood.getGoodImg());
                            map.put("price", shopGood.getGoodPrice());
                            map.put("name", goodType.getName() + " " + shopGood.getGoodName());

                        } else if (contentType.equals("2")) {
                            ShopInfo info = infoService.getById(contentId);
                            map.put("id", info.getId());
                            map.put("img", info.getImg());
                            map.put("name", info.getTitle());

                        } else if (contentType.equals("3")) {
                            ShopCase cases = caseService.getById(contentId);
                            map.put("id", cases.getId());
                            map.put("img", cases.getImg());
                            map.put("name", cases.getTitle());

                        } else if (contentType.equals("4")) {
                          /*  ShopVideo video = videoService.getById(contentId);
                            map.put("id", video.getId());
                            map.put("img", video.getImg());
                            map.put("name", video.getTitle())*/
                            ;

                        } else if (contentType.equals("5")) {
                            ShopPoster poster = posterService.getById(contentId);
                            map.put("id", poster.getId());
                            map.put("img", poster.getImg());
                            map.put("name", poster.getTitle());
                        }
                    }
                }
                Date createTime = mDetail.getCreateTime();
                if (createTime != null) {
                    if (createTime.getTime() > DateUtil.thisWeekBegin()) {
                        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
                        String whatDay = DateUtil.DayOfWeek(createTime);
                        map.put("createTime", whatDay + " " + sdf.format(createTime));
                    } else {
                        SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
                        map.put("createTime", sdf.format(createTime));
                    }
                }
                map.put("fromType", mDetail.getFromType());

                resultList.add(map);
            }
        }
        result.setList(resultList);
        result.setMap(resultMap);
        return result;
    }

}
