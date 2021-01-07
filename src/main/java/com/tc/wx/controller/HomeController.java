package com.tc.wx.controller;

import java.sql.Ref;
import java.util.*;

import com.tc.wx.model.ShopSellerInfo;
import com.tc.wx.service.ShopSellerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.tc.wx.model.Result;
import com.tc.wx.model.ResultLogin;
import com.tc.wx.model.ShopSeller;
import com.tc.wx.service.ShopSellerService;
import com.tc.wx.util.SmsUtil;
import com.tc.wx.util.StringUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@RestController
@RequestMapping("/")
@Api(tags = "用户登录")
public class HomeController {

    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopSellerInfoService siService;


    @ApiOperation(value = "发送验证码")
    @RequestMapping(value = "/sendVerifyCode", method = RequestMethod.GET)
    public Result sendVerifyCode(
            @ApiParam(value = "接收验证码的手机号") @RequestParam String phone,
            @ApiParam(value = "sid") @RequestParam(required = false) String sid
            ) {
        Result result = new Result();
        String code = "";
        if (phone != null && !"".equals(phone)) {
            ShopSeller seller = sellerService.getByPhoneAndSid(phone,sid);
            if (seller == null) {
                result.setMessage("该手机号不在系统中，无法获取验证码");
                result.setCode("-2");
                return result;
            } else {
                code = SmsUtil.sendMessage(phone, "1");
            }
        }
        if(sid==null||"".equals(sid.trim())){
            return result;
        }
        if (code != null && !"".equals(code)) {
            ShopSeller seller = sellerService.getByPhoneAndSid(phone,sid);
            seller.setVeriryCode(StringUtil.EncoderByMd5(code));
            Date date = new Date(System.currentTimeMillis() + 5 * 60 * 1000);
            seller.setCodeValidTime(date);
            sellerService.updateById(seller);
            result.setSuccess();
        } else {
            result.setFail();
        }
        return result;
    }

    /**
     * @param phone 登录手机号
     * @param code  验证码
     * @return 登录是否成功的信息
     * @throws Exception
     */
    @ApiOperation(value = "手机验证码登录")
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ResultLogin login(
            @ApiParam(value = "登录手机号") @RequestParam(required = true) String phone,
            @ApiParam(value = "验证码") @RequestParam(required = true) String code,
            @ApiParam(value = "店铺") @RequestParam(required = true) String sid
            ) throws Exception {
        ResultLogin result = new ResultLogin();
        ShopSeller seller = null;
        if (phone == null || "".equals(phone)) {
            result.setMessage("请输入手机号");
            result.setCode("-2");
            return result;
        }else if(sid == null || "".equals(sid)){
            result.setMessage("请输入选择店铺");
            result.setCode("-2");
            return result;
        }

        else {
            seller = sellerService.getByPhoneAndSid(phone,sid);
        }
        Date date = new Date();
        if (seller != null) {
            if (seller.getCodeValidTime().getTime() < date.getTime()) {
                result.setMessage("验证码失效");
                return result;
            }
            if (!seller.getVeriryCode().equals(StringUtil.EncoderByMd5(code))) {
                result.setMessage("验证码错误");
                return result;
            }
            String token = StringUtil.EncoderByMd5(StringUtil.seqGenerate().toString());
            seller.setToken(token);
            sellerService.updateById(seller);
            result.setSid(seller.getSid());
            result.setToken(token);
            result.setMessage("登录成功");
            result.setCode("200");
        } else {
            result.setMessage("用户不存在");
        }
        return result;
    }

    @ApiOperation("用户所有店铺")
    @RequestMapping(value = "/sellerInfos", method = RequestMethod.GET)
    public Result allSelleInfo(
            @ApiParam @RequestParam(required = false) String phone
    ) {
        Result result = new Result();
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        List<ShopSeller> sellers = null;
        if(phone==null){
            result.setMessage("请输入手机号");
            result.setCode("-2");
            return result;
        }

        if (phone != null) {
            sellers = sellerService.getByPhone(phone);
        }
        if (sellers != null) {
            for (ShopSeller seller : sellers) {
                map = new HashMap<>();
                String sid = seller.getSid();
                map.put("sid", sid);
                ShopSellerInfo sellerinfo = siService.getBySId(sid);
                if (sellerinfo != null) {
                    map.put("companyName", sellerinfo.getCompany());
                } else {
                    map.put("companyName", "");
                }
                maps.add(map);
            }
        }

        result.setList(maps);
        if (maps.size() > 0) {
            result.setSuccess("查询");
        } else {
            result.setFail("查询");
        }
        return result;
    }

}
