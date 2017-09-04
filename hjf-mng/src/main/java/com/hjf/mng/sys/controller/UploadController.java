package com.hjf.mng.sys.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hjf.base.LogUtil;
import com.hjf.base.exception.CodeUtil;
import com.hjf.base.spring.BaseAction;
import com.hjf.common.bean.UploadRespBean;
import com.hjf.common.util.TimeUtil;
import com.hjf.mng.common.util.ConfigUtil;

/**
 * 文件上传 
 * author lihaijun 
 * createTime 2015-1-02
 */
@Controller
@RequestMapping("/upload")
public class UploadController extends BaseAction {

	/**
	 * 文件上传
	 */
	@RequestMapping(method = RequestMethod.POST, params = "upload")
	public void upload(HttpServletRequest request,HttpServletResponse response) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		String  ym=TimeUtil.getDateYM();
		String serverPath = ConfigUtil.server_app_root + File.separator;
		String dataName = request.getParameter("dataName");
		UploadRespBean rb   = new UploadRespBean();
		String module  =request.getParameter("module");
		if (StringUtils.isBlank(module)) {
			LogUtil.getLogger().error("【文件上传参数验证】..检查参数失败  缺失模块module");
			respMsgObj(response, rb);
			return;
		} 
		/** 构建图片保存的目录 **/
		String pathDir = ConfigUtil.sys_uploadPath +"/"+module;
		/** 得到图片保存目录的真实路径 **/
		String realPathDir =  serverPath + pathDir+"/" +ym;
		/** 根据真实路径创建目录 **/
		File saveFile = new File(realPathDir);
		if (!saveFile.exists()){
			saveFile.mkdirs();
		}
		/** 页面控件的文件流 **/
		MultipartFile multipartFile = null;
		if (StringUtils.isNotBlank(dataName)) {
			multipartFile = multipartRequest.getFile(dataName);
		}else{
			multipartFile = multipartRequest.getFile("file");
		}
		
		/** 获取文件的后缀 **/
		String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		/** 使用UUID生成文件名称 **/
		String picName = UUID.randomUUID().toString() + suffix;// 构建文件名称
		/** 拼成完整的文件保存路径加文件 **/
		String fileSavePath = serverPath + pathDir +File.separator  +ym+ File.separator + picName;
		String filePath =  pathDir+ "/"+ym+"/" + picName; // 文件存储路径【绝对对】
		String fileName = pathDir + "/"+ym+"/" + picName; // 文件存储路径【绝对对】
		File file = new File(fileSavePath);		
		try {
			multipartFile.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			LogUtil.getLogger().error("【文件上传】....发生异常 ");
			rb.fail(CodeUtil.e_9999);
			respMsgObj(response, rb);
			return;
		}
		LogUtil.getLogger().error("【文件上传】....上传成功 文件名 fileName=" + fileName);
		rb.setFileName(filePath);
		rb.success();
		respMsgObj(response, rb);
	}	
	
 

}
