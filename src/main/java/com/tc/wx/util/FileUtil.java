package com.tc.wx.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.StandardMultipartHttpServletRequest;

public class FileUtil {

    /**
     * @param request 暂无用
     * @param file    img文件
     * @param path    存储的路径
     * @return 图片的地址
     */
    public static String getImgAddress(HttpServletRequest request, CommonsMultipartFile file, String path) {
        String fileName = null;
        //随机名处理
        try {
//            path = path + "/" + DateUtil.thisDayBeginNew();
//            // 流转换 将MultipartFile转换为oss所需的InputStream
//            //CommonsMultipartFile cf = (CommonsMultipartFile) file;
//            DiskFileItem fi = (DiskFileItem) file.getFileItem();
//            InputStream fileContent = fi.getInputStream();
//            fileName = fi.getName();
            InputStream inputStream = file.getInputStream();
            String folderPath= Constants.QrCodePath;
            File folder = new File(folderPath);
            if (!folder.exists()) {
                folder.mkdirs();
            }
            File targetFile=new File(folderPath + "test.png");
            if (!targetFile.exists()) {
                targetFile.createNewFile();
            }
            byte[] buffer = new byte[8192];
            int bytesRead = 0;
            FileOutputStream out = new FileOutputStream(targetFile);
            while ((bytesRead = inputStream.read(buffer, 0, 8192)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
            inputStream = new FileInputStream(targetFile);

//            path = path + "/" + DateUtil.thisDayBeginNew();
//            //流转换 将MultipartFile转换为oss所需的InputStream
//            CommonsMultipartFile cf = (CommonsMultipartFile) file;
//            System.out.println("file:" + cf);
//            DiskFileItem fi = (DiskFileItem) cf.getFileItem();
//            InputStream fileContent = fi.getInputStream();
//            fileName = fi.getName();
            fileName =DateUtil.thisDayBeginNew()+"/"+ System.currentTimeMillis() + ".png";
            fileName = System.currentTimeMillis() + fileName.substring(fileName.lastIndexOf("."));
            OssUtil.uploadFile(inputStream, path, fileName);
            path = path + "/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传失败！");
        }

        return path;
    }

    public static String uploadQrCode(InputStream inputStream) {

        //随机名处理

        try {
            String fileName = StringUtil.seqGenerate().toString() + ".png";
            String path = "qrCode/" + DateUtil.thisDayBeginNew();
            // 流转换 将MultipartFile转换为oss所需的InputStream
            //CommonsMultipartFile cf = (CommonsMultipartFile) file;
            fileName = System.currentTimeMillis() + fileName.substring(fileName.lastIndexOf("."));
            OssUtil.uploadFile(inputStream, path, fileName);
            return path + "/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传失败！");
        }
        return null;
    }

    public static String uploadVideo(MultipartFile file, String path) {
        String fileName = null;
        //随机名处理

        System.out.println("file:" + file.getOriginalFilename());
        try {
            InputStream inputStream = file.getInputStream();
            String folderPath= Constants.QrCodePath;
            File folder = new File(folderPath);
            if (!folder.exists()) {
                folder.mkdirs();
            }
            File targetFile=new File(folderPath + "video.mp4");
            if (!targetFile.exists()) {
                targetFile.createNewFile();
            }
            byte[] buffer = new byte[8192];
            int bytesRead = 0;
            FileOutputStream out = new FileOutputStream(targetFile);
            while ((bytesRead = inputStream.read(buffer, 0, 8192)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
            inputStream = new FileInputStream(targetFile);

//            path = path + "/" + DateUtil.thisDayBeginNew();
//            //流转换 将MultipartFile转换为oss所需的InputStream
//            CommonsMultipartFile cf = (CommonsMultipartFile) file;
//            System.out.println("file:" + cf);
//            DiskFileItem fi = (DiskFileItem) cf.getFileItem();
//            InputStream fileContent = fi.getInputStream();
//            fileName = fi.getName();
            fileName =DateUtil.thisDayBeginNew()+"/"+ System.currentTimeMillis() + ".mp4";

            OssUtil.uploadFile(inputStream, path, fileName);
            path = path + "/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传失败！");
            return null;
        }

        return path;
    }


    public static String uploadImage(MultipartFile file, String path) {
        String fileName = null;
        //随机名处理

        System.out.println("file:" + file.getOriginalFilename());
        try {
            InputStream inputStream = file.getInputStream();
            String folderPath= Constants.QrCodePath;
            File folder = new File(folderPath);
            if (!folder.exists()) {
                folder.mkdirs();
            }
            File targetFile=new File(folderPath + "test.png");
            if (!targetFile.exists()) {
                targetFile.createNewFile();
            }
            byte[] buffer = new byte[8192];
            int bytesRead = 0;
            FileOutputStream out = new FileOutputStream(targetFile);
            while ((bytesRead = inputStream.read(buffer, 0, 8192)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
            inputStream = new FileInputStream(targetFile);

//            path = path + "/" + DateUtil.thisDayBeginNew();
//            //流转换 将MultipartFile转换为oss所需的InputStream
//            CommonsMultipartFile cf = (CommonsMultipartFile) file;
//            System.out.println("file:" + cf);
//            DiskFileItem fi = (DiskFileItem) cf.getFileItem();
//            InputStream fileContent = fi.getInputStream();
//            fileName = fi.getName();
            fileName =DateUtil.thisDayBeginNew()+"/"+ System.currentTimeMillis() + ".png";
            System.out.println("fileName:"+fileName);
            OssUtil.uploadFile(inputStream, path, fileName);
            path = path + "/" + fileName;
            System.out.println("OSSFileName:"+path);
            return path;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return null;
    }
}
