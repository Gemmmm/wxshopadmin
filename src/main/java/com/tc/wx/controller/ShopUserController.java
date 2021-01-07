package com.tc.wx.controller;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import com.tc.wx.util.DateUtil;
import com.tc.wx.util.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author DELL
 */
@Controller
@RequestMapping("shopUser")
@ResponseBody
@Api(tags = "客户管理")
public class ShopUserController {

    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopUserService uService;
    @Autowired
    private ShopUserAnalysisService aService;
    @Autowired
    private ShopUserFollowService fService;
    @Autowired
    private ShopUserLabelService uLabelService;
    @Autowired
    private ShopUserLocusService uLocusService;
    @Autowired
    private LabelService labelService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopUserSellerService usService;

    /**
     * @return 客户-列表
     */
    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public Result allShopUser(
            @ApiParam @RequestParam String token,
            @ApiParam @RequestParam(defaultValue = "0") String orderKey
    ) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();

        List<Map<String, Object>> clues = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> customers = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 登录用户详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        // 排序关键词

        // 线索列表
        List<ShopUser> userClueList = uService.getByShopIdAndOrderAndType(shopId, orderKey, "0");

        if (userClueList != null && userClueList.size() > 0) {
            for (ShopUser shopUser : userClueList) {
                map = new HashMap<String, Object>();
                map.put("id", shopUser.getId());
                map.put("txImg", shopUser.getTxImg());
                map.put("username", shopUser.getUsername());
                map.put("phone", shopUser.getPhone());
                Date lastLookTime = shopUser.getLastLookTime();
                if (lastLookTime != null) {
                    map.put("lastLookTime", sdf.format(lastLookTime));
                } else {
                    map.put("lastLookTime", "");
                }
                map.put("lookCardNum", shopUser.getLookCardNum());
                map.put("lookShopNum", shopUser.getLookShopNum());
                clues.add(map);
            }
            resultMap.put("clues", clues);
        }
        // 客户列表
        List<ShopUser> userCustomerList = uService.getByShopIdAndOrderAndType(shopId, orderKey, "1");

        if (userCustomerList != null && userCustomerList.size() > 0) {
            for (ShopUser shopUser : userCustomerList) {
                map = new HashMap<String, Object>();
                map.put("id", shopUser.getId());
                map.put("txImg", shopUser.getTxImg());
                map.put("username", shopUser.getUsername());
                map.put("phone", shopUser.getPhone());
                Date lastLookTime = shopUser.getLastLookTime();
                if (lastLookTime != null) {
                    map.put("lastLookTime", sdf.format(lastLookTime));
                } else {
                    map.put("lastLookTime", "");
                }
                map.put("lookCardNum", shopUser.getLookCardNum());
                map.put("lookShopNum", shopUser.getLookShopNum());
                customers.add(map);
            }
            resultMap.put("customers", customers);
        }
        result.setMap(resultMap);
        if (resultMap.isEmpty()) {
            result.setFail();
        } else {

            result.setSuccess();
        }
        return result;
    }

    @RequestMapping(value = "/detail/{id}/need", method = RequestMethod.GET)
    public Result userInfomation(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = sellerService.getByToken(token);
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }
        // 客户信息
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Map<String, Object> map = new HashMap<String, Object>();
        ShopUser shopUser = uService.getById(id);
        if (shopUser != null) {
            map = new HashMap<String, Object>();
            map.put("nickName", shopUser.getNickName());
            map.put("userName", shopUser.getUsername());
            map.put("phone", shopUser.getPhone());
            map.put("txImg", shopUser.getTxImg());
            map.put("province", shopUser.getProvince());
            map.put("city", shopUser.getCity());
            map.put("country", shopUser.getCountry());
            Date lastLookTime = shopUser.getLastLookTime();
            if (lastLookTime != null) {
                map.put("lastLookTime", sdf.format(lastLookTime));
            }
            map.put("houseArea", shopUser.getHouseArea());
            map.put("budget", shopUser.getBudget());
            map.put("remarks", shopUser.getRemarks());
            String zxLevel = shopUser.getZxLevel();
            if ("1".equals(zxLevel)) {
                map.put("zxLevel", "简装");
            } else if ("2".equals(zxLevel)) {
                map.put("zxLevel", "精装");
            } else if ("3".equals(zxLevel)) {
                map.put("zxLevel", "豪装");
            }
            map.put("liningroom", shopUser.getLivingroom());
            map.put("bedroom", shopUser.getBedroom());
            map.put("kitchen", shopUser.getKitchen());
            map.put("dinerroom", shopUser.getDinerroom());
        }
        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }

        return result;
    }

    @RequestMapping(value = "/detail/{id}/analysis", method = RequestMethod.GET)
    public Result userAnalysis(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 登录用户详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        // 客户信息
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        // 智能分析
        ShopUserAnalysis ua = aService.getShopIdAndByShopUserId(shopId, id);
        if (ua != null) {
            Integer lookShopNum = ua.getLookShopNum();
            if (lookShopNum != null) {
                map = new HashMap<String, Object>();
                map.put("title", "访问门店次数");
                map.put("num", lookShopNum.toString());
                maps.add(map);
            }

            Integer lookCaseNum = ua.getLookCaseNum();
            if (lookCaseNum != null) {
                map = new HashMap<String, Object>();
                map.put("title", "浏览案例次数");
                map.put("num", lookCaseNum.toString());
                maps.add(map);
            }
            Integer askNum = ua.getAskNum();
            if (askNum != null) {
                map = new HashMap<String, Object>();
                map.put("title", "咨询我");
                map.put("num", askNum.toString());
                maps.add(map);
            }
            Integer lookGoodNum = ua.getLookGoodNum();
            if (lookGoodNum != null) {
                map = new HashMap<String, Object>();
                map.put("title", "浏览商品");
                map.put("num", lookGoodNum.toString());
                maps.add(map);
            }
        }
        result.setList(maps);
        if (maps.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }

        return result;
    }

    @RequestMapping(value = "/detail/{id}/locus", method = RequestMethod.GET)
    public Result userLocus(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 登录用户详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> mapListMapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> mapListMap = null;
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");

        // <<客户轨迹
        List<ShopUserLocus> locuss = uLocusService.getByShopIdAndShopUserId(shopId, id);
        if (locuss != null && locuss.size() > 0) {
            for (ShopUserLocus locus : locuss) {
                long createTime = locus.getCreateTime().getTime();
                String date = sdfDate.format(createTime);
                // 循环判断是否包含该日期的key
                int i = 0;
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
                    String lookType = locus.getLookType();
                    if (lookType != null && !"".equals(lookType)) {
                        map.put("lookType", StringUtil.locusTypeForName(lookType));
                    }
                    map.put("title", locus.getLookTitle());
                    mapList.add(map);
                    mapListMap.put("data", mapList);
                    mapListMapList.add(mapListMap);

                } else if (i < mapListMapList.size()) {
                    mapList = (List<Map<String, Object>>) mapListMap.get("data");
                    map = new HashMap<String, Object>();

                    map.put("time", sdfTime.format(createTime));
                    String lookType = locus.getLookType();
                    if (lookType != null && !"".equals(lookType)) {
                        map.put("lookType", StringUtil.locusTypeForName(lookType));
                    }
                    map.put("title", locus.getLookTitle());
                    mapList.add(map);
                    mapListMap.put("data", mapList);
                    mapListMapList.remove(i);
                    mapListMapList.add(mapListMap);

                }

            }
        }
        result.setList(mapListMapList);
        if (mapListMapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }

        return result;
    }

    @RequestMapping(value = "/detail/{id}/follow", method = RequestMethod.GET)
    public Result userFollow(@PathVariable(value = "id", required = true) Integer id,
                             @ApiParam @RequestParam String token,
                             HttpServletRequest request) {
        Result result = new Result();
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 登录用户详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        // 客户信息
        List<Map<String, Object>> mapListMapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> mapListMap = null;
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
        // <<客户跟进
        List<ShopUserFollow> follows = fService.getByShopIdAndShopUserId(shopId, id);
        if (follows != null && follows.size() > 0) {
            for (ShopUserFollow follow : follows) {
                long createTime = follow.getCreateTime().getTime();

                String date = sdfDate.format(createTime);
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
        }
        // 客户跟进>>
        result.setList(mapListMapList);
        if (mapListMapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }

        return result;
    }

    /**
     * @param id 客户编号
     * @return 客户/线索的详情
     */
    @RequestMapping(value = "/detail/{id}/label", method = RequestMethod.GET)
    public Result userLabel(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 登录用户详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        // <<客户标签
        List<ShopUserLabel> userLabels = uLabelService.getByShopIdAndShopUserId(shopId, id);
        if (userLabels != null && userLabels.size() > 0) {
            for (ShopUserLabel label : userLabels) {
                map = new HashMap<String, Object>();
                long createTime = 0;
                if (label.getCreateTime() != null) {
                    createTime = label.getCreateTime().getTime();
                }
                if (createTime > DateUtil.thisDayBegin()) {
                    map.put("id", label.getId());
                    Integer labelId = label.getLabelId();
                    if (labelId != null) {
                        TLabel content = labelService.getById(labelId);
                        map.put("label", content.getLabel());
                    }

                    mapList.add(map);
                }

            }

        }
        // 客户标签>>
        result.setList(mapList);
        if (mapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param id      客户编号
     * @param request 用于获取前端的标签信息
     * @return 是否修改成功
     */
    @RequestMapping(value = "/detail/{id}/addLabel", method = RequestMethod.POST)
    public Result addLabel(
            @PathVariable(value = "id", required = true) Integer id,
                           HttpServletRequest request) {
        Result result = new Result();

        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        Integer flag = 0;
        String strlabelId = request.getParameter("labelId");
        Integer labelId = null;
        if (strlabelId != null) {
            labelId = Integer.valueOf(strlabelId);
        }
        if (labelId != null && !"".equals(labelId)) {
            ShopUserLabel label = new ShopUserLabel();
            label.setShopId(shopId);
            label.setShopUserId(id);
            label.setLabelId(labelId);
            label.setCreateTime(new Date());

            ShopUserLabel ulLabel = uLabelService.getByExample(label);
            if (ulLabel != null) {
                result.setMessage("已添加该标签");
                return result;
            }
            flag = uLabelService.insert(label);
        }
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("添加成功");
        } else {
            result.setMessage("添加失败");
        }
        return result;
    }

    @RequestMapping(value = "/detail/{id}/delLabel", method = RequestMethod.GET)
    public Result deleteUseLabel(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
        Result result = new Result();

        String token = request.getParameter("token");
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }
        String strlabelId = request.getParameter("labelId");
        Integer labelId = null;
        if (strlabelId != null) {
            labelId = Integer.valueOf(strlabelId);
        }
        int flag = uLabelService.deleteById(labelId);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    @RequestMapping(value = "labels", method = RequestMethod.GET)
    public Result allLabel(
            @ApiParam @RequestParam String token

    ) {
        Result result = new Result();
        // 登录用户
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> mapListMapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> mapListMap = null;
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");

        // 标签库<<
        mapListMapList = new ArrayList<Map<String, Object>>();
        List<TLabel> labelList = labelService.getByShopId(shopId);
        if (labelList != null) {
            for (TLabel label : labelList) {
                long createTime = 0;
                if (label.getCreateTime() != null) {
                    createTime = label.getCreateTime().getTime();
                }
                String date = sdfDate.format(createTime);
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
                    map.put("id", label.getId().toString());
                    map.put("time", sdfTime.format(createTime));
                    map.put("label", label.getLabel());
                    mapList.add(map);

                    mapListMap.put("data", mapList);
                    mapListMapList.add(mapListMap);

                } else if (i < mapListMapList.size()) {
                    mapList = (List<Map<String, Object>>) mapListMap.get("data");
                    map = new HashMap<String, Object>();
                    map.put("id", label.getId().toString());
                    map.put("time", sdfTime.format(createTime));
                    map.put("label", label.getLabel());
                    mapList.add(map);
                    mapListMap.put("data", mapList);
                    mapListMapList.remove(i);
                    mapListMapList.add(mapListMap);

                }
            }
        }
        // 标签库>>
        result.setList(mapListMapList);
        if (mapListMapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }

        return result;
    }

    /**
     * @param request 用于获取前端的标签信息
     * @return 是否修改成功
     */
    @RequestMapping(value = "/label/add", method = RequestMethod.POST)
    public Result labeladd(HttpServletRequest request) {
        Result result = new Result();
        String content = request.getParameter("label");
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }

        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        Integer flag = 0;
        if (content != null && !"".equals(content)) {
            TLabel label = new TLabel();
            label.setShopId(shopId);
            label.setLabel(content);
            flag = labelService.insert(label);
        }
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("添加成功");
        } else {
            result.setMessage("添加失败");
        }
        return result;
    }

    /**
     * @param id      客户编号
     * @param request 用户获取前端的内容
     * @return 是否修改成功
     */
    @RequestMapping(value = "/detail/{id}/addFollow", method = RequestMethod.POST)
    public Result addFollow(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {

        Result result = new Result();

        String content = request.getParameter("content");

        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        int count = 0;
        if (content != null && !"".equals(content)) {
            ShopUserFollow follow = new ShopUserFollow();
            follow.setShopId(shopId);
            follow.setShopUserId(id);
            follow.setContent(content);
            follow.setCreateTime(new Date());
            count = fService.insert(follow);
        }
        result.setFlag(count);
        if (count > 0) {
            result.setMessage("添加成功");
        } else {
            result.setMessage("添加失败");
        }
        return result;
    }

    /**
     * @param id 线索编号
     * @return 线索置为客户
     */
    @RequestMapping(value = "/modifyType/{id}", method = RequestMethod.GET)
    public Result modifPage(@RequestParam String token, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();

        Map<String, Object> map = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }
        ShopUser user = uService.getById(id);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        if (user != null) {
            map.put("id", id.toString());
            map.put("username", user.getUsername());
            map.put("nickName", user.getNickName());
            map.put("txImg", user.getTxImg());
            Date lastLookTime = user.getLastLookTime();
            if (lastLookTime != null) {
                map.put("lastLookTime", sdf.format(lastLookTime));
            }
        }
        result.setMap(map);
        if (!map.isEmpty()) {

            result.setSuccess("查询");
        } else {
            result.setFail("查询");
        }

        return result;
    }

    /**
     * @param id 编号
     * @return 用户的类型从线索人物修改为客户人物
     */
    @RequestMapping(value = "/modifyType/{id}", method = RequestMethod.POST)
    public Result updateUserType(
            HttpServletRequest request,
            @RequestParam(required = false) String token,
            @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null && !"".equals(token)) {
            seller = sellerService.getByToken(token);
        } else {
            result.setMessage("token必填");
            result.setCode("-1");
            return result;
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登录");
            result.setCode("-1");
            return result;
        }

        ShopUser shopUser = uService.getById(id);
        String nickName = request.getParameter("nickname");
        if (nickName != null && !"".equals(nickName)) {
            shopUser.setNickName(nickName);
        }
        String phone = request.getParameter("phone");
        if (phone != null && !"".equals(phone)) {
            shopUser.setPhone(phone);
        }

        String address = request.getParameter("address");
        if (address != null && !"".equals(address)) {
            String[] addrs = address.split("-");
            if (addrs.length == 3) {
                shopUser.setProvince(addrs[0]);
                shopUser.setCity(addrs[1]);
                shopUser.setCountry(addrs[2]);
            }
        }
        String houseArea = request.getParameter("housearea");
        if (houseArea != null && !"".equals(houseArea)) {
            shopUser.setHouseArea(houseArea);
        }
        String budget = request.getParameter("budget");
        if (budget != null && !"".equals(budget)) {
            shopUser.setBudget(budget);
        }
        String zxlevel = request.getParameter("zxlevel");
        if (zxlevel != null && !"".equals(zxlevel)) {
            shopUser.setZxLevel(zxlevel);
        }
        String remarks = request.getParameter("remarks");
        if (remarks != null && !"".equals(remarks)) {
            shopUser.setRemarks(remarks);
        }
        String livingroom = request.getParameter("livingroom");
        if (livingroom != null) {
            shopUser.setLivingroom(livingroom);
        }
        String dinerroom = request.getParameter("dinerroom");
        if (dinerroom != null) {
            shopUser.setDinerroom(dinerroom);
        }
        String kitchen = request.getParameter("kitchen");
        if (kitchen != null) {
            shopUser.setKitchen(kitchen);

        }
        String bedroom = request.getParameter("bedroom");
        if (bedroom != null) {
            shopUser.setBedroom(bedroom);
        }

        shopUser.setUserType("1");
        shopUser.setIsUserTime(new Date());
        int flag = uService.modify(shopUser);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }

}
