package com.tc.wx.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tc.wx.model.*;
import com.tc.wx.service.*;
import com.tc.wx.util.DateUtil;
import com.tc.wx.util.StringUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.Soundbank;
import java.text.SimpleDateFormat;
import java.util.*;

@Api(tags = "雷达")
@RestController
@RequestMapping("radar")
public class RadarController {

    @Autowired
    private ShopUserService userService;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopUserAnalysisService uaService;
    @Autowired
    private ShopUserLocusService ulService;
    @Autowired
    private ShopInfoService infoService;
    @Autowired
    private ShopInfoTypeService itService;
    @Autowired
    private ShopUserDesignService udService;
    @Autowired
    private OaInfoService oaInfoService;
    @Autowired
    private OaInfoTypeService oaItService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopUserFollowService ufService;

    /**
     * @return 雷达页面的首页，包括当月线索和今日新增
     */
    @ApiOperation(value = "首页数据")
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public Result indexPage(@ApiParam(name = "token") @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        // 访问门店次数
        int countShop = 0;
        // 资讯次数
        int countAsk = 0;
        // 访问商品次数
        int countGood = 0;
        // 访问案例次数
        int countCase = 0;
        // 访问视频次数
        int countViedo = 0;
        // 海报进店人数
        int countPoster = 0;
        // 今日访问统计 start
        List<ShopUserAnalysis> userAnalysisList = uaService.getByShopId(shopId);

        if (userAnalysisList != null) {
            for (ShopUserAnalysis ua : userAnalysisList) {
                countShop += ua.getAskNum();
                countCase += ua.getLookCaseNum();
                countGood += ua.getLookGoodNum();
                countShop += ua.getLookShopNum();
                countViedo += ua.getLookVideoNum();
            }
        }
        resultMap.put("countShop", countShop);
        resultMap.put("countAsk", countAsk);
        resultMap.put("countGood", countGood);
        resultMap.put("countCase", countCase);
        resultMap.put("countViedo", countViedo);
        resultMap.put("countPoster", countPoster);
        // 今日访问统计 end

        // 当月线索累计,今日新增 start
        // 全店线索
        int countShopClue = 0;
        // 全店线索新增
        int countShopClueNew = 0;
        // 全店客户
        int countShopCustomer = 0;
        // 全店客户新增
        int countShopCustomerNew = 0;
        // 我的线索
        int countMyClue = 0;
        // 我的线索新增
        int countMyClueNew = 0;
        // 我的客户
        int countMyCustomer = 0;
        // 我的客户新增
        int countMyCustomerNew = 0;

        List<ShopUser> userList = userService.getByShopId(shopId);
        if (userList != null && userList.size() > 0) {
            for (ShopUser shopUser : userList) {
                System.out.println("shopUser:" + shopUser);
                // true门店线索，false门店客户
                if (shopUser.getUserType().equals("0")) {

                    Date createTime = shopUser.getCreateTime();
                    // true，在近一个月
                    System.out.println("createTime:" + createTime);
                    if (createTime.getTime() > DateUtil.thisMonthBegin()) {
                        // 门店线索++
                        countShopClue++;
                    }
                    // true,在今天
                    if (createTime.getTime() > DateUtil.thisDayBegin()) {
                        countShopClueNew++;
                    }
                } else if (shopUser.getUserType().equals("1")) {
                    Date isUserTime = shopUser.getIsUserTime();

                    if (isUserTime.getTime() > DateUtil.thisMonthBegin()) {
                        countShopCustomer++;
                    }

                    if (isUserTime.getTime() > DateUtil.thisDayBegin()) {
                        countShopCustomerNew++;
                    }
                }
                // true，我的客户线索
                if (sellerInfo.getShopId().equals(shopUser.getSid())) {
                    if (shopUser.getUserType().equals("0")) {
                        Date createTime = shopUser.getCreateTime();
                        // true，在近一个月
                        if (createTime.getTime() > DateUtil.thisMonthBegin()) {
                            // 我的线索++
                            countMyClue++;
                        }
                        // true,在今天
                        if (createTime.getTime() > DateUtil.thisDayBegin()) {
                            countMyClueNew++;
                        }
                    } else if (shopUser.getUserType().equals("1")) {
                        Date isUserTime = shopUser.getIsUserTime();
                        // true，在近一个月
                        if (isUserTime.getTime() > DateUtil.thisMonthBegin()) {
                            countMyCustomer++;
                        }
                        // true,在今天
                        if (isUserTime.getTime() > DateUtil.thisDayBegin()) {
                            countMyCustomerNew++;
                        }
                    }
                }
            }
        }
        resultMap.put("countShopClue", countShopClue);
        resultMap.put("countShopClueNew", countShopClueNew);
        resultMap.put("countShopCustomer", countShopCustomer);
        resultMap.put("countShopCustomerNew", countShopCustomerNew);
        resultMap.put("countMyClue", countMyClue);
        resultMap.put("countMyClueNew", countMyClueNew);
        resultMap.put("countMyCustomer", countMyCustomer);
        resultMap.put("countMyCustomerNew", countMyCustomerNew);
        // 当月线索累计,今日新增 end

        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param token
     * @param type
     * @return
     */
    @ApiOperation(value = "智能报表-数据总览")
    @RequestMapping(value = "/reportHead", method = RequestMethod.GET)
    public Result reportHead(@ApiParam(name = "token") @RequestParam String token,
                             @ApiParam(name = "type", value = "0:累计,1昨日，2:近7天,3:近15天") @RequestParam String type) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        Date date = null;
        List<ShopUser> clues = new ArrayList<ShopUser>();
        List<ShopUser> culstomers = new ArrayList<ShopUser>();
        List<ShopUserLocus> allUserLocusList = new ArrayList<ShopUserLocus>();
        List<ShopUserLocus> askUserLocusList = new ArrayList<ShopUserLocus>();
        List<ShopUserFollow> userFollowList = new ArrayList<ShopUserFollow>();
        if ("1".equals(type)) {
            date = new Date(DateUtil.lastdayBegin());
            clues = userService.getByShopIdAndDateAndUserType(shopId, date, "0");
            culstomers = userService.getByShopIdAndDateAndUserType(shopId, date, "1");
            allUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, null);
            askUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, "1");
            userFollowList = ufService.getByShopAndDate(shopId, date);
        } else if ("2".equals(type)) {
            date = new Date(DateUtil.sevenDaysAgo());
            clues = userService.getByShopIdAndDateAndUserType(shopId, date, "0");
            culstomers = userService.getByShopIdAndDateAndUserType(shopId, date, "1");
            allUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, null);
            askUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, "1");
            userFollowList = ufService.getByShopAndDate(shopId, date);
        } else if ("3".equals(type)) {
            date = new Date(DateUtil.fifteenDaysAgo());
            clues = userService.getByShopIdAndDateAndUserType(shopId, date, "0");
            culstomers = userService.getByShopIdAndDateAndUserType(shopId, date, "1");
            allUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, null);
            askUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, date, "1");
            userFollowList = ufService.getByShopAndDate(shopId, date);
        } else {
            clues = userService.getByShopIdAndDateAndUserType(shopId, null, "0");
            // System.out.println("clue:"+clues);
            culstomers = userService.getByShopIdAndDateAndUserType(shopId, null, "1");
            allUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, null, null);
            askUserLocusList = ulService.getByShopIdAndDateAndLookType(shopId, null, "1");
            userFollowList = ufService.getByShopAndDate(shopId, null);
        }
        int clueNum = 0;
        if (clues != null) {
            clueNum = clues.size();
        }
        resultMap.put("clueNum", clueNum);
        int customerNum = 0;
        if (culstomers != null) {
            customerNum = culstomers.size();
        }
        resultMap.put("customerNum", customerNum);
        resultMap.put("totalUserNum", clueNum + customerNum);
        int lookShopNum = 0;
        if (allUserLocusList != null) {
            lookShopNum = allUserLocusList.size();
        }
        resultMap.put("lookShopNum", lookShopNum);
        int askNum = 0;
        if (askUserLocusList != null) {
            askNum = askUserLocusList.size();
        }
        resultMap.put("askNum", askNum);
        int followNum = 0;
        if (userFollowList != null) {
            followNum = userFollowList.size();
        }
        resultMap.put("followNum", followNum);
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setMessage("查询成功");
        } else {
            result.setMessage("查询失败");
        }

        return result;
    }

    /**
     * @param token
     * @param type
     * @return 智能报表-门店活跃度
     */
    @ApiOperation(value = "智能报表-门店活跃度")
    @RequestMapping(value = "/reportBody", method = RequestMethod.GET)
    public Result reportBody(@ApiParam(name = "token") @RequestParam String token,
                             @ApiParam(name = "type", value = "1:近7天，2:近15天") @RequestParam String type) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        List<ShopUserLocus> userLocusList = null;
        Date date = null;
        Date today = new Date();
        if ("1".equals(type)) {
            date = new Date(DateUtil.sevenDaysAgo());
            userLocusList = ulService.getbyShopIdAndDate(shopId, date);
            Calendar calendar = new GregorianCalendar();
            calendar.setTime(date);
            while (calendar.getTime().getTime() < today.getTime()) {
                map = new HashMap<String, Object>();
                map.put("date", sdf.format(calendar.getTime()));
                map.put("clue", 0);
                map.put("customer", 0);
                maps.add(map);
                calendar.add(Calendar.DATE, +1);
            }

        } else {
            date = new Date(DateUtil.fifteenDaysAgo());
            userLocusList = ulService.getbyShopIdAndDate(shopId, date);
            Calendar calendar = new GregorianCalendar();
            calendar.setTime(date);
            while (calendar.getTime().getTime() < today.getTime()) {
                map = new HashMap<String, Object>();
                map.put("date", sdf.format(calendar.getTime()));
                map.put("clue", 0);
                map.put("customer", 0);
                maps.add(map);
                calendar.add(Calendar.DATE, +1);
            }

        }
        // System.out.println("maps:" + maps);

        if (userLocusList != null) {
            for (ShopUserLocus locus : userLocusList) {
                Date dateTime = locus.getCreateTime();
                Integer shopUserId = locus.getShopUserId();
                ShopUser shopUser = userService.getById(shopUserId);
                String userType = shopUser.getUserType();

                String strDate = sdf.format(dateTime);
                int i = 0;
                // System.out.println("maps"+maps);
                for (i = 0; i < maps.size(); i++) {
                    if (maps.get(i).get("date").equals(strDate)) {
                        break;
                    }
                }
                // System.out.println("i:"+i);
                if (i < maps.size()) {
                    map = maps.get(i);
                    // System.out.println("map:"+map);
                    if ("0".equals(userType)) {
                        Integer clueNum = (Integer) map.get("clue");
                        map.put("clue", clueNum + 1);
                    } else {
                        Integer customerNum = (Integer) map.get("customer");
                        map.put("customer", customerNum + 1);
                    }
                } else if (i == maps.size()) {
                    map = new HashMap<String, Object>();
                    if ("0".equals(userType)) {
                        map.put("clue", 1);
                        map.put("customer", 0);
                    } else {
                        map.put("customer", 1);
                        map.put("clue", 0);
                    }
                    map.put("date", strDate);
                    maps.add(map);

                }

            }
        }
        result.setList(maps);
        if (maps.size() > 0) {
            result.setMessage("查询成功");
        } else {
            result.setFail();
        }

        return result;
    }

    /**
     * @param token
     * @return 智能报表=客户互动
     */
    @ApiOperation(value = "智能报表-客户互动")
    @RequestMapping(value = "/reportFoot", method = RequestMethod.GET)
    public Result reportFoot(@ApiParam(name = "token") @RequestParam String token) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        // 客户互动
        List<ShopUserAnalysis> userAnalysisList = uaService.getByShopId(shopId);
        int countShop = 0;// 访问门店次数
        int countAsk = 0;// 资讯次数
        int countGood = 0;// 访问商品次数
        int countCase = 0;// 访问案例次数
        int countInfo = 0;

        for (ShopUserAnalysis ua : userAnalysisList) {
            countAsk += ua.getAskNum();
            countCase += ua.getLookCaseNum();
            countGood += ua.getLookGoodNum();
            countShop += ua.getLookShopNum();
            countInfo += ua.getLookInfoNum();
        }
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("title", "进店量");
        map.put("num", countShop);
        maps.add(map);

        map = new HashMap<String, Object>();
        map.put("title", "浏览商品");
        map.put("num", countGood);
        maps.add(map);
        map = new HashMap<String, Object>();
        map.put("title", "浏览案例");
        map.put("num", countCase);
        maps.add(map);
        map = new HashMap<String, Object>();
        map.put("title", "浏览资讯");
        map.put("num", countInfo);
        maps.add(map);
        map = new HashMap<String, Object>();
        map.put("title", "咨询次数");
        map.put("num", countAsk);
        maps.add(map);

        result.setList(maps);
        if (maps.size() > 0) {
            result.setMessage("查询成功");
        } else {
            result.setMessage("查询失败");
        }
        return result;
    }

    /**
     * @return 今日必转
     */
    @ApiOperation(value = "今日必转")
    @RequestMapping(value = "/mustReportInfo", method = RequestMethod.GET)
    public Result mustReportInfo(@RequestParam String token) {
        Result result = new Result();

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 企业编号
        Integer oaUserId = seller.getOaUserId();
        PageHelper.startPage(1, 3);
        List<OaInfo> oaInfos = oaInfoService.getByOaIdAndIsReport(oaUserId, "1");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        if (oaInfos != null) {
            for (OaInfo info : oaInfos) {

                map = new HashMap<String, Object>();
                map.put("id", info.getId().toString());
                map.put("title", info.getTitle());
                map.put("img", info.getImg());
                map.put("content", info.getContent());
                map.put("isUsedNum", info.getIsUsedNum().toString());
                map.put("isCustomerNum", info.getIsCustomerNum().toString());
                Integer typeId = info.getTypeId();
                OaInfoType infoType = oaItService.getById(typeId);
                if (infoType != null) {
                    map.put("type", infoType.getName());
                }
                Date createTime = info.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                }
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

    /**
     * @param token 获取token
     * @return 门店商品的信息
     */
    @ApiOperation(value = "平台资讯的类型信息")
    @RequestMapping(value = "/infoTypes", method = RequestMethod.GET)
    public Result allInfoTypes(@ApiParam(name = "token", value = "token") @RequestParam String token) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        Integer oaId = seller.getOaUserId();
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        List<OaInfoType> infoTypes = oaItService.getByOaId(oaId);
        if (infoTypes != null) {
            for (OaInfoType it : infoTypes) {
                map = new HashMap<>();
                map.put("typeId", it.getId());
                map.put("typeName", it.getName());
                System.out.println("typeName:"+it.getName());
                maps.add(map);
            }
        }
        result.setList(maps);
        if (maps.size() > 0) {

            result.setSuccess("查询");
        } else {
            result.setFail();
        }
        return result;
    }


    /**
     * @param token
     * @param orderKey
     * @param typeId
     * @return
     */
    @ApiOperation(value = "平台资讯-资讯信息", produces = MediaType.APPLICATION_JSON_VALUE)
    @RequestMapping(value = "/infos", method = RequestMethod.GET)
    public Result allInfo(
            @ApiParam @RequestParam String token,
            @ApiParam("排序关键字 ，0默认排序，1最新发布，2获客量，3使用量") @RequestParam(required = false) String orderKey,
            @ApiParam("资讯的类型id") @RequestParam(required = false) Integer typeId,
            @ApiParam @RequestParam(required = false, defaultValue = "1") Integer pageNum,
            @ApiParam @RequestParam(required = false, defaultValue = "10") Integer pageSize,
            @ApiParam("是否放入首页，1是，0否") @RequestParam(required = false) String isIndex) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        Integer oaId = seller.getOaUserId();


        // 每个类型下的资讯信息
        List<Map<String, Object>> mapList = new ArrayList<>();
        // 资讯信息
        Map<String, Object> map = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

        // 资讯信息列表
        List<OaInfo> infoList = null;
        PageHelper.startPage(pageNum, pageSize);
        if (orderKey != null || typeId != null || isIndex != null) {
            infoList = oaInfoService.getByOaIdAndOrderAndTypeIdAndIsShow(oaId, orderKey, typeId, isIndex);
        } else {
            infoList = oaInfoService.getByOaId(oaId);
        }
        System.out.println("infoList:::"+infoList);
        PageInfo<OaInfo> page = new PageInfo<>();
        if (infoList != null) {
            page = new PageInfo<OaInfo>(infoList);
            for (OaInfo info : infoList) {
                map = new HashMap<>();
                map.put("id", info.getId().toString());
                map.put("img", info.getImg());
                map.put("title", info.getTitle());
                Date createTime = info.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                }
                map.put("isUsedNum", info.getIsUsedNum().toString());
                map.put("upNum", info.getUpNum().toString());
                map.put("isCustomerNum", info.getIsCustomerNum().toString());
                if (typeId == null) {
                    typeId = info.getTypeId();
                }
                ShopInfoType infoType = itService.getById(typeId);
                if (infoType != null) {
                    map.put("type", infoType.getName());
                }
                mapList.add(map);
            }
        } else {
            infoList = new ArrayList<>();
            page = new PageInfo<OaInfo>(infoList);
        }
        result.setObject(page);
        result.setList(mapList);
        if (mapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param id 资讯编号
     * @return 热门推荐的详细信息
     */
    @ApiOperation("平台资讯-详情")
    @RequestMapping(value = "/info/{id}", method = RequestMethod.GET)
    public Result detailInfoPage(HttpServletRequest request, @PathVariable Integer id) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        // 存放案例或者商品的List
        List<Map<String, Object>> maps = null;
        OaInfo info = oaInfoService.getById(id);
        if (info != null) {
            resultMap.put("id", info.getId());
            resultMap.put("title", info.getTitle());
            resultMap.put("isUsedNum", info.getIsUsedNum());
            resultMap.put("idCustomerNum", info.getIsCustomerNum());
            resultMap.put("content", info.getContent());
        }
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }


    /**
     * @return 谁看了我-分享
     */
    @ApiOperation(value = "谁看了我-分享")
    @RequestMapping(value = "/share", method = RequestMethod.GET)
    public Result scanMeShare(
            @ApiParam @RequestParam String token,
            @ApiParam @RequestParam(required = false) String type) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        // 本周查看数量
        int countThisWeek = 0;
        // 上周查看数量
        int countlastWeek = 0;
        // 累计分享
        int countTotalShare = 0;
        // 累计访问
        int countTotalLook = 0;

        List<Map<String, Object>> thisWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> lastWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> earlyLocusMapList = new ArrayList<Map<String, Object>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Map<String, Object> map = null;

        // 客户轨迹
        List<ShopUserLocus> locusList = ulService.getbyShopId(shopId);
        if (locusList != null && locusList.size() > 0) {
            countTotalLook = locusList.size();
            for (ShopUserLocus locus : locusList) {
                map = new HashMap<String, Object>();
                if (locus.getIsShare() == 1) {
                    countTotalShare++;
                    long looktime = locus.getCreateTime().getTime();
                    if (looktime > DateUtil.thisWeekBegin()) {
                        countThisWeek++;
                    } else if (looktime > DateUtil.lastWeekBegin()) {
                        countlastWeek++;
                    }
                }

                if (locus.getIsShare() > 0 && type != null) {
                    String lookType = locus.getLookType();
                    if (!"0".equals(type) && !type.equals(lookType)) {
                        continue;
                    }
                    lookType = StringUtil.locusTypeForName(lookType);
                    if (lookType != null) {
                        map.put("lookType", lookType);
                    }
                    Integer shopUserId = locus.getShopUserId();
                    ShopUser shopUser = userService.getById(shopUserId);
                    long lookTime = locus.getCreateTime().getTime();

                    // map = new HashMap<String, Object>();
                    map.put("txImg", shopUser.getTxImg());
                    map.put("username", shopUser.getUsername());

                    Date createTime = locus.getCreateTime();
                    if (createTime != null) {
                        map.put("createTime", sdf.format(createTime));
                    }

                    map.put("locusId", locus.getId());
                    map.put("lookNum", locus.getLookNum());
                    map.put("reportNum", locus.getReportNum());
                    map.put("lookTitle", locus.getLookTitle());
                    // true，这一周的信息 或者 上周的信息 或者 更早的信息
                    if (lookTime > DateUtil.thisWeekBegin()) {
                        thisWeekLocusMapList.add(map);
                    } else if (lookTime > DateUtil.lastWeekBegin()) {
                        lastWeekLocusMapList.add(map);
                    } else {
                        earlyLocusMapList.add(map);
                    }

                }

            }
        }

        resultMap.put("countThisWeek", countThisWeek);
        resultMap.put("countlastWeek", countlastWeek);
        resultMap.put("countTotalShare", countTotalShare);
        resultMap.put("countTotalLook", countTotalLook);
        // .客户数量

        // 客户信息<<

        resultMap.put("thisData", thisWeekLocusMapList);
        resultMap.put("lastData", lastWeekLocusMapList);
        resultMap.put("earlyData", earlyLocusMapList);
        if (!resultMap.isEmpty()) {
            result.setMap(resultMap);
            result.setSuccess();

        }

        // .客户信息>>
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @return 谁看了我-转发
     */
    @ApiOperation(value = "谁看了我-转发")
    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public Result scanMeRepost(@ApiParam @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> thisWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> lastWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> earlyLocusMapList = new ArrayList<Map<String, Object>>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Map<String, Object> map = null;

        List<ShopUserLocus> locusList = ulService.getbyShopId(shopId);
        if (locusList != null) {
            for (ShopUserLocus locus : locusList) {
                if (locus.getReportNum() > 0) {
                    Integer shopUserId = locus.getShopUserId();
                    ShopUser shopUser = userService.getById(shopUserId);
                    long lookTime = locus.getCreateTime().getTime();

                    map = new HashMap<String, Object>();
                    map.put("txImg", shopUser.getTxImg());
                    map.put("username", shopUser.getUsername());
                    String type = locus.getLookType();
                    type = StringUtil.locusTypeForName(type);
                    map.put("type", type);
                    Date createTime = locus.getCreateTime();
                    if (createTime != null) {
                        map.put("createTime", sdf.format(createTime));
                    }
                    map.put("lookNum", locus.getLookNum());
                    map.put("reportNum", locus.getReportNum());
                    map.put("lookType", locus.getLookTitle());
                    // true，这一周的信息 或者 上周的信息 或者 更早的信息
                    if (lookTime > DateUtil.thisWeekBegin()) {
                        thisWeekLocusMapList.add(map);
                    } else if (lookTime > DateUtil.lastWeekBegin()) {
                        lastWeekLocusMapList.add(map);
                    } else {
                        earlyLocusMapList.add(map);
                    }
                }
            }
        }
        resultMap.put("thisData", thisWeekLocusMapList);
        resultMap.put("lastData", lastWeekLocusMapList);
        resultMap.put("earlyData", earlyLocusMapList);
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @return 谁看了我-访客
     */
    @ApiOperation(value = "谁看了我-访客")
    @RequestMapping(value = "/visit", method = RequestMethod.GET)
    public Result scanMeVisit(@ApiParam @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        // 商家的基本信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        // 这周内
        List<Map<String, Object>> thisDayLocusMapList = new ArrayList<Map<String, Object>>();
        // 上周内
        List<Map<String, Object>> thisWeekLocusMapList = new ArrayList<Map<String, Object>>();
        // 一个月内
        List<Map<String, Object>> thisMonthLocusMapList = new ArrayList<Map<String, Object>>();

        // list中的map， 门店用户的信息
        Map<String, Object> mapListMap = null;

        List<Map<String, Object>> mapList = null;

        Map<String, Object> map = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        // 商店用户的轨迹
        // List<Map<String, Object>> mapList=new ArrayList<Map<String,Object>>();

        // 轨迹集合
        List<ShopUserLocus> locusList = ulService.getbyShopId(shopId);
        // 判断不为空
        if (locusList != null) {
            // for循环遍历
            for (ShopUserLocus locus : locusList) {
                // System.out.println("locus:"+locus);
                Integer shopUserId = locus.getShopUserId();
                ShopUser shopUser = userService.getById(shopUserId);
                long createTime = locus.getCreateTime().getTime();

                String type = locus.getLookType();
                type = StringUtil.locusTypeForName(type);

                Integer id = shopUser.getId();
                int i = 0;
                // true,新增
                if (createTime > DateUtil.thisDayBegin()) {
                    for (i = 0; i < thisDayLocusMapList.size(); i++) {
                        if (thisDayLocusMapList.get(i).get("id").equals(id)) {
                            mapListMap = thisDayLocusMapList.get(i);
                            break;
                        }
                    }
                    if (i == thisDayLocusMapList.size()) {

                        mapListMap = new HashMap<String, Object>();
                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        mapListMap.put("id", shopUser.getId().toString());
                        mapListMap.put("tximg", shopUser.getTxImg());
                        mapListMap.put("username", shopUser.getUsername());
                        mapListMap.put("lookNum", locus.getLookNum().toString());
                        mapListMap.put("upNum", locus.getUpNum().toString());
                        mapListMap.put("reportNum", locus.getReportNum().toString());

                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisDayLocusMapList.add(mapListMap);
                    } else if (i < thisDayLocusMapList.size()) {
                        mapList = (List<Map<String, Object>>) mapListMap.get("data");
                        map = new HashMap<String, Object>();
                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisDayLocusMapList.remove(i);
                        thisDayLocusMapList.add(mapListMap);
                    }

                }
                // true,这周
                else if (createTime > DateUtil.sevenDaysAgo()) {

                    for (i = 0; i < thisWeekLocusMapList.size(); i++) {
                        if (thisWeekLocusMapList.get(i).get("id").equals(id)) {
                            mapListMap = thisWeekLocusMapList.get(i);
                            break;
                        }
                    }
                    if (i == thisWeekLocusMapList.size()) {

                        mapListMap = new HashMap<String, Object>();
                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        mapListMap.put("id", shopUser.getId());
                        mapListMap.put("tximg", shopUser.getTxImg());
                        mapListMap.put("username", shopUser.getUsername());
                        mapListMap.put("lookNum", locus.getLookNum());
                        mapListMap.put("upNum", locus.getUpNum());
                        mapListMap.put("reportNum", locus.getReportNum());

                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisWeekLocusMapList.add(mapListMap);
                    } else if (i < thisWeekLocusMapList.size()) {
                        mapList = (List<Map<String, Object>>) mapListMap.get("data");
                        map = new HashMap<String, Object>();
                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisWeekLocusMapList.remove(i);
                        thisWeekLocusMapList.add(mapListMap);
                    }

                }
                // true,近30天
                else if (createTime > DateUtil.thirtyDaysAgo()) {

                    for (i = 0; i < thisMonthLocusMapList.size(); i++) {
                        if (thisMonthLocusMapList.get(i).get("id").equals(id)) {
                            mapListMap = thisMonthLocusMapList.get(i);
                            break;
                        }
                    }
                    if (i == thisMonthLocusMapList.size()) {

                        mapListMap = new HashMap<String, Object>();
                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        mapListMap.put("id", shopUser.getId());
                        mapListMap.put("tximg", shopUser.getTxImg());
                        mapListMap.put("username", shopUser.getUsername());
                        mapListMap.put("lookNum", locus.getLookNum());
                        mapListMap.put("upNum", locus.getUpNum());
                        mapListMap.put("reportNum", locus.getReportNum());

                        mapList = new ArrayList<Map<String, Object>>();
                        map = new HashMap<String, Object>();

                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisMonthLocusMapList.add(mapListMap);
                    } else if (i < thisMonthLocusMapList.size()) {
                        mapList = (List<Map<String, Object>>) mapListMap.get("data");
                        map = new HashMap<String, Object>();
                        map.put("lookType", type);
                        map.put("dateTime", sdf.format(createTime));
                        map.put("lookTitle", locus.getLookTitle());
                        map.put("locusId", locus.getId());
                        mapList.add(map);
                        mapListMap.put("data", mapList);
                        thisMonthLocusMapList.remove(i);
                        thisMonthLocusMapList.add(mapListMap);
                    }

                }

            }
        }
        resultMap.put("locusDay", thisDayLocusMapList);
        resultMap.put("locusWeek", thisWeekLocusMapList);
        resultMap.put("locusMonth", thisMonthLocusMapList);
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setMessage("查询成功");
        } else {
            result.setFail();
        }

        return result;

    }

    /**
     * @return 谁看了我-互动
     */
    @ApiOperation(value = "谁看了我-互动")
    @RequestMapping(value = "/interact", method = RequestMethod.GET)
    public Result scanMeInteract(@ApiParam @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> thisWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> lastWeekLocusMapList = new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> earlyLocusMapList = new ArrayList<Map<String, Object>>();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Map<String, Object> map = null;

        List<ShopUserLocus> locusList = ulService.getbyShopId(shopId);
        if (locusList != null) {
            for (ShopUserLocus locus : locusList) {
                if (locus.getReportNum() > 0) {
                    Integer shopUserId = locus.getShopUserId();
                    ShopUser shopUser = userService.getById(shopUserId);
                    long lookTime = locus.getCreateTime().getTime();

                    map = new HashMap<String, Object>();
                    map.put("txImg", shopUser.getTxImg());
                    map.put("username", shopUser.getUsername());
                    String type = locus.getLookType();
                    type = StringUtil.locusTypeForName(type);
                    map.put("type", type);

                    Date createTime = locus.getCreateTime();
                    if (createTime != null) {
                        map.put("createTime", sdf.format(createTime));
                    }
                    map.put("lookNum", locus.getLookNum());
                    map.put("reportNum", locus.getReportNum());
                    // true，这一周的信息
                    if (lookTime > DateUtil.thisWeekBegin()) {
                        thisWeekLocusMapList.add(map);
                    }
                    // 上周的信息
                    else if (lookTime > DateUtil.lastWeekBegin()) {
                        lastWeekLocusMapList.add(map);
                    }
                    // 更早的信息
                    else {
                        earlyLocusMapList.add(map);
                    }
                }
            }
        }
        resultMap.put("thisData", thisWeekLocusMapList);
        resultMap.put("lastData", lastWeekLocusMapList);
        resultMap.put("earlyData", earlyLocusMapList);
        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @return 0元设计信息 /全部、近7天、近15天
     */
    @ApiOperation(value = "0元设计信息")
    @RequestMapping(value = "/designs", method = RequestMethod.GET)
    public Result allDesigns(
            @ApiParam @RequestParam String token,
            @ApiParam(name = "type", value = "0:全部,1:近7天,2:近15天") @RequestParam String type) {
        Result result = new Result();
        // 商家的基本信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        // 设计信息
        Date date = null;
        List<ShopUserDesign> userDesignList = null;
        if ("1".equals(type)) {
            date = new Date(DateUtil.sevenDaysAgo());
            userDesignList = udService.getByShopIdAndDate(shopId, date);
        } else if ("2".equals(type)) {
            date = new Date(DateUtil.fifteenDaysAgo());
            userDesignList = udService.getByShopIdAndDate(shopId, date);
        } else {
            userDesignList = udService.getByShopId(shopId);
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        // 全部
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();

        Map<String, Object> map = null;
        if (userDesignList != null) {
            for (ShopUserDesign ud : userDesignList) {
                map = new HashMap<String, Object>();
                map.put("id", ud.getId());

                ShopUser shopUser = null;
                Integer shopUserId = ud.getShopUserId();
                if (shopUserId != null) {
                    shopUser = userService.getById(shopUserId);
                }
                if (shopUser != null) {
                    map.put("tximg", shopUser.getTxImg());
                    map.put("username", shopUser.getUsername());
                }
                Date createTime = ud.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                }
                maps.add(map);
            }
        }
        result.setList(maps);
        if (!maps.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param token
     * @param id
     * @return 0元设计预约信息详情
     */
    @ApiOperation(value = "设计详情")
    @RequestMapping(value = "/design/{id}", method = RequestMethod.GET)
    public Result designDetail(@ApiParam @RequestParam String token, @ApiParam("0元设计编号") @PathVariable Integer id) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        ShopUserDesign design = udService.getById(id);
        Integer userId = design.getShopUserId();
        ShopUser shopUser = userService.getById(userId);
        if (shopUser != null) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date lastLookTime = shopUser.getLastLookTime();
            if (lastLookTime != null) {
                map.put("lastLookTime", sdf.format(lastLookTime));
            } else {
                map.put("lastLookTime", "");
            }
            Date createTime = design.getCreateTime();
            if (createTime != null) {
                map.put("createTime", sdf.format(createTime));
            } else {
                map.put("createTime", "");
            }
            map.put("userId", shopUser.getId());
            map.put("nickName", shopUser.getNickName());
            map.put("txImg", shopUser.getTxImg());
            map.put("realName", design.getRealname());
            map.put("phone", shopUser.getPhone());
            map.put("houseType", design.getHouseType());
            map.put("address", design.getAddress());
            map.put("area", design.getArea());
        }

        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

}
