package com.tc.wx.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tc.wx.util.FileUtil;

import io.swagger.annotations.Api;

@RestController
@RequestMapping("/spread")
@Api(tags = "商品管理")
public class SpreadGoodController {
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopGoodService goodService;

    @Autowired
    private ShopGoodPicService gpService;
    @Autowired
    private ShopGoodTypeService gtService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private OaGoodService oaGoodService;
    @Autowired
    private OaGoodTypeService oaGtService;
    @Autowired
    private OagoodPicService oaGpService;
    @Autowired
    private ShopInfoGoodService igService;


    @ApiOperation("商品库-分类")
    @RequestMapping(value = "/oaGoodTypes", method = RequestMethod.GET)
    public Result allOaGoodTypes(HttpServletRequest request) {
        Result result = new Result();
        String token = request.getParameter("token");
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
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        List<OaGoodType> goodTypes = oaGtService.getByOaId(oaId);
        if (goodTypes != null) {
            for (OaGoodType goodType : goodTypes) {
                map = new HashMap<String, Object>();
                map.put("typeId", goodType.getId().toString());
                map.put("typeName", goodType.getName());
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

    @RequestMapping(value = "/goodTypes", method = RequestMethod.GET)
    public Result allGoodTypes(HttpServletRequest request) {
        Result result = new Result();
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

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        List<ShopGoodType> goodTypes = gtService.getByShopId(shopId);
        if (goodTypes != null) {
            for (ShopGoodType goodType : goodTypes) {
                map = new HashMap<String, Object>();
                map.put("typeId", goodType.getId().toString());
                map.put("typeName", goodType.getName());
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
     * @param id 商品类型编号
     * @return 删除是否成功
     */
    @RequestMapping(value = "/goodType/delete/{id}", method = RequestMethod.GET)
    public Result deleteGoodType(@PathVariable Integer id) {
        Result result = new Result();
        List<ShopGood> goods = goodService.getByTypeId(id);
        if (goods.size() > 0) {
            result.setMessage("该类型下有商品，无法删除。");
            return result;
        }
        Integer flag = gtService.deleteById(id);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    /**
     * @param request 获取token和类型名
     * @return
     */
    @RequestMapping(value = "/goodType/add", method = RequestMethod.GET)
    public Result addGoodType(HttpServletRequest request) {
        Result result = new Result();
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
        Integer shopId = sellerInfo.getShopId();
        Integer flag = 0;
        String name = request.getParameter("name");
        if (name != null && !"".equals(name)) {
            ShopGoodType goodType = new ShopGoodType();
            goodType.setName(name);
            goodType.setShopId(shopId);
            flag = gtService.insert(goodType);
        }

        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    /**
     * @param orderKey 排序关键字，1创建时间，2浏览量，3点赞量
     * @return 推广-商品
     */
    @RequestMapping(value = "/goods", method = RequestMethod.GET)
    public Result allGood(
            @ApiParam @RequestParam(required = false) String token,
            @ApiParam @RequestParam(required = false) Integer typeId,
            @ApiParam @RequestParam(required = false) String orderKey,
            @ApiParam @RequestParam(required = false) Integer isShow
    ) {
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
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        // 商品列表
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        // 商品信息
        Map<String, Object> map = null;
        List<ShopGood> goodList = null;
        if ((typeId != null && typeId != 0) || orderKey != null || isShow != null) {
            goodList = goodService.getByShopIdAndTypeIdAndOrderKeyAndIsShow(shopId, typeId, orderKey, isShow);
        } else {
            goodList = goodService.getByShopId(shopId);
        }
        if (goodList != null) {
            for (ShopGood good : goodList) {
                map = new HashMap<String, Object>();
                map.put("id", good.getId().toString());
                map.put("goodName", good.getGoodName());
                map.put("goodImg", good.getGoodImg());
                map.put("goodPrice", good.getGoodPrice().toString());
                map.put("upNum", good.getUpNum().toString());
                map.put("lookNum", good.getLookNum());
                typeId = good.getGoodTypeId();
                ShopGoodType goodType = gtService.getById(typeId);
                if (goodType != null) {
                    map.put("type", goodType.getName());
                } else {
                    map.put("type", "");
                }
                mapList.add(map);
            }
        }
        result.setList(mapList);
        if (mapList.size() > 0) {
            result.setMessage("商品查询成功");
        } else {
            result.setFail();
        }
        return result;

    }

    /**
     * @param id 商品编号
     * @return 删除是否成功
     */
    @RequestMapping(value = "/good/delete/{id}", method = RequestMethod.GET)
    public Result deleteGood(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
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

        int flag = goodService.deleteById(id);
        int flag1 = gpService.deleteByGoodId(id);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    /**
     * @param request 获取token
     * @param id      商品编号
     * @return
     */
    @RequestMapping(value = "/good/show/{id}", method = RequestMethod.GET)
    public Result showGood(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
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
        ShopGood good = goodService.getById(id);
        int flag = 0;
        if (good != null) {
            good.setIsShow(1);
            // 根据id修改商品信息
            flag = goodService.modifyById(good);
        }

        igService.modifyByGoodId(id, 1);
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("商品上架成功");
        } else {
            result.setMessage("商品上架失败");
        }
        return result;
    }

    @RequestMapping(value = "/good/notshow/{id}", method = RequestMethod.GET)
    public Result notShowGood(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
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
        ShopGood good = goodService.getById(id);
        int flag = 0;
        if (good != null) {
            good.setIsShow(0);
            flag = goodService.modifyById(good);
        }
        Integer isShow = 0;
        int flag1 = igService.modifyByGoodId(id, isShow);

        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("商品下架成功");
        } else if (flag < 0) {
            result.setMessage("商品下架失败");
        }
        return result;
    }

    /**
     * @return 商品库信息
     */
    @ApiOperation("商品库")
    @RequestMapping(value = "/oaGoods", method = RequestMethod.GET)
    public Result addGoodPage(
            @ApiParam @RequestParam(required = false) String token,
            @ApiParam @RequestParam(required = false) Integer typeId
    ) {
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
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        // 根据商家id查询商品信息
        List<OaGood> oaGoods = null;
        if (typeId != null && !"".equals(typeId) && !"0".equals(typeId)) {
            oaGoods = oaGoodService.getByOaIdAndTypeId(oaId, typeId);
        } else {
            oaGoods = oaGoodService.getByOaId(oaId);
        }

        if (oaGoods != null) {
            for (OaGood oaGood : oaGoods) {
                map = new HashMap<>();
                Integer oaGoodId = oaGood.getId();

                ShopGood good = goodService.getbyOaShopIdAndGoodId(shopId, oaGoodId);
                if (good != null) {
                    continue;
                }
                map.put("id", oaGoodId.toString());
                typeId = oaGood.getGoodTypeId();
                OaGoodType oaGoodType = oaGtService.getById(typeId);
                if (oaGoodType != null) {
                    map.put("type", oaGoodType.getName());
                } else {
                    map.put("type", "");
                }
                map.put("goodName", oaGood.getGoodName());
                map.put("goodImg", oaGood.getGoodImg());
                map.put("goodPrice", oaGood.getGoodPrice().toString());
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

    @ApiOperation("商品库-商品详情")
    @RequestMapping(value = "/oaGood/modify/{id}", method = RequestMethod.GET)
    public Result OaGoodDetail(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
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
        sellerInfo.getShopId();
        OaGood oaGood = oaGoodService.getById(id);

        Map<String, Object> map = new HashMap<>();
        if (oaGood != null) {
            map.put("id", oaGood.getId());
            map.put("goodName", oaGood.getGoodName());
            map.put("goodImg", oaGood.getGoodImg());
            map.put("goodPrice", oaGood.getGoodPrice());
            map.put("content", oaGood.getContent());
            OaGoodType goodType = oaGtService.getById(oaGood.getGoodTypeId());
            if (goodType != null) {
                map.put("type", goodType.getName());
            } else {
                map.put("type", "");
            }

        }

        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess("查询");
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param request 前端输入的商品信息
     * @return 添加是否成功
     */
    @RequestMapping(value = "/good/add", method = RequestMethod.POST)
    public Result addGoodForm(HttpServletRequest request) {
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

        Map<String, String> map = new HashMap<>();

        Integer Flag = 1;
        String list = request.getParameter("list");
        System.out.println("list:" + list);
        JSONArray arrayList = null;
        if (list != null) {
            arrayList = JSONArray.parseArray(list);
        }
        if (arrayList != null && arrayList.size() > 0) {
            for (Object object : arrayList) {
                JSONObject jsonObject = (JSONObject) object;
                ShopGood shopGood = new ShopGood();
                shopGood.setShopId(shopId);
                Integer id = Integer.valueOf((String) jsonObject.get("id"));
                OaGood oaGood = null;
                if (id != null) {
                    oaGood = oaGoodService.getById(id);
                }
                String price = (String) jsonObject.get("goodPrice");
                if (price != null && !"".equals(price)) {
                    shopGood.setGoodPrice(new BigDecimal(price));
                } else {
                    shopGood.setGoodPrice(oaGood.getGoodPrice());
                }

                Integer typeId = oaGood.getGoodTypeId();
                System.out.println("typeId:" + typeId);
                OaGoodType oaGoodType = oaGtService.getById(typeId);
                String typeName = oaGoodType.getName();
                ShopGoodType goodType = null;
                if (typeName != null) {
                    goodType = gtService.getByShopIdAndName(shopId, typeName);
                }

                if (goodType != null) {
                    shopGood.setGoodTypeId(goodType.getId());
                } else {
                    goodType = new ShopGoodType();
                    goodType.setShopId(shopId);
                    String name = oaGoodType.getName();
                    goodType.setName(name);
                    gtService.insert(goodType);
                    goodType = gtService.getByShopIdAndName(shopId, name);
                    shopGood.setGoodTypeId(goodType.getId());
                }

                String goodName = oaGood.getGoodName();
                if (goodName != null && !"".equals(goodName)) {
                    shopGood.setGoodName(goodName);
                }
                String goodImg = oaGood.getGoodImg();
                if (goodImg != null && !"".equals(goodImg)) {
                    shopGood.setGoodImg(goodImg);
                }
                String content = oaGood.getContent();
                if (content != null && !"".equals(content)) {
                    shopGood.setContent(content);
                }
                Date date = new Date();
                shopGood.setCreateTime(date);
                shopGood.setOaGoodId(oaGood.getId());

                int flag = goodService.insert(shopGood);
                if (flag < 0) {
                    result.setMessage(goodName + "商品导入失败");
                    result.setCode("-2");
                    return result;
                }
                shopGood = goodService.getByShopIdAndNameAndImgAndCreateTime(shopId, goodName, goodImg, null);
                List<OaGoodPic> oaGoodPics = oaGpService.getByOaGoodId(oaGood.getId());
                if (oaGoodPics != null) {
                    for (OaGoodPic oaGoodPic : oaGoodPics) {
                        if (oaGoodPic != null) {
                            ShopGoodPic shopGoodPic = new ShopGoodPic();
                            shopGoodPic.setGoodId(shopGood.getId());
                            shopGoodPic.setImg(oaGoodPic.getGoodsPic());
                            gpService.insert(shopGoodPic);
                        }
                    }
                }


                if (flag < 0) {
                    Flag = flag;
                }
            }
        }
        result.setFlag(Flag);
        if (Flag >= 0) {
            result.setMessage("商品添加成功。");
        } else {
            result.setMessage("商品添加出错。");
        }

        return result;
    }

    /**
     * @param id 需要修改的商品的编号
     * @return 需要修改的商品的信息
     */
    @RequestMapping(value = "/good/modify/{id}", method = RequestMethod.GET)
    public Result modifyGood(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
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
        sellerInfo.getShopId();
        ShopGood good = goodService.getById(id);

        Map<String, Object> map = new HashMap<>();
        if (good != null) {
            map.put("id", good.getId());
            map.put("goodName", good.getGoodName());
            map.put("goodImg", good.getGoodImg());
            map.put("goodPrice", good.getGoodPrice());
            map.put("content", good.getContent());
            ShopGoodType goodType = gtService.getById(good.getGoodTypeId());
            if (goodType != null) {
                map.put("type", goodType.getName());
            }
        }

        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess("查询");
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param id      需要修改的商品的编 号
     * @param request 获取前端的输入的信息
     * @param img     封面图
     * @return
     */
    @RequestMapping(value = "/good/modify/{id}", method = RequestMethod.POST)
    public Result modifyGoodForm(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request,
                                 @RequestParam("img") CommonsMultipartFile img) {
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
        // 商品信息
        ShopGood good = goodService.getById(id);
        good.setShopId(shopId);
        // 商品名称
        String goodName = request.getParameter("goodName");
        if (goodName != null && !"".equals(goodName)) {
            good.setGoodName(goodName);
        }
        String content = request.getParameter("content");
        if (content != null && !"".equals(content)) {
            good.setContent(content);
        }
        String price = request.getParameter("price");
        if (price != null && !"".equals(price)) {
            good.setGoodPrice(new BigDecimal(price));
        }
        String type = request.getParameter("type");
        if (type != null && !"".equals(type)) {
            good.setGoodTypeId(Integer.valueOf(type));
        }
        String filename = img.getOriginalFilename();
        if (filename != null && !"".equals(filename)) {
            String address = FileUtil.getImgAddress(request, img, "good");
            if (address != null && !"".equals(address)) {
                good.setGoodImg(address);
            }
        }
        int flag = goodService.modifyById(good);
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("商品修改成功");
        } else {
            result.setMessage("商品修改失败");
        }
        return result;
    }

}
