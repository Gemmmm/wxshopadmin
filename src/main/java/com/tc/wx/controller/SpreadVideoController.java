package com.tc.wx.controller;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import com.tc.wx.util.FileUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * @author DELL
 * @date 2020/9/18 11:46
 */
@RestController
@RequestMapping("/spread")
@Api(tags = "推广-小视频")
public class SpreadVideoController {

    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopVideoTypeService vtService;
    @Autowired
    private ShopVideoService videoService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private OaVideoService oaVideoService;
    @Autowired
    private OaVideoTypeService oaVtService;


    @Autowired
    private OaPosterService oaPosterService;
    @Autowired
    private OaPosterTypeService oaPtService;

    @ApiOperation("平台海报-类型")
    @RequestMapping(value = "/oaPosterTypes", method = RequestMethod.GET)
    public Result allPosterType(@ApiParam @RequestParam String token) {
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

        // 小视频的类型列表
        List<OaPosterType> posterTypeList = oaPtService.getByOaId(oaId);
        List<Map<String, Object>> mapList = new ArrayList<>();
        Map<String, Object> map = null;

        if (posterTypeList != null) {
            for (OaPosterType video : posterTypeList) {
                map = new HashMap<String, Object>();
                map.put("typeId", video.getId().toString());
                map.put("typeName", video.getName());
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
     * @param typeId
     * @param createTime
     * @param isCustomerNum
     * @return
     */
    @ApiOperation(value = "海报信息")
    @RequestMapping(value = "/oaPosters", method = RequestMethod.GET)
    public Result allPoster(@ApiParam(name = "token", value = "token") @RequestParam String token,
                            @ApiParam("海报类型id") @RequestParam Integer typeId,
                            @ApiParam("排序规则，1时间升，0时间降") @RequestParam String createTime,
                            @ApiParam("排序规则，1获客升，0获客降") @RequestParam String isCustomerNum
    ) {
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
        // 商家详细信息

        // 每个类型下的海报信息
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        // 海报信息
        Map<String, Object> map = null;


        // 海报信息的列表
        List<OaPoster> posterList = null;
        if (createTime != null || isCustomerNum != null) {
            posterList = oaPosterService.getByExample(oaId, typeId, createTime, isCustomerNum);
        } else {
            posterList = oaPosterService.getByOaId(oaId);
        }
        if (posterList != null) {
            for (OaPoster poster : posterList) {
                map = new HashMap<String, Object>();
                map.put("id", poster.getId());
                map.put("img", poster.getImg());
                map.put("title", poster.getTitle());
                map.put("isUsedNum", poster.getIsUsedNum());
                map.put("title", poster.getTitle());
                map.put("isCustomerNum", poster.getIsCustomerNum());
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

    @ApiOperation("平台视频-类型")
    @RequestMapping(value = "/oaVideoTypes", method = RequestMethod.GET)
    public Result allVideoType(@ApiParam @RequestParam String token) {
        Result result = new Result();
        // 商家信息
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

        // 小视频的类型列表
        List<OaVideoType> videTypeList = oaVtService.getByOaId(oaId);
        List<Map<String, Object>> mapList = new ArrayList<>();
        Map<String, Object> map = null;

        if (videTypeList != null) {
            for (OaVideoType video : videTypeList) {
                map = new HashMap<String, Object>();
                map.put("typeId", video.getId().toString());
                map.put("typeName", video.getName());
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

    @ApiOperation("平台视频")
    @RequestMapping(value = "/oaVideos", method = RequestMethod.GET)
    public Result allVideos(
            @ApiParam("token") @RequestParam String token,
            @ApiParam("token") @RequestParam Integer typeId,
            @ApiParam("排序规则，1时间升，0时间降") @RequestParam String createTime,
            @ApiParam("排序规则，1获客升，0获客降") @RequestParam String isCustomerNum
    ) {
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

        List<OaVideo> videos = null;
        if (createTime != null && isCustomerNum != null &&typeId!=null) {
            videos = oaVideoService.getByExample(oaId, typeId, createTime, isCustomerNum);
        } else {
            videos = oaVideoService.getByOaId(oaId);
        }

        if (videos != null) {
            for (OaVideo video : videos) {
                map = new HashMap<>();
                map.put("id", video.getId().toString());
                map.put("img", video.getImg());
                map.put("title", video.getTitle());
                map.put("lookNum", video.getLookNum().toString());
                map.put("upNum", video.getUpNum().toString());
                map.put("BeCustomerNum", video.getBeCustmerNum().toString());
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
     * @param orderTime
     * @param orderNum
     * @return
     */
    @RequestMapping(value = "/videos", method = RequestMethod.GET)
    public Result allVideo(
            @ApiParam @RequestParam String token,
            @ApiParam("创建时间，0降序，1升序") @RequestParam(required = false) Integer orderTime,
            @ApiParam("创建时间，0降序，1升序") @RequestParam(required = false) Integer orderNum,
            @ApiParam("类型id") @RequestParam(required = false) Integer typeId
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
        Integer shopId = sellerInfo.getShopId();
        // 小视频的类型列表
        // 小视频按类型分
        List<Map<String, Object>> mapList = new ArrayList<>();
        Map<String, Object> map = null;

        List<ShopVideo> videoList = null;
        if (orderTime != null || orderNum != null || typeId != null) {
            videoList = videoService.getByShopIdAndTypeIdAndTimeAndNum(shopId, typeId, orderTime, orderNum);
        } else {
            videoList = videoService.getByShopId(shopId);
        }

        if (videoList != null) {
            for (ShopVideo video : videoList) {
                map = new HashMap<String, Object>();
                map.put("id", video.getId());
                map.put("title", video.getTitle());
                map.put("img", video.getImg());
                map.put("lookNum", video.getLookNum());
                map.put("isCustomerNum", video.getBeCustmerNum());
                map.put("upNum", video.getUpNum());
                map.put("isShow", video.getIsShow());
                if (typeId == null) {
                    typeId = video.getTypeId();
                }
                ShopVideoType videoType = vtService.getById(typeId);
                if (videoType != null) {
                    map.put("type", videoType.getName());
                } else {
                    map.put("type", "");
                }
                mapList.add(map);
            }
        }

        result.setList(mapList);
        if (mapList.size()>0) {
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param request 获取商品
     * @param id      小视频的编号
     * @return
     */
//    @ApiOperation("删除小视频")
    @RequestMapping(value = "/video/delete/{id}", method = RequestMethod.GET)
    public Result deleteVideo(
            HttpServletRequest request,
            @ApiParam @RequestParam String token,
            @ApiParam @PathVariable Integer id
    ) {
        Result result = new Result();
        // 商家信息
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            result.setMessage("-1");
            return result;
        }
        int flag = videoService.deleteById(id);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }

    /**
     * @param request 前端输入的关于小视频的信息
     * @param file    封面图
     * @return 添加是否成功
     */
    //@ApiOperation("小视频添加")
    @RequestMapping(value = "/video/add", method = RequestMethod.POST)
    public Result addVideoForm(
            HttpServletRequest request,
            @ApiParam @RequestParam String token,
            @ApiParam @RequestParam(required = false) String title,
            @ApiParam @RequestParam(required = false) Integer typeId,
            @ApiParam @RequestParam(required = false) MultipartFile file) {
        Result result = new Result();

        ShopVideo video = new ShopVideo();
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
        // 商家编号
        Integer shopId = sellerInfo.getShopId();

        video.setShopId(shopId);

        video.setCreateTime(new Date());

        if (title != null && !"".equals(title)) {
            video.setTitle(title);
        }
        if (typeId != null && !"".equals(typeId)) {
            video.setTypeId(typeId);
        }
        String filename = file.getOriginalFilename();
        if (filename != null && !"".equals(filename)) {
            String address = FileUtil.uploadVideo(file, "video");
            if (address != null && !"".equals(address)) {
                video.setImg(address);
            } else {
                result.setMessage("视频上传失败");
                return result;
            }
        }
        int flag = videoService.insert(video);

        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;
    }

    /**
     * @param id 小视频编号
     * @return 用于修改的小视频的信息
     */

    @RequestMapping(value = "/video/modify/{id}", method = RequestMethod.GET)
    public Result modifyVideoPage(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
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
            return result;
        }
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();

        ShopVideo video = videoService.getById(id);

        result.setObject(video);
        Map<String, Object> map = null;
        List<ShopVideoType> videoTypes = vtService.getByShopId(shopId);
        if (videoTypes != null) {
            for (ShopVideoType vtype : videoTypes) {
                map = new HashMap<String, Object>();
                Integer typeId = vtype.getId();
                map.put("id", typeId);
                map.put("name", vtype.getName());
                if (typeId.equals(video.getTypeId())) {
                    map.put("typeFlag", "1");
                } else {
                    map.put("typeFlag", "0");
                }
                maps.add(map);
            }
        }
        result.setList(maps);
        if (maps.size()>0) {
            result.setSuccess();
        }else{
            result.setFail();
        }
        return result;
    }

    /**
     * @param id   编号
     * @param file 小视频
     * @return 是否添加成功
     */

    //@ApiOperation("修改小视频信息")
    @RequestMapping(value = "/video/modify/{id}", method = RequestMethod.POST)
    public Result modifyVideoForm(
            @ApiParam @RequestParam String token,
            @ApiParam @PathVariable(required = true) Integer id,
            @ApiParam("是否公开，1是，0否") @RequestParam(required = false) Integer isShow,
            @ApiParam @RequestParam(required = false) Integer type,
            @ApiParam @RequestParam(required = false) String title,
            @ApiParam @RequestParam(required = false) MultipartFile file) {
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
        // 商家编号
        ShopVideo video = videoService.getById(id);
        if (isShow != null && !"".equals(isShow)) {
            video.setIsShow(isShow);
        }
        if (title != null && !"".equals(title)) {
            video.setTitle(title);
        }
        if (type != null && !"".equals(type)) {
            video.setTypeId(Integer.valueOf(type));
        }
        String filename = file.getOriginalFilename();
        if (filename != null && !"".equals(filename)) {
            String address = FileUtil.uploadVideo(file, "video");
            if (address != null && !"".equals(address)) {
                video.setImg(address);
            }
        }

        int flag = videoService.modify(video);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }

    //@ApiOperation("是否公开小视频")
    @RequestMapping(value = "/video/isShow/{id}", method = RequestMethod.POST)
    public Result modifyVideoFIsShow(
            @ApiParam @RequestParam String token,
            @ApiParam @PathVariable(required = true) Integer id,
            @ApiParam("是否公开，1是，0否") @RequestParam(required = false) Integer isShow) {
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
        // 商家编号
        ShopVideo video = videoService.getById(id);
        if (isShow != null && !"".equals(isShow)) {
            video.setIsShow(isShow);
        }
        int flag = videoService.modify(video);

        result.setFlag(flag);
        if (isShow == 1) {
            if (flag > 0) {
                result.setMessage("公开成功");
            } else {
                result.setFail("公开失败");
            }
        } else {
            if (flag > 0) {
                result.setMessage("取消成功");
            } else {
                result.setFail("取消失败");
            }

        }

        return result;
    }

}
