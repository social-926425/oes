package fun.afterglow.oes.config.controller;

import fun.afterglow.oes.interceptor.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 * 开启Mvc,自动注入spring容器,WebMvcConfigurerAdapter:配置视图解析器
 * 当一个类实现了这个接口(ApplicationContextAware)之后,这个类就可以方便获取ApplicationContext中所有的bean
 */
@Configuration
//等价于<mvc:annotation-drive/>
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter implements ApplicationContextAware {
    //spring容器
    private ApplicationContext applicationContext;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext=applicationContext;
    }



    /**
     * 配置静态资源
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/resources/");
//        super.addResourceHandlers(registry);
    }

    //定义默认的请求处理器
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
//        super.configureDefaultServletHandling(configurer);
    }


    @Bean(name = "viewResolver")
    public ViewResolver creatViewResolver(){
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        //设置转换器按照什么规律转换
//        viewResolver.setViewClass(new JstlView().getClass());
        //设置spring容器
        viewResolver.setApplicationContext(this.applicationContext);
        //取消缓存
        viewResolver.setCache(false);
        //设置解析前缀
        viewResolver.setPrefix("/WEB-INF/html/");
        //设置视图解析的后缀
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    /**
     * 添加拦截器配置
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册拦截器
        InterceptorRegistration loginInterceptor = registry.addInterceptor(new LoginInterceptor());
        //配置拦截的路径
        loginInterceptor.addPathPatterns("/**");
        //注册拦截器
        InterceptorRegistration markInterceptor = registry.addInterceptor(new MarkInterceptor());
        //配置拦截的路径
        markInterceptor.addPathPatterns("/mark/**");
        //注册拦截器
        InterceptorRegistration adminInterceptor = registry.addInterceptor(new AdminInterceptor());
        //配置拦截的路径
        adminInterceptor.addPathPatterns("/dictionary/**");
        //注册拦截器
        InterceptorRegistration bankInterceptor = registry.addInterceptor(new BankInterceptor());
        //配置拦截的路径
        bankInterceptor.addPathPatterns("/bank/**");
        //注册拦截器
        InterceptorRegistration presonnelInterceptor = registry.addInterceptor(new PresonnelInterceptor());
        //配置拦截的路径
        presonnelInterceptor.addPathPatterns("/presonnel/**");
        //注册拦截器
        InterceptorRegistration examInterceptor = registry.addInterceptor(new ExamInterceptor());
        //配置拦截的路径
        examInterceptor.addPathPatterns("/exam/**");
    }
}
