package com.tc.wx.controller;

import com.tc.wx.model.*;
import com.tc.wx.service.*;
import com.tc.wx.util.DateUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author DELL
 */
@Controller
@RequestMapping(value = "spread")
@ResponseBody
@Api(tags = "推广")
public class SpreadController {

    @Autowired
    private HttpSession session;
    @Autowired
    private ShopSellerInfoService siService;
    @Autowired
    private ShopTaskService taskService;
    @Autowired
    private ShopSellerService sellerService;
    @Autowired
    private ShopDiscountService discountService;
    @Autowired
    private ShopDiscountUsageService duService;
    @Autowired
    private OaNoticeService oaNoticeService;

    @GetMapping("/discounts")
    @ApiOperation("优惠券-查询")
    public Result allDiscounts(
            @ApiParam @RequestParam String token,
            @ApiParam("类型，1待发布，2生效中，3已过期，4已作废") @RequestParam String type
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
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();
        List<ShopDiscount> discounts = discountService.getByShopIdAndType(shopId, type);
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

        if (discounts != null) {
            for (ShopDiscount discount : discounts) {
                map = new HashMap<>();
                map.put("id", discount.getId().toString());
                map.put("title", discount.getTitle());
                map.put("discountLevel", discount.getDiscountLevel());
                map.put("useLevel", discount.getUseLevel());
                map.put("fullReduction", discount.getFullReduction());

                Date startTime = discount.getStartTime();
                if (startTime != null) {
                    map.put("startTime", sdf.format(startTime));
                } else {
                    map.put("startTime", "");
                }
                Date endTime = discount.getEndTime();
                if (endTime != null) {
                    map.put("endTime", sdf.format(endTime));
                } else {
                    map.put("endTime", "");
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

    @ApiOperation("优惠券-修改类型")
    @PostMapping("/discount/modify/{id}")
    public Result modifyDiscount(
            @ApiParam @RequestParam String token,
            @ApiParam("优惠券编号") @PathVariable Integer id,
            @ApiParam("类型，1待发布，2生效中，3已过期，4已作废") @RequestParam Integer type) {
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
        ShopDiscount discount = discountService.getById(id);
        discount.setType(type);
        int flag = discountService.modify(discount);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess("修改");
        } else {
            result.setFail("修改");
        }
        return result;
    }


    @ApiOperation("优惠券-扫码核销")
    @PostMapping("/discountUsage/isUsed/{id}")
    public Result isDelDiscount(
            @ApiParam @RequestParam String token,
            @ApiParam("优惠券唯一编号") @PathVariable String id) {
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
        if (id.length() <= 8) {
            result.setMessage("请输入正确的核销码");
            return result;
        }

        StringBuilder sb = new StringBuilder();
        char[] chars = id.toCharArray();
        for (int i = 8; i < chars.length; i++) {
            sb.append(chars[i]);
        }
        String strUserId = sb.toString();
        Integer userId = Integer.valueOf(strUserId);

        System.out.println("userId:" + userId);
        ShopDiscountUsage discountUsage = duService.getByUserIdAndOnlyId(userId, id);
        if (discountUsage == null) {
            result.setMessage("该优惠券不存在");
            result.setCode("-2");
            return result;
        }
        if (discountUsage.getIsUsed() == 1) {
            result.setMessage("该优惠券已经被使用");
            result.setCode("-2");
            return result;
        }
        discountUsage.setIsUsed(1);
        int flag = duService.modify(discountUsage);
        if (flag > 0) {
            result.setSuccess("核销");
        } else {
            result.setFail("核销");
        }
        return result;
    }


    @ApiOperation("优惠券-删除")
    @PostMapping("/discount/delete/{id}")
    public Result delete(
            @ApiParam @RequestParam String token,
            @ApiParam("优惠券编号") @PathVariable Integer id) {
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
        int flag = discountService.deleteById(id);
        if (flag > 0) {
            result.setSuccess("删除");
        } else {
            result.setFail("删除");
        }
        return result;
    }


    @ApiOperation("优惠券-添加")
    @PostMapping("/discount/add")
    public Result addDiscount(
            @ApiParam("token") @RequestParam String token,
            @ApiParam("名称") @RequestParam(required = false) String title,
            @ApiParam("券类型，1代金券，折扣券") @RequestParam(required = false) Integer discountType,
            @ApiParam("折扣") @RequestParam(required = false) Double discountLevel,
            @ApiParam("券金额") @RequestParam(required = false) Double useLevel,
            @ApiParam("满减金额") @RequestParam(required = false) Integer fullReduction,
            @ApiParam("发放数量") @RequestParam(required = false) Integer number,
            @ApiParam("限领数量") @RequestParam(required = false) Integer limitedNumber,
            @ApiParam("有效期类型，1指定日期，2有效天数") @RequestParam(required = false) Integer validType,
            @ApiParam("开始时间") @RequestParam(required = false) String startTime,
            @ApiParam("结束时间") @RequestParam(required = false) String endTime,
            @ApiParam("有效天数") @RequestParam(required = false) Integer validDayNum,
            @ApiParam("规则说明") @RequestParam(required = false) String ruleIntro,
            @ApiParam("分享后是否多领1张") @RequestParam(required = false) Integer isMore
    ) {
        Result result = new Result();
        ShopSeller seller = null;
        if (token != null) {
            seller = sellerService.getByToken(token);
        }
        if (seller == null) {
            result.setMessage("登录失效，请重新登陆");
            return result;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        Integer shopId = sellerInfo.getShopId();

        ShopDiscount discount = new ShopDiscount();
        discount.setType(2);
        discount.setShopId(shopId);
        discount.setCreateTime(new Date());
        if (title != null && !"".equals(title)) {
            discount.setTitle(title);
        }
        if (discountType != null && !"".equals(discountType)) {
            discount.setDiscountType(discountType);
        }
        if (discountLevel != null && !"".equals(discountLevel)) {
            discount.setDiscountLevel(discountLevel);
        }
        if (useLevel != null && !"".equals(useLevel) && !"0".equals(useLevel)) {
            discount.setUseLevel(useLevel);
        }
        if (number != null && !"".equals(number)) {
            discount.setNumber(number);
        }
        if (limitedNumber != null && !"".equals(limitedNumber)) {
            discount.setLimitedNum(limitedNumber);
        }
        if (validType != null && !"".equals(validType)) {
            discount.setValidType(validType);
        }
        if (startTime != null && !"".equals(startTime)) {
            Date date = DateUtil.parse(startTime);
            discount.setStartTime(date);
        }
        if (endTime != null && !"".equals(endTime)) {
            Date date = DateUtil.parse(endTime);
            discount.setEndTime(date);
        }
        if (isMore != null && !"".equals(isMore)) {
            discount.setIsMore(isMore);
        }
        if (validDayNum != null && !"".equals(validDayNum) && "0".equals(validDayNum)) {
            discount.setValidDayNum(validDayNum);
            Date startDate = new Date();
            discount.setStartTime(startDate);

            Date endDate = DateUtil.daysLater(validDayNum);
            discount.setEndTime(endDate);
        }
        if (ruleIntro != null && !"".equals(ruleIntro)) {
            discount.setRuleIntro(ruleIntro);
        }
        if (fullReduction != null && !"".equals(fullReduction)) {
            discount.setFullReduction(fullReduction);
        }
        int flag = discountService.insert(discount);
        result.setFlag(flag);
        if (flag > 0) {
            result.setSuccess();
        } else {
            result.setFail("添加");
        }
        return result;
    }


//	/**
//	 * @param id 海报编号
//	 * @return 是否删除
//	 */
//	@ApiOperation(value="删除海报")
//	@RequestMapping(value = "/poster/delete/{id}", method = RequestMethod.GET)
//	public Result deletePoster(
//			@ApiParam(name="token",value="token") @PathVariable String token,
//			@ApiParam(name="id",value="海报id") @PathVariable Integer id) {
//		Result result = new Result();
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		int flag = oaPosterService.deleteById(id);
//		result.setFlag(flag);
//		if (flag > 0) {
//			result.setSuccess("海报");
//		} else {
//			result.setFail("海报");
//		}
//		return result;
//	}

//	/**
//	 * @return 添加的类别信息
//	 */
//	@ApiOperation(value="海报添加")
//	@RequestMapping(value = "/poster/add", method = RequestMethod.GET)
//	public Result addPosterPage(HttpServletRequest request) {
//		Result result = new Result();
//		// 商家信息
//		String token = request.getParameter("token");
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		// 商家详细信息
//		ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
//		// shopId编号
//		Integer shopId = sellerInfo.getShopId();
//		List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
//		Map<String, Object> map = null;
//
//		List<ShopPosterType> types = ptService.getByShopId(shopId);
//
//		if (types != null) {
//			for (ShopPosterType pt : types) {
//				map = new HashMap<String, Object>();
//				map.put("typeId", pt.getId());
//				map.put("typeName", pt.getName());
//				mapList.add(map);
//			}
//		}
//		if (!mapList.isEmpty()) {
//			result.setSuccess();
//			result.setList(mapList);
//		}
//		return result;
//	}

    /**
     * @param request
     * @param img
     * @return
     */
//	@ApiOperation(value="海报添加")
//	@RequestMapping(value = "/poster/add", method = RequestMethod.POST)
//	public Result addPosterForm(HttpServletRequest request,@ApiParam(name="img",value="图片") @RequestParam("img") CommonsMultipartFile img) {
//		Result result = new Result();
//		ShopPoster poster = new ShopPoster();
//		// 商家信息
//		String token = request.getParameter("token");
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		// 商家详细信息
//		ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
//		Integer shopId = sellerInfo.getShopId();
//		poster.setShopId(shopId);
//		String title = request.getParameter("title");
//		String typeId = request.getParameter("typeId");
//		if (title != null && !"".equals(title)) {
//			poster.setTypeId(Integer.valueOf(typeId));
//		}
//		String filename = img.getOriginalFilename();
//		if (filename != null && !"".equals(filename)) {
//			String address = FileUtil.getImgAddress(request, img, "poster");
//			if (address != null && !"".equals(address)) {
//				poster.setImg(address);
//			}
//		}
//		String content = request.getParameter("content");
//		if (content != null && !"".equals(content)) {
//			poster.setContent(content);
//		}
//		int flag = posterService.insert(poster);
//		result.setFlag(flag);
//		return result;
//	}

//	/**
//	 * @param id
//	 * @return 修改是否成功
//	 */
//	@RequestMapping(value = "/poster/detail/{id}", method = RequestMethod.GET)
//	public Result modifyPosterPage(HttpServletRequest request,
//			@PathVariable(value = "id", required = true) Integer id) {
//		Result result = new Result();
//		// 商家信息
//		String token = request.getParameter("token");
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		// 商家详细信息
//		ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
//		Integer shopId = sellerInfo.getShopId();
//
//		Map<String, Object> map = new HashMap<String, Object>();
//		ShopPoster poster = posterService.getById(id);
//		map.put("id", id);
//		map.put("title", poster.getTitle());
//		map.put("img", poster.getImg());
//		map.put("content", poster.getContent());
//		map.put("isUsedNum", poster.getIsUsedNum());
//		map.put("isCustomerNum", poster.getIsCustomerNum());
//		result.setMap(map);
//		List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
//		List<ShopPosterType> list = ptService.getByShopId(shopId);
//		if (list != null) {
//			for (ShopPosterType pt : list) {
//				map = new HashMap<String, Object>();
//				Integer ptId = pt.getId();
//				map.put("id", ptId);
//				map.put("name", pt.getName());
//				if (ptId.equals(poster.getTypeId())) {
//					map.put("typeFlag", "1");
//				} else {
//					map.put("typeFlag", "0");
//				}
//				maps.add(map);
//
//			}
//		}
//		result.setList(list);
//		if (!result.isEmpty()) {
//			result.setSuccess();
//		}
//		return result;
//	}

    /**
     * @param request 请求
     * @param id      编号
     * @param img     封面图
     * @return 修改是否成功
     */
//	@RequestMapping(value = "/poster/modify/{id}", method = RequestMethod.POST)
//	public Result modifyPosterForm(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id,
//			@RequestParam("img") CommonsMultipartFile img) {
//		Result result = new Result();
//		String token = request.getParameter("token");
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		ShopPoster poster = posterService.getById(id);
//
//		String title = request.getParameter("title");
//		if (title != null && !"".equals(title)) {
//			poster.setTitle(title);
//		}
//		String content = request.getParameter("content");
//		if (content != null && !"".equals(content)) {
//			poster.setContent(content);
//		}
//		String type = request.getParameter("type");
//		if (type != null && !"".equals(type)) {
//			poster.setTypeId(Integer.valueOf(type));
//		}
//
//		String address = FileUtil.getImgAddress(request, img, "poster");
//		if (address != null && !"".equals(address)) {
//			poster.setImg(address);
//		}
//
//		int flag = posterService.modifyById(poster);
//		result.setFlag(flag);
//		return result;
//
//	}

//	/**
//	 *
//	 * @return
//	 */
//	@RequestMapping(value = "/posterTypes", method = RequestMethod.GET)
//	public Result allPosterTypes(@RequestParam String token) {
//		Result result = new Result();
//		// 商家信息
//		ShopSeller seller = null;
//		if (token != null) {
//			seller = sellerService.getByToken(token);
//		}
//		if (seller == null) {
//			result.setMessage("登录失效，请重新登陆");
//			return result;
//		}
//		ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
//		Integer shopId = sellerInfo.getShopId();
//		List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
//		Map<String, Object> map = null;
//		List<ShopPosterType> posterTypes = ptService.getByShopId(shopId);
//		if (posterTypes != null) {
//			for (ShopPosterType pt : posterTypes) {
//				map = new HashMap<String, Object>();
//				map.put("typeId", pt.getId());
//				map.put("typeName", pt.getName());
//				maps.add(map);
//			}
//		}
//		if (maps.size() > 0) {
//			result.setList(maps);
//			result.setSuccess("查询");
//		} else {
//			result.setFail();
//		}
//		return result;
//	}

    /**
     * @return 首页信息，任务中心
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public Result index() {
        Result result = new Result();
        Map<String, Object> resultMap = new HashMap<String, Object>();

        // 商家信息
        ShopSeller seller = (ShopSeller) session.getAttribute("seller");
        // 商家详细信息
        ShopSellerInfo sellerInfo = siService.getBySId(seller.getSid());
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        Map<String, Object> map = new HashMap<String, Object>();
        List<ShopTask> taskList = taskService.getByShopId(shopId);
        SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
        if (taskList != null && taskList.size() > 0) {
            ShopTask task = taskList.get(0);
            map.put("id", task.getId());
            map.put("title", task.getTitle());
            map.put("content", task.getContent());
            Date createTime = task.getCreateTime();
            if (createTime != null) {
                map.put("createTime", sdf.format(createTime));
            }
            resultMap.put("taskNum", taskList.size());
        }
        resultMap.put("task", map);

        result.setMap(resultMap);
        return result;
    }

    /**
     * @return 任务中心列表
     */
    @RequestMapping(value = "/tasks", method = RequestMethod.GET)
    public Result allTask(HttpServletRequest request) {
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

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = null;
        List<ShopTask> taskList = taskService.getByShopId(shopId);
        if (taskList != null) {
            for (ShopTask task : taskList) {
                map = new HashMap<String, Object>();
                map.put("id", task.getId());
                map.put("title", task.getTitle());
                map.put("content", task.getContent());
                Date createTime = task.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                }
                mapList.add(map);
            }
        }
        result.setList(mapList);
        if (mapList.size() > 0) {
            result.setSuccess();
        }
        return result;
    }

    /**
     * @param request 前端添加的各个字段的信息
     * @return 添加操作是否成功
     */
    @RequestMapping(value = "/task/add", method = RequestMethod.POST)
    public Result addTask(HttpServletRequest request) {
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
        // 门店编号
        Integer shopId = sellerInfo.getShopId();
        ShopTask task = new ShopTask();

        task.setShopId(shopId);
        String title = request.getParameter("title");
        if (title != null && !"".equals(title)) {
            task.setTitle(title);
        }
        String content = request.getParameter("content");
        if (content != null && !"".equals(content)) {
            task.setContent(content);
        }
        String newClueNum = request.getParameter("clueNum");
        if (newClueNum != null && !"".equals(newClueNum)) {
            task.setNewClueNum(Integer.valueOf(newClueNum));
        }
        String newSpreadNum = request.getParameter("spreadNum");
        if (newSpreadNum != null && !"".equals(newSpreadNum)) {
            task.setNewSpreadNum(Integer.valueOf(newSpreadNum));
        }
        String newPhoneNum = request.getParameter("phoneNum");
        if (newPhoneNum != null && !"".equals(newPhoneNum)) {
            task.setNewSpreadNum(Integer.valueOf(newPhoneNum));
        }
        String newReportNum = request.getParameter("reportNum");
        if (newReportNum != null && !"".equals(newReportNum)) {
            task.setNewSpreadNum(Integer.valueOf(newReportNum));
        }
        String timeType = request.getParameter("timeType");
        if (timeType != null && !"".equals(timeType)) {
            task.setTimeLimitType(timeType);
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String startTime = request.getParameter("startTime");
        if (startTime != null && !"".equals(startTime)) {
            Date startDate = null;
            try {
                startDate = sdf.parse(startTime);
            } catch (ParseException e) {
                System.out.println("字符串转化异常");
            }
            task.setStartTime(startDate);
        }
        String endTime = request.getParameter("endTime");
        if (endTime != null && !"".equals(endTime)) {
            Date endDate = null;
            try {
                endDate = sdf.parse(endTime);
            } catch (ParseException e) {
                System.out.println("字符串转化异常");
            }
            task.setEndTime(endDate);
        }

        String remindType = request.getParameter("remindType");
        if (remindType != null && !"".equals(remindType)) {
            task.setRemindType(remindType);
        }
        String[] executors = request.getParameterValues("executor");
        if (executors != null && executors.length > 0) {
            StringBuilder exe = new StringBuilder();
            for (String executor : executors) {
                exe.append(executor).append("-");
            }
            task.setExecutor(exe.toString());
        }
        task.setCreateTime(new Date());
        int count = taskService.insert(task);

        result.setFlag(count);
        if (count > 0) {
            result.setSuccess("添加");
        } else {
            result.setFail("添加");
        }
        return result;

    }

    /**
     * @param id 任务编号
     * @return 删除任务是否成功
     */
    @RequestMapping(value = "/task/delete/{id}", method = RequestMethod.GET)
    public Result deleteTask(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
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
        Integer flag = taskService.deleteById(id);
        result.setFlag(flag);
        return result;
    }

    /**
     * @param id，任务编号
     * @return 任务详情
     */
    @RequestMapping(value = "/task/modify/{id}", method = RequestMethod.GET)
    public Result modifyTaskPage(HttpServletRequest request, @PathVariable(value = "id", required = true) Integer id) {
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
        Map<String, Object> resultMap = new HashMap<String, Object>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ShopTask task = taskService.getById(id);
        if (task != null) {
            resultMap.put("id", task.getId().toString());
            resultMap.put("title", task.getTitle());
            resultMap.put("content", task.getContent());
            resultMap.put("clueNum", task.getNewClueNum().toString());
            resultMap.put("spreadNum", task.getNewSpreadNum().toString());
            resultMap.put("phoneNum", task.getNewPhoneNum());
            resultMap.put("reportNum", task.getNewReportNum());
            resultMap.put("isSpecified", task.getIsSpecified());
            resultMap.put("timeLimitType", task.getTimeLimitType());
            resultMap.put("startTime", task.getStartTime());
            resultMap.put("endTime", task.getEndTime());
            resultMap.put("remindType", task.getRemindType());
            resultMap.put("executor", task.getExecutor());
            Date createTime = task.getCreateTime();
            if (createTime != null) {
                resultMap.put("createTime", sdf.format(createTime));
            }
        }
        result.setMap(resultMap);
        return result;
    }

    /**
     * @param id      任务编号
     * @param request 前端获取的任务标题和任务内容
     * @return 操作是否成功
     */
    @RequestMapping(value = "/task/modify/{id}", method = RequestMethod.POST)
    public Result modifyTaskForm(@PathVariable(value = "id", required = true) Integer id, HttpServletRequest request) {
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
        ShopTask task = taskService.getById(id);
        String title = request.getParameter("title");
        if (title != null && !"".equals(title)) {
            task.setTitle(title);
        }
        String content = request.getParameter("content");
        if (content != null && !"".equals(content)) {
            task.setContent(content);
        }
        String newClueNum = request.getParameter("clueNum");
        if (newClueNum != null && !"".equals(newClueNum)) {
            task.setNewClueNum(Integer.valueOf(newClueNum));
        }
        String newSpreadNum = request.getParameter("spreadNum");
        if (newSpreadNum != null && !"".equals(newSpreadNum)) {
            task.setNewSpreadNum(Integer.valueOf(newSpreadNum));
        }
        String newPhoneNum = request.getParameter("phoneNum");
        if (newPhoneNum != null && !"".equals(newPhoneNum)) {
            task.setNewSpreadNum(Integer.valueOf(newPhoneNum));
        }
        String newReportNum = request.getParameter("reportNum");
        if (newReportNum != null && !"".equals(newReportNum)) {
            task.setNewSpreadNum(Integer.valueOf(newReportNum));
        }
        String timeType = request.getParameter("timeType");
        if (timeType != null && !"".equals(timeType)) {
            task.setTimeLimitType(timeType);
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String startTime = request.getParameter("startTime");
        if (startTime != null && !"".equals(startTime)) {
            Date startDate = null;
            try {
                startDate = sdf.parse(startTime);
            } catch (ParseException e) {
                System.out.println("字符串转化异常");
            }
            task.setStartTime(startDate);
        }
        String endTime = request.getParameter("endTime");
        if (endTime != null && !"".equals(endTime)) {
            Date endDate = null;
            try {
                endDate = sdf.parse(endTime);
            } catch (ParseException e) {
                System.out.println("字符串转化异常");
            }
            task.setEndTime(endDate);
        }

        String remindType = request.getParameter("remindType");
        if (remindType != null && !"".equals(remindType)) {
            task.setRemindType(remindType);
        }
        String[] executors = request.getParameterValues("executor");
        if (executors != null && executors.length > 0) {
            StringBuilder exe = new StringBuilder();
            for (String executor : executors) {
                exe.append(executor).append("-");
            }
            task.setExecutor(exe.toString());
        }
        int flag = taskService.modifyById(task);
        result.setFlag(flag);
        return result;
    }

    @ApiOperation("所有公告")
    @GetMapping("oaNotices")
    public Result notices(
            @ApiParam @RequestParam(required = false) String token) {
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
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Integer oaId = seller.getOaUserId();
        List<Map<String, Object>> maps = new ArrayList<>();
        Map<String, Object> map = null;
        List<OaNotice> oaNotices = oaNoticeService.getByOaId(oaId);
        if (oaNotices != null) {
            for (OaNotice notice : oaNotices) {
                map = new HashMap<>();
                map.put("id", notice.getId().toString());
                map.put("title", notice.getTitle());
                map.put("content", notice.getContent());
                Date createTime = notice.getCreateTime();
                if (createTime != null) {
                    map.put("createTime", sdf.format(createTime));
                } else {
                    map.put("createTime", "");
                }
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
    @ApiOperation("公告详情")
    @GetMapping("oaNotice")
    public Result noticedetail(
            @ApiParam @RequestParam(required = false) String token,
            @ApiParam @RequestParam(required = false) Integer id
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

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        OaNotice notice=oaNoticeService.getById(id);
        Map<String,Object>  map=new HashMap<>();
        if (notice!=null){
            map.put("id",notice.getId().toString());
            map.put("title",notice.getTitle());
            map.put("content",notice.getContent());
            Date createTime = notice.getCreateTime();
            if(createTime!=null){
                map.put("createTime",sdf.format(createTime));
            }else{
                map.put("createTime","");
            }
        }
        result.setMap(map);
        if (!map.isEmpty()){
            result.setSuccess("查询");
        }else{
            result.setFail("查询");
        }

        return result;
    }

}
