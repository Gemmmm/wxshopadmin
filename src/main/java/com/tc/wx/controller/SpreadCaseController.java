package com.tc.wx.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.tc.wx.model.*;
import com.tc.wx.service.*;
import com.tc.wx.util.FileUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*
        ;

@Controller
@RequestMapping(value = "spread")
@ResponseBody
@Api(tags = "推广-案例管理")
public class SpreadCaseController {
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopCaseService caseService;
    @Autowired
    private ShopCaseTypeService ctService;
    @Autowired
    private ShopCasePicService cpService;
    @Autowired
    private OaCaseService oaCaseService;
    @Autowired
    private OaCaseTypeService oaCtService;
    @Autowired
    private OaCasePicService oaCpService;
    @Autowired
    private ShopInfoCaseService icService;


    @ApiOperation(value = "门店案例类型")
    @RequestMapping(value = "/caseTypes", method = RequestMethod.GET)
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
        List<ShopCaseType> caseTypes = ctService.getByShopId(shopId);
        if (caseTypes != null) {
            for (ShopCaseType it : caseTypes) {
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

    @ApiOperation(value = "门店案例类型-添加")
    @RequestMapping(value = "/caseType/add", method = RequestMethod.POST)
    public Result addInfoType(
            @RequestParam String token,
            @RequestParam String name) {
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
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        ShopCaseType caseType = ctService.getByShopIdAndName(shopId,name);
        if (caseType != null) {
            result.setMessage("该类型已经存在");
            result.setCode("-2");
            return result;
        }

        caseType = new ShopCaseType();
        caseType.setShopId(shopId);
        caseType.setName(name);
        int flag = ctService.insert(caseType);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }


    @ApiOperation(value = "平台案例类型")
    @RequestMapping(value = "/oaCaseTypes", method = RequestMethod.GET)
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
        Integer oaId = seller.getOaUserId();
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        List<OaCaseType> caseTypes = oaCtService.getByOaId(oaId);
        if (caseTypes != null) {
            for (OaCaseType it : caseTypes) {
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
     * @param token
     * @return
     */
    @ApiOperation(value = "案例库")
    @RequestMapping(value = "/oaCases", method = RequestMethod.GET)
    public Result allOaCases(
            @ApiParam @RequestParam(required = false)  String token,
            @ApiParam("类型") @RequestParam(required = false)  Integer typeId
    ) {
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
        Integer oaId = seller.getOaUserId();
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;

        List<OaCase> oaCaseList = null;
        if(typeId!=null&&!"".equals(typeId)){
            oaCaseList = oaCaseService.getByOaIdAndTypeId(oaId,typeId);
        }else{
            oaCaseList = oaCaseService.getByOaId(oaId);
        }

        if (oaCaseList != null) {
            for (OaCase oaCase : oaCaseList) {
                map = new HashMap<String, Object>();
                Integer oaCaseId = oaCase.getId();
                ShopCase shopCase = caseService.getByShopIdAndOaCaseId(shopId, oaCaseId);
                if (shopCase != null) {
                    continue;
                }
                typeId=oaCase.getTypeId();
                OaCaseType oaCaseType=oaCtService.getById(typeId);
                if(oaCaseType!=null){
                    map.put("type",oaCaseType.getName());
                }else{
                    map.put("type","");
                }

                map.put("id", oaCase.getId().toString());
                map.put("title", oaCase.getTitle());
                map.put("img", oaCase.getImg());
                map.put("lookNum", oaCase.getLookNum().toString());
                map.put("upNum", oaCase.getUpNum().toString());
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


    @ApiOperation(value = "案例库-详情")
    @RequestMapping(value = "/oaCase/detail/{id}", method = RequestMethod.GET)
    public Result detailOaCase(
            @RequestParam(required = false) String token,
            @PathVariable(required = false) Integer id) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        Map<String, Object> map = new HashMap<String, Object>();
        OaCase cases = oaCaseService.getById(id);
        if (cases != null) {
            map.put("id", cases.getId());
            map.put("title", cases.getTitle());
            map.put("img", cases.getImg());
            map.put("content", cases.getContent());
            Date createTime = cases.getCreateTime();
            if (createTime != null) {
                map.put("createTime", sdf.format(createTime));
            }else{
                map.put("createTime","");
            }
            map.put("lookNum", cases.getLookNum());
            map.put("upNum", cases.getUpNum());
            map.put("example", cases.getExample());
        }

        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }


    /**
     * @param list  id集合
     * @param token token
     * @return 添加成功
     */
    @ApiOperation(value = "从案例库中添加案例")
    @RequestMapping(value = "/case/addFromOa", method = RequestMethod.POST)
    public Result addFromOa(
            @ApiParam("已选中的案例的id的json") @RequestParam String list,
            @ApiParam @RequestParam String token) {
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
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        //门店编号
        Integer shopId = sellerInfo.getShopId();

        JSONArray arrayList = null;
        if (list != null) {
            arrayList = JSONArray.parseArray(list);
        }
        System.out.println("list:::" + list);
        Integer Flag = 0;
        Date date = new Date();
        if (arrayList != null) {
            for (Object object : arrayList) {
                JSONObject jsonObject = (JSONObject) object;
                Integer oaCaseId = Integer.valueOf((String) jsonObject.get("id"));
                OaCase oaCase = oaCaseService.getById(oaCaseId);
                ShopCase shopCase = new ShopCase();
                Integer flag = 0;
                if (oaCase != null) {
                    shopCase.setShopId(shopId);
                    Integer typeId = oaCase.getTypeId();
                    OaCaseType oaCaseType=oaCtService.getById(typeId);
                    ShopCaseType shopCaseType=null;
                    if(oaCaseType!=null){
                        shopCaseType=ctService.getByShopIdAndName(shopId,oaCaseType.getName());
                    }
                    if(shopCaseType!=null){
                        shopCase.setTypeId(shopCaseType.getId());
                    }else{
                        shopCaseType = new ShopCaseType();
                        String name = oaCaseType.getName();
                        shopCaseType.setName(name);
                        shopCaseType.setShopId(shopId);
                        Integer flagInIt = ctService.insert(shopCaseType);
                        if (flagInIt < 0) {
                            System.out.println("添加分类失败");
                        }
                        shopCaseType = ctService.getByShopIdAndName(shopId,name);
                        shopCase.setTypeId(shopCaseType.getId());
                    }
                    String title = oaCase.getTitle();
                    shopCase.setTitle(title);
                    String img = oaCase.getImg();
                    shopCase.setImg(img);
                    String content = oaCase.getContent();
                    shopCase.setContent(content);

                    shopCase.setCreateTime(date);
                    shopCase.setExample(oaCase.getExample());
                    shopCase.setOaCaseId(oaCase.getId());
                    flag = caseService.insert(shopCase);
                    System.out.println("===="+shopId+" "+title+" "+img+" "+date);
                    shopCase=caseService.getByShopIdAndTitleAndImgAndCreateTime(shopId,title,img,date);
                    List<OaCasePic> oaCasePics=oaCpService.getByOaCaseId(oaCase.getId());
                    if(oaCasePics!=null){
                        for (OaCasePic oaCasePic : oaCasePics) {
                            if(oaCasePic!=null){
                                ShopCasePic shopCasePic=new ShopCasePic();
                                shopCasePic.setCaseId(shopCase.getId());
                                shopCasePic.setCasePic(oaCasePic.getCasePic());
                                cpService.insert(shopCasePic);
                            }
                        }
                    }



                }

                if (flag < 0) {
                    Flag = flag;
                }

            }
        }
        result.setFlag(Flag);
        if (Flag < 0) {
            result.setMessage("案例添加失败");
        } else {
            result.setMessage("案例添加成功");
        }

        return result;
    }

    /**
     * @param token
     * @param isShow 2. isShow 是否启用，在工作台中操作
     * @return
     */
    @RequestMapping(value = "/cases", method = RequestMethod.GET)
    public Result allCase(
            @ApiParam @RequestParam String token,
            @ApiParam("1时间，2浏览量，3点赞数") @RequestParam(required = false) String orderKey,
            @ApiParam("类型编号") @RequestParam(required = false) Integer typeId,
            @ApiParam("isShow 是否启用，在工作台中操作") @RequestParam(required = false) Integer isShow

    ) {
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
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        List<ShopCase> caseList = null;
        if (isShow != null || typeId != null || orderKey != null) {
            caseList = caseService.getByShopIdAndTypeIdAndIsShowAndOrderKey(shopId, typeId, isShow, orderKey);
        } else {
            caseList = caseService.getByShopId(shopId);
        }
        List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        if (caseList != null) {
            for (ShopCase cases : caseList) {
                map = new HashMap<>();
                map.put("id", cases.getId());
                map.put("img", cases.getImg());
                map.put("title", cases.getTitle());
                map.put("lookNum", cases.getLookNum());
                map.put("upNum", cases.getUpNum());
                resultList.add(map);
            }
        }
        result.setList(resultList);
        if (resultList.size() > 0) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param id 案例编号
     * @return 案例是否删除
     */
    @RequestMapping(value = "/case/delete/{id}", method = RequestMethod.GET)
    public Result deleteCase(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }
        int flag = caseService.deleteById(id);
        int flag1=cpService.deleteByCaseId(id);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    /**
     * @param id 案例编号
     * @return 启动案例
     */
    @RequestMapping(value = "/case/show/{id}", method = RequestMethod.GET)
    public Result showCase(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }

        ShopCase cases = caseService.getById(id);
        cases.setIsShow(1);
        Integer flag = caseService.modify(cases);
        int flag1=icService.modifyByGoodId(id,1);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }

    /**
     * @param id 案例编号
     * @return 停用案例
     */
    @RequestMapping(value = "/case/notshow/{id}", method = RequestMethod.GET)
    public Result notShowCase(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setCode("-1");
            return result;
        }

        ShopCase cases = caseService.getById(id);
        cases.setIsShow(0);
        Integer flag = caseService.modify(cases);
        result.setFlag(flag);
        if (flag > 0) {
            result.setMessage("案例停用成功");
        } else {
            result.setFail("案例停用失败");
        }
        return result;
    }

    /**
     * @param request 获取输入的案例信息
     * @param img     封面图
     * @return 案例是否增加
     */
    @RequestMapping(value = "/case/add", method = RequestMethod.POST)
    public Result addCasePage(HttpServletRequest request, @RequestParam(required = false) MultipartFile img) {
        Result result = new Result();
        // 商家信息
        String token = request.getParameter("token");
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
        ShopCase cases = new ShopCase();
        cases.setShopId(shopId);
        cases.setCreateTime(new Date());

        String title = request.getParameter("title");
        if (title != null && !"".equals(title)) {
            cases.setTitle(title);
        }
        String intro = request.getParameter("intro");
        if (intro != null && !"".equals(intro)) {
            cases.setIntro(intro);
        }
        String content = request.getParameter("content");
        if (content != null && !"".equals(content)) {
            cases.setContent(content);
        }

        String filename = img.getOriginalFilename();
        if(filename!=null&&!"".equals(filename)){
            String address = FileUtil.uploadImage( img, "case");
            if (address != null && !"".equals(address)) {
                cases.setImg(address);
            }
        }


        int flag = caseService.insert(cases);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }

    /**
     * @param id 案例编号
     * @return 返回需要修改的案例的当前信息
     */
    @RequestMapping(value = "/case/modify/{id}", method = RequestMethod.GET)
    public Result modifyCasePage(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
        Result result = new Result();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        Map<String, Object> map = new HashMap<String, Object>();
        ShopCase cases = caseService.getById(id);
        if (cases != null) {
            map.put("id", cases.getId());
            map.put("title", cases.getTitle());
            map.put("img", cases.getImg());
            map.put("intro", cases.getIntro());
            map.put("content", cases.getContent());
            Date createTime = cases.getCreateTime();
            if (createTime != null) {
                map.put("createTime", sdf.format(createTime));
            }else {
                map.put("createTime","");
            }
            map.put("lookNum", cases.getLookNum());
            map.put("upNum", cases.getUpNum());
            map.put("example", cases.getExample());
        }

        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param request 获取前端信息
     * @param id      案例编号
     * @param img     封面图
     * @return 案例是否修改成功
     */
    @RequestMapping(value = "/case/modify/{id}", method = RequestMethod.POST)
    public Result modifyCaseForm(
            HttpServletRequest request, @PathVariable(required = true) Integer id,
            @RequestParam("img") MultipartFile img) {
        Result result = new Result();
        String token = request.getParameter("token");
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        ShopCase cases = caseService.getById(id);
        String title = request.getParameter("title");
        if (title != null && !"".equals(title)) {
            cases.setTitle(title);
        }
        String content = request.getParameter("content");
        if (content != null && !"".equals(content)) {
            cases.setContent(content);
        }
        String intro = request.getParameter("intro");
        if (intro != null && !"".equals(intro)) {
            cases.setIntro(intro);
        }
        String filename = img.getOriginalFilename();
        if (filename != null && !"".equals(filename)) {
            String address = FileUtil.uploadImage( img, "case");
            if (address != null && !"".equals(address)) {
                cases.setImg(address);
            }
        }
        int flag = caseService.modify(cases);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }


}
