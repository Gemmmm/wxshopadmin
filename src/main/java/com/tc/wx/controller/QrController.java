package com.tc.wx.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.tc.wx.model.ShopSellerInfo;
import com.tc.wx.service.ShopSellerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.tc.wx.model.Result;
import com.tc.wx.model.ShopSeller;
import com.tc.wx.service.ShopSellerService;
import com.tc.wx.util.QrCodeUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@RestController
@RequestMapping("qrcode")
@Api(tags = "二维码获取接口")
public class QrController {
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopSellerInfoService siService;

    @ApiOperation(value = "查询二维码", produces = "application/json")
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public Result getCode(HttpServletRequest request,
                          @ApiParam("token") @RequestParam(required = false) String token,
                          @ApiParam("page") @RequestParam(required = false) String page,
                          @ApiParam("scene") @RequestParam(required = false) String scene,
                          @ApiParam("二维码类型，默认0：用于分享，1个人二维码") @RequestParam(required = false) String type

    ) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
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
        // 商家id
        String sellerId = seller.getId().toString();
        // 系统部署的名字
//		String path_name =null;
//		path_name = request.getSession().getServletContext().getRealPath("/");
//		path_name="D://zz";
//		System.out.println("path_name::::"+path_name);

        if (type != null && !"1".equals(type)) {
            ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
            String myQrCode = sellerInfo.getMyQrCode();
            if (myQrCode != null && !"".equals(myQrCode)) {
                map.put("path", myQrCode);
                result.setMap(map);
                result.setSuccess("查询");
            } else {
                map.put("sellerId", sellerId);
                //map.put("pathName", path_name);
                if (page != null && !"".equals(page)) {
                    map.put("page", page);
                }
                if (scene != null && !"".equals(scene)) {
                    map.put("scene", scene);
                }
                String sellerQrCode = QrCodeUtil.getSellerQrCode(map);
                sellerInfo.setMyQrCode(sellerQrCode);
                siService.updateById(sellerInfo);
                map = new HashMap<String, Object>();
                map.put("path", sellerQrCode);
                result.setMap(map);
                if (sellerQrCode != null) {
                    result.setSuccess("查询");
                } else {
                    result.setFail("查询");
                }

            }
            return result;

        }

        map.put("sellerId", sellerId);
        //map.put("pathName", path_name);
        if (page != null && !"".equals(page)) {
            map.put("page", page);
        }
        if (scene != null && !"".equals(scene)) {
            map.put("scene", scene);
        }
        String sellerQrCode = QrCodeUtil.getSellerQrCode(map);


        map = new HashMap<String, Object>();
        map.put("path", sellerQrCode);
        result.setMap(map);
        if (sellerQrCode != null) {
            result.setSuccess("查询");
        } else {
            result.setFail("查询");
        }
        return result;
    }
}
