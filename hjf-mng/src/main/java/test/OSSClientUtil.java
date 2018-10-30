package test;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;
import java.util.Random;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.ObjectMetadata;
import com.hjf.common.util.TimeUtil;
public class OSSClientUtil {
	 public static void main(String[] args) throws IOException {
		 String ret=uploadImg2Oss(filedir,"E:\\ab5ccc925a9a385e4911e6c88fd53683.mp4");
		 String  url =getUrl(ret);
		 System.out.println(url);
	 }
	
	  private  static Log log = LogFactory.getLog(OSSClientUtil.class);
	  private static String endpoint = "oss-cn-beijing.aliyuncs.com";
	  private static String accessKeyId = "LTAIf9g5F1Gg1yi7";
	  private static String accessKeySecret = "PEb9CdwPjdDS3qMXnU5kwPA2l9gLCB";
	  private static String bucketName = "hj-bucket-01";	  
	  //文件存储目录
	  private static String filedir = "product/";
	 
	  private static OSSClient ossClient;
	 
	  public OSSClientUtil() {
		  ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
	  }
	  public static  void init() {
		  ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
	  }
	   
	  /**
	   * 销毁
	   */
	  public static void destory() {
	    ossClient.shutdown();
	  }
	 
	  /**
	   * 上传图片
	   */
	  public static String uploadImg2Oss(String filedir,String file) {
		log.info("【阿里云文件上传】文件目录:"+filedir+",文件名称:"+file);
	    try {
	    	File fileOnServer = new File(file);
	    	FileInputStream fin = new FileInputStream(fileOnServer);
	    	String fileName=getFileName(fileOnServer);
	    	return uploadFile2OSS( filedir,fileName,fin);
	    } catch (Exception e) {
	    	log.error("【阿里云OSS文件上传失败】"+ file+"...."+e.getMessage(), e);
	    	return "";
	    }
	  }
	 
	 
	  public static String uploadImg2Oss(String filedir,MultipartFile file) {
		log.info("【阿里云文件上传】文件目录:"+filedir+",文件名称:"+file);  
	    String originalFilename = file.getOriginalFilename();
	    String substring = originalFilename.substring(originalFilename.lastIndexOf(".")).toLowerCase();
	    Random random = new Random();
	    String fileName = TimeUtil.getDateYMDHMS()+"-"+random.nextInt(100000)+ substring;
	    try {
		    InputStream inputStream = file.getInputStream();
		    return uploadFile2OSS(filedir, fileName,inputStream);
	    } catch (Exception e) {
	    	log.error("【阿里云OSS文件上传失败】"+filedir + fileName+"...."+e.getMessage());
	    	return "";
	    }
	  }
	 
	  /**
	   * 获得图片路径
	   */
	  public static String getImgUrl(String fileUrl) {
	    if (!StringUtils.isEmpty(fileUrl)) {
	      String[] split = fileUrl.split("/");
	      return getUrl(filedir + split[split.length - 1]);
	    }
	    return null;
	  }
	 
	  /**
	   * 上传到OSS服务器  如果同名文件会覆盖服务器上的
	   * @param instream 文件流
	   * @param fileName 文件名称 包括后缀名
	   * @return 出错返回"" ,唯一MD5数字签名
	   */
	  public static String uploadFile2OSS(String filedir, String fileName,InputStream instream ) {
	    String ret = filedir+fileName;
	    try {
	      init();
	      //创建上传Object的Metadata 
	      ObjectMetadata objectMetadata = new ObjectMetadata();
	      objectMetadata.setContentLength(instream.available());
	      objectMetadata.setCacheControl("no-cache");
	      objectMetadata.setHeader("Pragma", "no-cache");
	      objectMetadata.setContentType(getcontentType(fileName.substring(fileName.lastIndexOf("."))));
	      objectMetadata.setContentDisposition("inline;filename=" + fileName);
	      ossClient.putObject(bucketName,  filedir+fileName, instream, objectMetadata);
	    } catch (IOException e) {
	    	log.error("【阿里云OSS文件上传失败】"+filedir + fileName+"...."+e.getMessage(), e);
	    	return  "";
	    } finally {
	      destory();
	      try {
	        if (instream != null) {
	          instream.close();
	        }
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
	    }
	    return ret;
	  }
	 
	  /**
	   * Description: 判断OSS服务文件上传时文件的contentType
	   */
	  public static String getcontentType(String FilenameExtension) {
	    if (FilenameExtension.equalsIgnoreCase(".bmp")) {
	      return "image/bmp";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".gif")) {
	      return "image/gif";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".jpeg") ||
	        FilenameExtension.equalsIgnoreCase(".jpg") ||
	        FilenameExtension.equalsIgnoreCase(".png")) {
	      return "image/jpeg";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".html")) {
	      return "text/html";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".txt")) {
	      return "text/plain";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".vsd")) {
	      return "application/vnd.visio";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".pptx") ||
	        FilenameExtension.equalsIgnoreCase(".ppt")) {
	      return "application/vnd.ms-powerpoint";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".docx") ||
	        FilenameExtension.equalsIgnoreCase(".doc")) {
	      return "application/msword";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".xml")) {
	      return "text/xml";
	    }
	    if (FilenameExtension.equalsIgnoreCase(".mp4")) {
		  return "application/mp4";
		}
	    return "image/jpeg";
	  }
	 
	  /**
	   * 获得url链接
	   */
	  public static String getUrl(String key) {
	    // 设置URL过期时间为10年  3600l* 1000*24*365*10
	    Date expiration = new Date(new Date().getTime() + 3600l * 1000 * 24 * 365 * 10);
	    // 生成URL
	    URL url = ossClient.generatePresignedUrl(bucketName, key, expiration);
	    if (url != null) {
	      return url.toString();
	    }
	    return null;
	  }
	  
	  /**
	   * 获得url链接
	   */
	  public static String getFileName(File file) {
		  String fileName = file.getName();  
		  String substring = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
		  Random random = new Random();
	      return TimeUtil.getDateYMDHMS()+"-"+random.nextInt(100000)+ substring;
	  }
	  
	  
	  
	  
	  
	  
	  
	  
}
