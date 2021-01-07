package com.tc.wx.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.tc.wx.util.FileUtil;
import com.tc.wx.util.SmsUtil;
import com.tc.wx.util.StringUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

/**
 * @author DELL
 * @category 商家接口层，主要是名片的修改
 */

@Controller
@RequestMapping("seller")
@ResponseBody
@Api(tags = "我的")
public class SellerController {
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private OaUserService oaUserService;

    /**
     * @return 个人信息页面
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public Result aboutMe(@ApiParam(name = "token") @RequestParam String token) {

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
        resultMap.put("txImg", seller.getTximg());
        resultMap.put("name", seller.getName());
        resultMap.put("position", seller.getPosition());
        String phone = "";
        for (int i = 0; i < seller.getPhone().length(); i++) {
            if (i > 2 && i < 7) {
                phone += "*";
            } else {
                phone += seller.getPhone().charAt(i);
            }
        }
        resultMap.put("phone", phone);
        result.setMap(resultMap);
        return result;
    }

    @ApiOperation("资料管理-详情")
    @RequestMapping(value = "/detailSeller", method = RequestMethod.GET)
    public Result detailSeller(@ApiParam(name = "token") @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> map = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setFailToken();
            return result;
        }
        map.put("img", seller.getTximg());
        Integer oaUserId = seller.getOaUserId();
        OaUser oaUser = oaUserService.getById(oaUserId);
        if (oaUser != null) {
            map.put("brandName", oaUser.getCompany());
        } else {
            map.put("brandName", "");
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());

        if (sellerInfo != null) {
            map.put("longitude", sellerInfo.getLongitude());
            map.put("latitude", sellerInfo.getLatitude());
            map.put("txImg", sellerInfo.getTxImg());
            map.put("company", sellerInfo.getCompany());
            map.put("intro", sellerInfo.getBriefIntro());
            map.put("companyType", sellerInfo.getCompanyType());
            map.put("address", sellerInfo.getAddress());
            map.put("sellScope", sellerInfo.getSellScope());
            map.put("companyImg", sellerInfo.getCompanyImg());
            map.put("couponImg", sellerInfo.getCouponImg());
            map.put("charterAddress", sellerInfo.getCharterAddress());
            map.put("isShowMessage", sellerInfo.getIsShowmessage());
        } else {
            map.put("longitude", "");
            map.put("latitude", "");
            map.put("txImg", "");
            map.put("company", "");
            map.put("intro", "");
            map.put("companyType", "");
            map.put("address", "");
            map.put("sellScope", "");
            map.put("companyImg", "");
            map.put("couponImg", "");
            map.put("charterAddress", "");
            map.put("isShowMessage", "");
        }
        result.setMap(map);
        if (!map.isEmpty()) {
            result.setSuccess("查询");
        } else {
            result.setFail("查询");
        }
        return result;
    }


    @ApiOperation("资料管理-详情-修改")
    @RequestMapping(value = "/detailSeller", method = RequestMethod.POST)
    public Result modifySeller(
            HttpServletRequest request,
            @ApiParam(value = "token") @RequestParam String token,
            @ApiParam(value = "公司名称") @RequestParam(required = false) String company,
            @ApiParam(value = "公司简介") @RequestParam(required = false) String briefIntro,
            @ApiParam(value = "品牌名") @RequestParam(required = false) String brandName,
            @ApiParam(value = "行业类型") @RequestParam(required = false) String companyType,
            @ApiParam(value = "地址") @RequestParam(required = false) String address,
            @ApiParam(value = "经度") @RequestParam(required = false) String longtitude,
            @ApiParam(value = "维度") @RequestParam(required = false) String latitude,
            @ApiParam(value = "经营范围") @RequestParam(required = false) String sellScope,
            @ApiParam(value = "头像") @RequestParam(required = false) MultipartFile img,
            @ApiParam(value = "门店信息") @RequestParam(required = false) String companyImg,
            @ApiParam(value = "营业执照") @RequestParam(required = false) String charterAddress,
            @ApiParam(value = "优惠券图片") @RequestParam(required = false) String couponImg,
            @ApiParam(value = "1显示0不显示") @RequestParam(required = false) Integer isShowMessage

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
        sellerInfo.setLongitude(longtitude);
        sellerInfo.setLatitude(latitude);
        sellerInfo.setCompany(company);
        sellerInfo.setCompanyType(companyType);
        sellerInfo.setBriefIntro(briefIntro);
        sellerInfo.setBrandName(brandName);
        sellerInfo.setAddress(address);
        sellerInfo.setSellScope(sellScope);
        sellerInfo.setIsShowmessage(isShowMessage);
        if (img != null) {
            String filename = img.getOriginalFilename();
            if (filename != null && !"".equals(filename)) {
                try {
                    //CommonsMultipartFile file = (CommonsMultipartFile) img;
                    String txImg = FileUtil.uploadImage(img, "other");
                    if (txImg != null && !"".equals(txImg)) {
                        sellerInfo.setTxImg(txImg);
                    }
                } catch (Exception e) {
                    result.setMessage("头像上传失败");
                    return result;
                }
            }
        }

        if (companyImg != null&& !"".equals(companyImg)) {
            sellerInfo.setCompanyImg(companyImg);
        }
        if(charterAddress!=null&&!"".equals(charterAddress)){
            sellerInfo.setCharterAddress(charterAddress);
        }

        if (couponImg != null && !"".equals(couponImg)) {
            sellerInfo.setCouponImg(couponImg);
        }
        Integer flag = siService.updateById(sellerInfo);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }


    @ApiOperation("修改简介")
    @RequestMapping(value = "/modifyIntro", method = RequestMethod.POST)
    private Result modifyMyIntro(@ApiParam @RequestParam String token, @ApiParam @RequestParam String intro) {
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
        seller.setIntro(intro);
        int flag = sellerService.updateById(seller);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;

    }

    /**
     * @param token
     * @param oldPhone
     * @param newPhone
     * @param code
     * @return 修改手机号
     */
    @ApiOperation(value = "绑定手机号")
    @RequestMapping(value = "/modifyPhone", method = RequestMethod.POST)
    public Result modifyPhone(
            @ApiParam(name = "token", value = "token") @RequestParam String token,
            @ApiParam(name = "oldPhone", value = "原手机号") @RequestParam(required = false) String oldPhone,
            @ApiParam(name = "newPhone", value = "新手机号") @RequestParam(required = false) String newPhone,
            @ApiParam(name = "code", value = "验证码") @RequestParam(required = false) String code
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
        if (oldPhone == null || "".equals(oldPhone)) {
            result.setMessage("原手机号不能为空");
            return result;
        }
        if (!oldPhone.equals(seller.getPhone())) {
            result.setMessage("原手机号不正确");
            return result;
        }
        if (newPhone == null || "".equals(newPhone)) {
            result.setMessage("新手机号不能为空");
            return result;
        }
        if (code == null || "".equals(code)) {
            result.setMessage("验证码不能为空");
            return result;
        }
        Date date = new Date();
        if (seller.getCodeValidTime().getTime() < date.getTime()) {
            result.setMessage("验证码失效");
            return result;
        }
        if (!seller.getVeriryCode().equals(StringUtil.EncoderByMd5(code))) {
            result.setMessage("验证码错误");
            return result;
        }
        seller.setPhone(newPhone);

        Integer flag = sellerService.updateById(seller);
        if (flag > 0) {
            result.setSuccess();
            result.setMessage("手机号修改成功");
        } else {
            result.setFail();
            result.setMessage("手机号修改失败");
        }
        return result;
    }


    /**
     * @return 客服微信二维码
     */
    //@RequestMapping(value = "/hisWxQrCode", method = RequestMethod.GET)
    public Result showServerQrcode(@ApiParam @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        result.setMap(resultMap);
        return result;
    }

    /**
     * @return 我的微信二维码
     */
    //@RequestMapping(value = "/myQrCode", method = RequestMethod.GET)
    public Result showMyQrcode(@ApiParam @RequestParam String token) {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());


        result.setMap(resultMap);
        return result;
    }

    /**
     * @return 我的名片信息
     */
    @ApiOperation(value = "我的名片")
    @RequestMapping(value = "/mycard", method = RequestMethod.GET)
    public Result myCard(@ApiParam @RequestParam String token) {
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
        if (sellerInfo != null) {
            resultMap.put("shopId", sellerInfo.getShopId());
            resultMap.put("txImg", seller.getTximg());
            resultMap.put("name", seller.getName());
            resultMap.put("position", seller.getPosition());
            resultMap.put("company", sellerInfo.getCompany());
            resultMap.put("address", sellerInfo.getAddress());
            resultMap.put("phone", seller.getPhone());
            resultMap.put("privince", sellerInfo.getsProvince());
            resultMap.put("city", sellerInfo.getsCity());
            resultMap.put("country", sellerInfo.getsCounty());
            resultMap.put("name", seller.getName());
            resultMap.put("wxNum", seller.getWxnum());
            resultMap.put("cardBgImg", seller.getCardBgimg());
            resultMap.put("intro", seller.getIntro());
            resultMap.put("email", seller.getEmail());
        }


        result.setMap(resultMap);
        if (!resultMap.isEmpty()) {
            result.setMessage("查询成功");
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param request 接收到前端传递的数据，个人名片部分的信息
     * @return
     */
    @ApiOperation(value = "保存名片信息")
    @RequestMapping(value = "/modifyCard", method = RequestMethod.POST)
    public Result modifyCardForm(
            @ApiParam @RequestParam String token,
            HttpServletRequest request, @ApiParam(value = "头像") @RequestParam("img") MultipartFile img) {
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
        String company = request.getParameter("company");
        String position = request.getParameter("position");
        // 头像图片的上传
        String filename = img.getOriginalFilename();
        String imgAddress = null;
        if (filename != null && !"".equals(filename)) {
            imgAddress = FileUtil.uploadImage(img, "other");
        }

        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String wxNum = request.getParameter("wxNum");
        String email = request.getParameter("email");
        String intro = request.getParameter("intro");
        if (imgAddress != null) {
            seller.setTximg(imgAddress);
        }
        if (company != null && !"".equals(company)) {
            sellerInfo.setCompany(company);
        }
        if (position != null && !"".equals(position)) {
            seller.setPosition(position);
        }
        if (name != null && !"".equals(name)) {
            seller.setName(name);
        }
        if (phone != null && !"".equals(phone)) {
            seller.setPhone(phone);
        }
        if (wxNum != null && !"".equals(wxNum)) {
            seller.setWxnum(wxNum);
        }
        if (email != null && !"".equals(email)) {
            seller.setEmail(email);
        }
        if (intro != null && !"".equals(intro)) {
            seller.setIntro(intro);
        }
        int count = sellerService.updateById(seller);
        int count1 = siService.updateById(sellerInfo);

        if (count < 0 || count1 < 0) {
            result.setFail();
        } else {
            result.setMessage("修改成功");
        }

        return result;
    }



}
