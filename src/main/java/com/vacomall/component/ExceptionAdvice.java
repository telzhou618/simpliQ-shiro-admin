package com.vacomall.component;


import org.apache.log4j.Logger;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

/**
 * 全局异常处理器
 * Created by Gaojun.Zhou 2017年6月8日
 */
@ControllerAdvice
public class ExceptionAdvice {
	
	public static final Logger logger = Logger.getLogger(ExceptionAdvice.class);
	
    /**
     * 404 - Not Found
     */
    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(NoHandlerFoundException.class)
    public ModelAndView handleNoHandlerFoundException(NoHandlerFoundException  e) {
        logger.error("资源不存在", e);
        return new ModelAndView("error/404");
    }
   
    /**
     * 405 - ForbidAccessException
     */
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(UnauthorizedException.class)
    public ModelAndView unauthorizedException(UnauthorizedException e) {
    	logger.error("禁止访问", e);
    	return new ModelAndView("error/unauthorized");
    }
    /**
     * 500 - Internal Server Error
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public ModelAndView handleException(Exception e) {
        logger.error("服务运行异常,"+e.getMessage(), e);
        return new ModelAndView("error/500");
    }
}
