package com.tc.wx.controller;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author DELL
 * @date 2020/9/24 15:38
 */
@Api(tags = "其他")
@RestController
@RequestMapping("/shop")
public class ShopController {
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopBannerService bannerService;
    @Autowired
    private ShopBannerCatService bcService;
    @Autowired
    private ShopSellerImgService sImgService;

    @ApiOperation("首页banner图查询")
    @RequestMapping(value = "/banners",method = RequestMethod.GET)
    public Result allBanners(@ApiParam @RequestParam String token) {
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
        List<Map<String,Object>> maps=new ArrayList<>();
        Map<String,Object> map=null;

        List<ShopBanner> banners= bannerService.getBySidAndCatId(shopId,2);
        if(banners!=null){
            for (ShopBanner banner : banners) {
                map=new HashMap<>();
                map.put("id",banner.getId());
                Integer catId = banner.getCatId();
//                ShopBannerCat bannerCat= bcService.getById(catId);
//                if(bannerCat!=null){
//                    map.put("typeName",bannerCat.getName());
//                }else{
//                    map.put("typeName","");
//                }
                map.put("img",banner.getImgs());
                map.put("title",banner.getTitle());
                map.put("url",banner.getUrl());
                maps.add(map);
            }
        }
        result.setList(maps);
        if(maps.size()>0){
            result.setSuccess("查询");
        }else{
            result.setMessage("banner图为空");
        }
        return result;
    }

    @ApiOperation("banner图删除")
    @RequestMapping(value = "/banner/delete/{id}",method = RequestMethod.GET)
    public Result deleteBanner(
            @ApiParam @RequestParam String token,
            @ApiParam @PathVariable Integer id ){
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        Integer flag=bannerService.deleteById(id);
        result.setFlag(flag);
        if(flag>0){
            result.setSuccess("删除");
        }else{
            result.setFail("删除");
        }
        return result;
    }

    @ApiOperation("banner图添加")
    @RequestMapping(value = "/banner/add",method = RequestMethod.POST)
    public Result addBanner(
            @ApiParam @RequestParam String token,
            @ApiParam @RequestParam(required = false) String title,
            @ApiParam("图片地址：http:/1.png") @RequestParam(required = false) String imgs,
            @ApiParam @RequestParam(required = false) Integer typeId,
            @ApiParam @RequestParam(required = false) String url
            ){
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
        ShopBanner banner=new ShopBanner();
        banner.setSid(shopId);
        if(title!=null){
            banner.setTitle(title);
        }
        if(imgs!=null){
            banner.setImgs(imgs);
        }
        if(typeId!=null){
            banner.setCatId(typeId);
        }
        if(url!=null){
            banner.setUrl(url);
        }
        Integer flag= bannerService.insert(banner);
        if(flag>0){
            result.setMessage("banner图添加成功");
        }else{
            result.setFail("添加");
        }
        return  result;
    }

    @ApiOperation("品牌介绍图")
    @RequestMapping(value = "/sellerImgs",method = RequestMethod.GET)
    public Result allSellerImgs(@ApiParam @RequestParam String token) {
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
        List<Map<String,Object>> maps=new ArrayList<>();
        Map<String,Object> map=null;

        List<ShopSellerImg> sellerImgs= sImgService.getByShopId(shopId);
        if(sellerImgs!=null){
            for (ShopSellerImg sellerImg : sellerImgs) {
                map=new HashMap<>();
                map.put("id",sellerImg.getId());
                map.put("img",sellerImg.getImgs());
                map.put("title",sellerImg.getTitle());
                map.put("url",sellerImg.getUrl());
                maps.add(map);
            }
        }
        result.setList(maps);
        if(maps.size()>0){
            result.setSuccess("查询");
        }else{
            result.setMessage("品牌介绍为空");
        }
        return result;
    }

    @ApiOperation("品牌介绍图添加")
    @RequestMapping(value = "/sellerImg/add",method = RequestMethod.POST)
    public Result addSellerImg(
            @ApiParam @RequestParam String token,
            @ApiParam @RequestParam(required = false) String title,
            @ApiParam("图片: http:/1.png") @RequestParam(required = false) String imgs,
            @ApiParam @RequestParam(required = false) String url
    ){
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
        ShopSellerImg sellerImg=new ShopSellerImg();
        sellerImg.setShopId(shopId);
        if(title!=null){
            sellerImg.setTitle(title);
        }
        if(imgs!=null){
            sellerImg.setImgs(imgs);
        }
        if(url!=null){
            sellerImg.setUrl(url);
        }
        Integer flag=sImgService.insert(sellerImg);
        if(flag>0){
            result.setMessage("品牌介绍图添加成功");
        }else{
            result.setFail("添加");
        }
        return  result;
    }

    @ApiOperation("品牌介绍图删除")
    @RequestMapping(value = "/sellerImg/delete/{id}",method = RequestMethod.GET)
    public Result deleteSellerImg(
            @ApiParam @RequestParam String token,
            @ApiParam @PathVariable Integer id ){
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        Integer flag=sImgService.deleteById(id);
        result.setFlag(flag);
        if(flag>0){
            result.setSuccess("删除");
        }else{
            result.setFail("删除");
        }
        return result;
    }

}
