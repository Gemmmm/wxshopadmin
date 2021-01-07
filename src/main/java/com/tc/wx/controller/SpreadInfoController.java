package com.tc.wx.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.Soundbank;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tc.wx.util.FileUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Controller
@ResponseBody
@RequestMapping("/spread")
@Api(tags = "资讯管理")
public class SpreadInfoController {
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopInfoService infoService;
    @Autowired
    private ShopInfoTypeService itService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private OaInfoService oaInfoService;
    @Autowired
    private OaInfoTypeService oaItService;
    @Autowired
    private ShopCaseService caseService;
    @Autowired
    private ShopGoodService goodService;
    @Autowired
    private ShopGoodTypeService gtService;
    @Autowired
    private ShopInfoGoodService igService;
    @Autowired
    private ShopInfoCaseService icService;
    @Autowired
    private ShopCaseTypeService cpService;

    @ApiOperation(value = "推广-资讯-热门资讯")
    @RequestMapping(value = "/hotInfos", method = RequestMethod.GET)
    public Result hotInfos(
            @ApiParam(value = "token") @RequestParam String token,
            @ApiParam("分类，0全部，1只看平台，2只看门店") @RequestParam String type) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        Integer oaId = seller.getOaUserId();
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        List<OaInfo> oaInfoList = null;
        List<ShopInfo> infoList = null;
        if ("1".equals(type)) {
            oaInfoList = oaInfoService.getByOaIdAndIsShow(oaId, 1);
            if (oaInfoList != null) {
                for (OaInfo info : oaInfoList) {
                    map = new HashMap<String, Object>();
                    map.put("isShopInfo", "0");
                    map.put("id", info.getId().toString());
                    map.put("title", info.getTitle());
                    map.put("img", info.getImg());
                    map.put("isShow", info.getIsShow());
                    map.put("lookNum", info.getLookNum().toString());
                    map.put("upNum", info.getUpNum().toString());
                    map.put("isCustomerNum", info.getIsCustomerNum().toString());
                    Integer typeId = info.getTypeId();
                    OaInfoType oaInfoType = oaItService.getById(typeId);
                    if (oaInfoType != null) {
                        map.put("typeName", oaInfoType.getName());
                    }
                    maps.add(map);

                }
            }
        } else if ("2".equals(type)) {
            infoList = infoService.getByShopIdAndIsShow(shopId, 1);
            if (infoList != null) {
                for (ShopInfo info : infoList) {
                    map = new HashMap<String, Object>();
                    map.put("isShopInfo", "1");
                    map.put("id", info.getId().toString());
                    map.put("title", info.getTitle());
                    map.put("img", info.getImg());
                    map.put("isShow", info.getIsShow());
                    map.put("lookNum", info.getLookNum().toString());
                    map.put("upNum", info.getUpNum().toString());
                    map.put("isCustomerNum", info.getIsCustomerNum().toString());
                    Integer typeId = info.getTypeId();
                    ShopInfoType infoType = itService.getById(typeId);
                    if (infoType != null) {
                        map.put("typeName", infoType.getName());
                    }
                    maps.add(map);
                }
            }

        } else {
            oaInfoList = oaInfoService.getByOaIdAndIsShow(oaId, 1);
            if (oaInfoList != null) {
                for (OaInfo info : oaInfoList) {
                    map = new HashMap<>();
                    map.put("isShopInfo", "0");
                    map.put("id", info.getId().toString());
                    map.put("title", info.getTitle());
                    map.put("img", info.getImg());
                    map.put("isShow", info.getIsShow());
                    map.put("lookNum", info.getLookNum().toString());
                    map.put("upNum", info.getUpNum().toString());
                    map.put("isCustomerNum", info.getIsCustomerNum().toString());
                    Integer typeId = info.getTypeId();
                    OaInfoType oaInfoType = oaItService.getById(typeId);
                    if (oaInfoType != null) {
                        map.put("typeName", oaInfoType.getName());
                    }
                    maps.add(map);

                }
            }
            infoList = infoService.getByShopIdAndIsShow(shopId, 1);
            if (infoList != null) {
                for (ShopInfo info : infoList) {
                    map = new HashMap<String, Object>();
                    map.put("isShopInfo", "1");
                    map.put("id", info.getId().toString());
                    map.put("title", info.getTitle());
                    map.put("img", info.getImg());
                    map.put("isShow", info.getIsShow());
                    map.put("lookNum", info.getLookNum().toString());
                    map.put("upNum", info.getUpNum().toString());
                    map.put("isCustomerNum", info.getIsCustomerNum().toString());
                    Integer typeId = info.getTypeId();
                    ShopInfoType infoType = itService.getById(typeId);
                    if (infoType != null) {
                        map.put("typeName", infoType.getName());
                    }
                    maps.add(map);
                }
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
     * @param isShow
     * @param typeId
     * @param orderKey
     * @return
     */
    @ApiOperation(value = "平台咨询-资讯信息", produces = MediaType.APPLICATION_JSON_VALUE)
    @RequestMapping(value = "/oaInfos", method = RequestMethod.GET)
    public Result allOaInfo(
            @ApiParam(name = "token", value = "token") @RequestParam String token,
            @ApiParam("参数二：是否热门,1是，0否") @RequestParam(required = false) Integer isShow,
            @ApiParam("参数一：平台资讯类型id") @RequestParam(required = false) Integer typeId,
            @ApiParam("参数一：排序规则，0默认排序，1最新发布，2获客量，3使用量") @RequestParam(required = false) String orderKey) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        Integer oaId = seller.getOaUserId();
        // 每个类型下的资讯信息
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        // 资讯信息
        Map<String, Object> map = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

        // 资讯信息列表
        List<OaInfo> infoList = null;
        if (orderKey != null || typeId != null) {
            infoList = oaInfoService.getByOaIdAndOrderAndTypeId(oaId, orderKey, typeId);
        } else if (isShow != null) {
            infoList = oaInfoService.getByOaIdAndIsShow(oaId, isShow);
        } else {
            infoList = oaInfoService.getByOaId(oaId);
        }

        if (infoList != null) {
            for (OaInfo info : infoList) {
                map = new HashMap<>();
                ShopInfo shopInfo = infoService.getByShopIdAndOaInfoId(shopId, info.getId());
                if (shopInfo != null) {
                    continue;
                }
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
                OaInfoType oaInfoType = oaItService.getById(typeId);
                map.put("type", oaInfoType.getName());
                mapList.add(map);
            }
        }

        result.setList(mapList);
        if (mapList.size() > 0) {
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
     * @param isShow
     * @param isReport
     * @return
     */
    @ApiOperation(value = "门店咨询-资讯信息")
    @RequestMapping(value = "/infos", method = RequestMethod.GET)
    public Result allInfo(
            @ApiParam(name = "token", value = "token") @RequestParam String token,
            @ApiParam(name = "orderKey", value = "排序关键字 ，0默认排序，1最新发布，2获客量，3使用量") @RequestParam(required = false) String orderKey,
            @ApiParam(name = "typeId", value = "资讯的类型id") @RequestParam(required = false) Integer typeId,
            @ApiParam(name = "isShow", value = "是否热门，1是，0否") @RequestParam(required = false) Integer isShow,
            @ApiParam(name = "isReport", value = "是否必转，1是，0否") @RequestParam(required = false) String isReport

    ) {
        Result result = new Result();
        // 商家信息

        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();

        // 每个类型下的资讯信息
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        // 资讯信息
        Map<String, Object> map = null;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

        // 资讯信息列表
        List<ShopInfo> infoList = null;
        if (orderKey != null || typeId != null) {
            infoList = infoService.getByShopIdAndOrderAndTypeId(shopId, orderKey, typeId);
        } else if (isShow != null) {
            infoList = infoService.getByShopIdAndIsShow(shopId, isShow);
        } else if (isReport != null) {
            infoList = infoService.getByShopIdAndIsReport(shopId, isReport);
        } else {
            infoList = infoService.getByShopId(shopId);
        }
        if (infoList != null) {
            for (ShopInfo info : infoList) {
                map = new HashMap<String, Object>();
                System.out.println("info:" + info);
                map.put("id", info.getId().toString());
                map.put("img", info.getImg());
                map.put("title", info.getTitle());
                Date createTime = info.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                } else {
                    map.put("createTime", "");
                }
                map.put("isShow", info.getIsShow());
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
        }
        result.setList(mapList);
        if (mapList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param token
     * @param title
     * @param content
     * @param typeId
     * @param img
     * @return
     */
    @ApiOperation(value = "输入内容添加资讯")
    @RequestMapping(value = "/info/formAdd", method = RequestMethod.POST)
    public Result addForm(
            @ApiParam(value = "token") @RequestParam String token,
            @ApiParam(value = "title") @RequestParam String title,
            @ApiParam(value = "content") @RequestParam String content,
            @ApiParam(value = "typeId") @RequestParam Integer typeId,
            @RequestParam("img") CommonsMultipartFile img
    ) {
        Result result = new Result();
        // 商家信息
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        ShopInfo info = new ShopInfo();
        info.setShopId(shopId);
        info.setTitle(title);
        info.setContent(content);
        info.setTypeId(typeId);
        info.setCreateTime(new Date());
        String filename = img.getOriginalFilename();
        if (filename != null && !"".equals(filename)) {
            String imgAddress = FileUtil.getImgAddress(null, img, "case");
            if (imgAddress != null) {
                info.setImg(imgAddress);
            }
        }
        int flag = infoService.insert(info);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }

    /**
     * @param list
     * @param token
     * @return
     */
    @ApiOperation(value = "添加到我的资讯")
    @RequestMapping(value = "/info/add", method = RequestMethod.POST)
    public Result addInfoFromOa(
            @ApiParam("已选中的资讯的id") @RequestParam String list,
            @ApiParam(name = "token", value = "token") @RequestParam String token) {
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
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        seller.getOaUserId();
        // 门店编号
        Integer shopId = sellerInfo.getShopId();

        Date date = new Date();
        Integer flag = 0;

        JSONArray arrayList = null;
        if (list != null) {
            arrayList = JSONArray.parseArray(list);
        }
        System.out.println("list:" + list);
        if (arrayList != null) {
            for (Object object : arrayList) {
                if (object != null && !"".equals(object)) {
                    ShopInfo shopInfo = new ShopInfo();
                    shopInfo.setShopId(shopId);
                    shopInfo.setCreateTime(date);

                    JSONObject jsonObject = (JSONObject) object;
                    String strId = (String) jsonObject.get("id");
                    Integer oaInfoId = Integer.valueOf(strId);
                    System.out.println("ofInfoId:" + oaInfoId);
                    OaInfo oaInfo = oaInfoService.getById(oaInfoId);

                    shopInfo.setOaInfoId(oaInfoId);

                    System.out.println("title:" + oaInfo.getTitle() + " " + oaInfoId);
                    String title = oaInfo.getTitle();
                    shopInfo.setTitle(title);

                    String img = oaInfo.getImg();
                    shopInfo.setImg(img);

                    String content = oaInfo.getContent();
                    shopInfo.setContent(content);

                    Integer typeId = oaInfo.getTypeId();

                    OaInfoType oaInfoType = oaItService.getById(typeId);
                    ShopInfoType shopInfoType = null;
                    if (oaInfoType != null) {
                        shopInfoType = itService.getByShopIdAndName(shopId, oaInfoType.getName());
                    }

                    if (shopInfoType != null) {
                        shopInfo.setTypeId(shopInfoType.getId());
                    } else {
                        shopInfoType = new ShopInfoType();
                        String name = oaInfoType.getName();
                        shopInfoType.setName(name);
                        shopInfoType.setShopId(shopId);
                        Integer flagInIt = itService.insert(shopInfoType);
                        if (flagInIt < 0) {
                            System.out.println("添加分类失败");
                        }
                        shopInfoType = itService.getByShopIdAndName(shopId, name);
                        shopInfo.setTypeId(shopInfoType.getId());
                    }
                    Integer flagInInfo = infoService.insert(shopInfo);
                    if (flagInInfo < 0) {
                        flag = flagInInfo;
                        result.setFail();
                    }
                }
            }

        }
        if (flag >= 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }

    /**
     * @param id，资讯编号
     * @return 是否删除
     */
    @ApiOperation(value = "删除门店资讯")
    @RequestMapping(value = "/info/delete/{id}", method = RequestMethod.GET)
    public Result deleteInfo(@ApiParam(name = "token", value = "token") @RequestParam String token,
                             @ApiParam(name = "id", value = "资讯id") @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        int flag = infoService.deleteById(id);
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("资讯删除成功");
        } else {
            result.setMessage("资讯删除失败");
        }
        return result;
    }

    /**
     * @param id 资讯编号
     * @return 推荐资讯
     */
    @ApiOperation(value = "推荐/取消资讯")
    @RequestMapping(value = "/info/isshow/{id}", method = RequestMethod.GET)
    public Result isShowInfo(@ApiParam(name = "token", value = "token") @RequestParam String token,
                             @ApiParam(name = "isShow", value = "是否热门，1是，0否") @RequestParam Integer isShow,
                             @ApiParam(name = "id", value = "资讯id") @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        ShopInfo info = infoService.getById(id);
        Integer flag = 0;
        if (isShow != null) {
            info.setIsShow(isShow);
            flag = infoService.modifyById(info);
            result.setFlag(flag);
            if (isShow == 1) {
                if (flag > 0) {
                    result.setMessage("资讯推荐成功");
                } else {
                    result.setMessage("资讯推荐失败");
                }
            } else {
                if (flag > 0) {
                    result.setMessage("资讯取消成功");
                } else {
                    result.setMessage("资讯取消失败");
                }
            }
        } else {
            result.setMessage("缺少参数");
        }

        return result;
    }


    /**
     * @param id 资讯编号
     * @return 推荐资讯
     */
    @ApiOperation(value = "资讯是否加入首页")
    @RequestMapping(value = "/info/isIndex/{id}", method = RequestMethod.GET)
    public Result isIndexInfo(@ApiParam(name = "token", value = "token") @RequestParam String token,
                              @ApiParam(name = "isIndex", value = "是否加入首页，1是，0否") @RequestParam String isIndex,
                              @ApiParam(name = "id", value = "资讯id") @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        ShopInfo info = infoService.getById(id);
        Integer flag = 0;
        if (isIndex != null) {
            info.setIsIndex(isIndex);
            flag = infoService.modifyById(info);
            result.setFlag(flag);
            if (isIndex.equals("1")) {
                if (flag > 0) {
                    result.setMessage("资讯加入首页成功");
                } else {
                    result.setMessage("资讯加入首页失败");
                }
            } else {
                if (flag > 0) {
                    result.setMessage("资讯取消成功");
                } else {
                    result.setMessage("资讯取消失败");
                }
            }
        } else {
            result.setMessage("缺少参数");
        }

        return result;
    }

    /**
     * @param id 资讯编号
     * @return 需修改的资讯信息
     */

    @ApiOperation(value = "资讯详情")
    @RequestMapping(value = "/info/detail/{id}", method = RequestMethod.GET)
    public Result detailInfoPage(HttpServletRequest request,
                                 @ApiParam(name = "token", value = "token") @RequestParam String token,
                                 @ApiParam(name = "id", value = "资讯id") @PathVariable Integer id) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        // 资讯信息
        ShopInfo info = infoService.getById(id);
        if (info != null) {
            map.put("id", id.toString());
            map.put("isShopInfo", "1");
            map.put("title", info.getTitle());
            map.put("img", info.getImg());
            map.put("content", info.getContent());
            map.put("upNum", info.getUpNum().toString());
            map.put("lookNum", info.getLookNum().toString());
            map.put("isUsedNum", info.getIsUsedNum().toString());
            map.put("isCustomerNum", info.getIsCustomerNum().toString());
            Integer typeId = info.getTypeId();
            ShopInfoType infoType = itService.getById(typeId);
            if (infoType != null) {
                map.put("typeName", infoType.getName());
            }

        }
        resultMap.put("info", map);
        List<ShopInfoCase> infoCaseList = icService.getByInfoId(id);
        if (infoCaseList != null) {
            maps = new ArrayList<Map<String, Object>>();
            for (ShopInfoCase shopInfoCase : infoCaseList) {
                map = new HashMap<String, Object>();
                Integer shopCaseId = shopInfoCase.getShopCaseId();
                ShopCase shopCase = caseService.getById(shopCaseId);

                if (shopCase != null) {
                    map.put("caseId", shopCase.getId().toString());
                    Integer typeId = shopCase.getTypeId();
                    ShopCaseType caseType = cpService.getById(typeId);
                    if (caseType != null) {
                        map.put("type", caseType.getName());
                    } else {
                        map.put("type", "");
                    }
                    map.put("title", shopCase.getTitle());
                    map.put("img", shopCase.getImg());
                    map.put("lookNum", shopCase.getLookNum().toString());
                    map.put("upNum", shopCase.getUpNum().toString());
                }
                maps.add(map);
            }
        }
        resultMap.put("cases", maps);

        List<ShopInfoGood> infoGoodList = igService.getByInfoId(id);
        if (infoGoodList != null) {
            maps = new ArrayList<Map<String, Object>>();
            for (ShopInfoGood shopInfoGood : infoGoodList) {
                Integer shopGoodId = shopInfoGood.getShopGoodId();
                ShopGood shopGood = goodService.getById(shopGoodId);
                if (shopGood != null) {
                    map = new HashMap<>();
                    map.put("goodId", shopGood.getId().toString());
                    map.put("goodName", shopGood.getGoodName());
                    map.put("goodPrice", shopGood.getGoodPrice());
                    map.put("goodImg", shopGood.getGoodImg());
                    Integer goodTypeId = shopGood.getGoodTypeId();
                    ShopGoodType goodType = gtService.getById(goodTypeId);
                    if (goodType != null) {
                        map.put("goodType", goodType.getName());
                    } else {
                        map.put("goodType", "");
                    }
                    maps.add(map);
                }

            }
        }
        resultMap.put("goods", maps);
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
     * @param id
     * @param cases
     * @return
     */
    @ApiOperation(value = "修改资讯的案例")
    @RequestMapping(value = "/info/midifyCase/{id}", method = RequestMethod.POST)
    public Result modifyInfoCaseForm(@ApiParam(name = "token", value = "token") @RequestParam String token,
                                     @ApiParam(value = "资讯id") @PathVariable(value = "id", required = true) Integer id,
                                     @ApiParam(value = "案例列表") @RequestParam String cases) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        Integer flag = null;


        JSONArray caseList = null;
        if (cases != null) {
            caseList = JSONArray.parseArray(cases);
        }
        if (caseList != null) {
            icService.deleteByInfoId(id);
            for (Object object : caseList) {
                if (object != null) {
                    String jsonObject = (String) object;
                    Integer caseId = Integer.valueOf(jsonObject);
                    ShopInfoCase infoCase = new ShopInfoCase();
                    infoCase.setShopInfoId(id);
                    infoCase.setShopCaseId(caseId);
                    infoCase.setCreateTime(new Date());
                    flag = icService.insert(infoCase);
                }
            }
        }
        if (flag > 0) {
            result.setSuccess("修改");

        } else {
            result.setFail("修改");
        }

        return result;
    }

    /**
     * @param token
     * @param id
     * @param goods
     * @return
     */
    @ApiOperation(value = "修改资讯的商品")
    @RequestMapping(value = "/info/midifyGood/{id}", method = RequestMethod.POST)
    public Result modifyInfoGoodForm(@ApiParam(name = "token", value = "token") @RequestParam String token,
                                     @ApiParam(value = "资讯id") @PathVariable(value = "id", required = true) Integer id,
                                     @ApiParam(value = "商品列表") @RequestParam String goods) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        Integer flag = null;
        System.out.println("goods:" + goods);
        JSONArray goodList = null;
        if (goods != null) {
            goodList = JSONArray.parseArray(goods);
        }
        if (goodList != null) {
            igService.deleteByInfoId(id);
            for (Object object : goodList) {
                if (object != null) {
                    String strGoodId = (String) object;
                    Integer goodId = Integer.valueOf(strGoodId);
                    ShopInfoGood infoGood = new ShopInfoGood();
                    infoGood.setShopInfoId(id);
                    infoGood.setShopGoodId(goodId);
                    infoGood.setCreateTime(new Date());
                    flag = igService.insert(infoGood);
                }
            }
        }

        if (flag > 0) {
            result.setSuccess("修改");

        } else {
            result.setFail("修改");
        }

        return result;
    }


    @ApiOperation(value = "平台资讯-资讯详情")
    @RequestMapping(value = "/oaInfo/detail/{id}", method = RequestMethod.GET)
    public Result detailOaInfoPage(HttpServletRequest request,
                                   @ApiParam(name = "token", value = "token") @RequestParam String token,
                                   @ApiParam(name = "id", value = "资讯id") @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        // 资讯信息
        OaInfo info = oaInfoService.getById(id);
        if (info != null) {
            map.put("id", id.toString());
            map.put("isShopInfo", "0");
            map.put("title", info.getTitle());
            map.put("img", info.getImg());
            map.put("content", info.getContent());
            map.put("upNum", info.getUpNum().toString());
            map.put("lookNum", info.getLookNum());
            map.put("isCustomerNum", info.getIsCustomerNum());
            Integer typeId = info.getTypeId();
            OaInfoType infoType = oaItService.getById(typeId);
            if (infoType != null) {
                map.put("typeName", infoType.getName());
            } else {
                map.put("typeName", "");
            }
        }
        resultMap.put("info", map);

        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    @ApiOperation(value = "平台资讯-资讯类型")
    @RequestMapping(value = "/oaInfoTypes", method = RequestMethod.GET)
    public Result allOaInfoTypes(@ApiParam(name = "token", value = "token") @RequestParam String token) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }

        Integer oaUserId = seller.getOaUserId();

        List<OaInfoType> oaInfoTypes = oaItService.getByOaId(oaUserId);
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        if (oaInfoTypes != null) {
            for (OaInfoType oaIt : oaInfoTypes) {
                map = new HashMap<String, Object>();
                map.put("typeId", oaIt.getId());
                map.put("typeName", oaIt.getName());
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
     * @return
     */
    @ApiOperation(value = "门店资讯的类型信息")
    @RequestMapping(value = "/infoTypes", method = RequestMethod.GET)
    public Result allInfoTypes(@ApiParam(name = "token", value = "token") @RequestParam String token) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        List<ShopInfoType> infoTypes = itService.getByShopId(shopId);
        if (infoTypes != null) {
            for (ShopInfoType it : infoTypes) {
                map = new HashMap<>();
                map.put("typeId", it.getId());
                map.put("typeName", it.getName());
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
     * @param request 获取token 和选中的id
     * @return 资讯类型的信息
     */
    @ApiOperation(value = "门店资讯类型的排序")
    @RequestMapping(value = "/infoType/sort", method = RequestMethod.POST)
    public Result sortInfoTypes(HttpServletRequest request,
                                @ApiParam(name = "token", value = "token") @RequestParam String token) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        String[] idList = request.getParameterValues("id");
        Integer flag = null;
        if (idList != null && idList.length > 0) {
            for (int i = 0; i < idList.length; i++) {
                String idStr = idList[i];
                if (idStr != null && !"".equals(idStr)) {
                    Integer id = Integer.valueOf(idStr);
                    ShopInfoType infoType = itService.getById(id);
                    infoType.setSorting(i + 1);
                    flag = itService.modify(infoType);
                }
            }
        }
        result.setFlag(flag);
        return result;
    }

    @RequestMapping(value = "/infoType/add", method = RequestMethod.POST)
    public Result addInfoType(HttpServletRequest request, @RequestParam String name) {
        Result result = new Result();
        // 商家信息
        String token = request.getParameter("token");
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        ShopInfoType infoType = new ShopInfoType();
        infoType.setShopId(shopId);
        infoType.setName(name);
        Integer sort = itService.getMaxSort();
        infoType.setSorting(sort + 1);
        int flag = itService.insert(infoType);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }

    @RequestMapping(value = "/infoType/delete/{id}", method = RequestMethod.GET)
    public Result deleteInfoType(@ApiParam(name = "id", value = "资讯类型id") @PathVariable Integer id,
                                 @ApiParam(name = "token", value = "token") @RequestParam String token) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        Integer flag = itService.deleteById(id);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    @RequestMapping(value = "/infoType/modify/{id}", method = RequestMethod.GET)
    public Result modifyInfoTypePage(HttpServletRequest request, @PathVariable Integer id) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        Map<String, Object> map = new HashMap<>();
        ShopInfoType infoType = itService.getById(id);
        if (infoType != null) {
            map.put("id", infoType.getId());
            map.put("name", infoType.getName());
        }
        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess("查询");
        } else {
            result.setFail("查询");
        }
        return result;
    }

    @RequestMapping(value = "/infoType/modify/{id}", method = RequestMethod.POST)
    public Result modifyInfoTypeForm(@PathVariable Integer id, HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        String name = request.getParameter("name");
        ShopInfoType infoType = itService.getById(id);
        if (name != null && !"".equals(name)) {
            infoType.setName(name);
        }
        Integer flag = itService.modify(infoType);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("查询");
        }
        return result;
    }
}
