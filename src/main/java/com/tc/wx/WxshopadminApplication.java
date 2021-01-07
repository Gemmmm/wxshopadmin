
package com.tc.wx;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author DELL
 * @date 2020/8/11
 *
 */
@SpringBootApplication
@MapperScan(basePackages = "com.tc.wx.dao")
public class WxshopadminApplication {
    public static void main(String[] args) {
        SpringApplication.run(WxshopadminApplication.class, args);
    }
}
