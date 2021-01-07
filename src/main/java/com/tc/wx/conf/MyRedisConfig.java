package com.tc.wx.conf;

import com.tc.wx.util.ObjectRedisSerializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.io.Serializable;
import java.net.UnknownHostException;

/**
 * @author DELL
 * @date 2020/8/14 16:17
 */
@Configuration
public class MyRedisConfig {
    @Bean
    public RedisTemplate< Serializable, Object> redisTemplate(RedisConnectionFactory connectionFactory) {
        RedisTemplate< Serializable, Object> template = new RedisTemplate<>();
        template.setConnectionFactory(connectionFactory);
        template.afterPropertiesSet();
        // redis存取对象的关键配置
        template.setKeySerializer(new StringRedisSerializer());
        // ObjectRedisSerializer类为java对象的序列化和反序列化工具类
        template.setValueSerializer(new ObjectRedisSerializer());
        return template;
    }
}
