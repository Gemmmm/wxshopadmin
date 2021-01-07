package com.tc.wx.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.tc.wx.util.FileUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@RestController
@RequestMapping("file")
@Api(tags="图片上传")
public class FileController {
	
	/**
	 * img文件上传
	 * @param img
	 * @param request
	 * @return
	 */
	@ApiOperation(value="上传图片")
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public String uploadImage(HttpServletRequest request,
			@ApiParam(value="图片文件")@RequestParam MultipartFile img,
			@ApiParam(value="图片的所属分类，good/info/case") @RequestParam String type) {
		String path =null;
		try {
			//CommonsMultipartFile file=(CommonsMultipartFile)img;
			path=FileUtil.uploadImage(img, type);
            return path;
		} catch (Exception e) {
			System.out.println("/file/uploadFile上传失败!");
		}
		return null;
	}
	

}
