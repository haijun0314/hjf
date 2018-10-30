package test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.Bucket;
import com.aliyun.oss.model.CannedAccessControlList;
import com.aliyun.oss.model.CreateBucketRequest;
import com.aliyun.oss.model.ListBucketsRequest;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import com.hjf.common.util.StringUtil;
public class OSS {
	private static String endpoint = "oss-cn-beijing.aliyuncs.com";
    private static String accessKeyId = "LTAIf9g5F1Gg1yi7";
    private static String accessKeySecret = "PEb9CdwPjdDS3qMXnU5kwPA2l9gLCB";
    private static String bucketName = "hj-bucket-01";
    private static OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);
    private static String filedir = "product/";
	 
    public static void main(String[] args) throws IOException {
    	
    	try {
            if (!ossClient.doesBucketExist(bucketName)) {
                System.out.println("Creating bucket " + bucketName + "\n");
                ossClient.createBucket(bucketName);
                CreateBucketRequest createBucketRequest= new CreateBucketRequest(bucketName);
                createBucketRequest.setCannedACL(CannedAccessControlList.PublicRead);
                ossClient.createBucket(createBucketRequest);
            }
            ListBucketsRequest listBucketsRequest = new ListBucketsRequest();
            listBucketsRequest.setMaxKeys(500);
            for (Bucket bucket : ossClient.listBuckets()) {
                System.out.println(" - " + bucket.getName());
            }
            String key=StringUtil.randNumStr(10)+".jpg";
            
            uploadFile(key, new File("E:\\3.jpg"));
            // 设置URL过期时间为1小时
            Date expiration = new Date(new Date().getTime() + 3600 * 1000);
            // 生成URL
            URL url = ossClient.generatePresignedUrl(bucketName, filedir+key, expiration);
            System.out.println("url...." +url);
        } catch (OSSException oe) {
            System.out.println("Error Message: " + oe.getErrorCode());
            System.out.println("Request ID:      " + oe.getRequestId());
            System.out.println("Host ID:           " + oe.getHostId());
        } finally {
            ossClient.shutdown();
        }
    	
       
    }
    
    // 上传文件 file  
    public static void uploadFile(String key, File file) throws OSSException, ClientException, FileNotFoundException {  
	     // 获取指定文件的输入流  
	     InputStream content = new FileInputStream(file);  
	     // 创建上传Object的Metadata  
	     ObjectMetadata meta = new ObjectMetadata();  
	     // 必须设置ContentLength  
	     meta.setContentLength(file.length());  
         meta.setContentType("image/*");  
         PutObjectResult pr= ossClient.putObject(bucketName, filedir+key, content, meta); 
         pr.getResponse();
    }         
    
     

  

}
