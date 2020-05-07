package com.blog.aspect;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Aspect    //定义切面
@Component
public class LogAspect {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
//定义切入点表达式com.blog.controller的所有类
    @Pointcut("execution(* com.blog.controller.*.*(..))")
    public void log(){}//切面
//1.方法执行前
    @Before("log()")    //引用切入点
    public void doBefore(JoinPoint joinPoint){
        logger.info("------------doBefore------------");

        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();

        String url = request.getRequestURL().toString();//拿到请求url
        String ip = request.getRemoteAddr();//拿到请求的ip
        //获得类名.方法名
        String classMethod = joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName();
        //获得方法参数
        Object[] args = joinPoint.getArgs();

        RequestLog requestLog = new RequestLog(url, ip, classMethod, args);
        //打印请求信息
        logger.info("Request: {}", requestLog);
    }
//2.执行方法
//3.方法执行后
    @After("log()")
    public void doAfter(){
        logger.info("------------doAfter------------");

    }
//4.方法返回后
    @AfterReturning(returning = "result", pointcut = "log()")
    public void doAfterReturn(Object result){

        //打印返回值
        logger.info("Result: {}", result);
    }

    @Data
    @AllArgsConstructor//生成构造方法
    public class RequestLog{      //用于封装请求信息
        private String url;
        private String ip;
        private String classMethod;
        private Object[] args;

    }
}
