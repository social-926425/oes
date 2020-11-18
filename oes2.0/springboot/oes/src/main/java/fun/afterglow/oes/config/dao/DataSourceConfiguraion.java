package fun.afterglow.oes.config.dao;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import fun.afterglow.oes.uitl.DESUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.beans.PropertyVetoException;

/**
 * 配置DataSource到IOC容器里面
 */
@Configuration
//自动臊面
@MapperScan("fun.afterglow.oes.dao")
public class DataSourceConfiguraion {
    @Value("${jdbc.driver}")
    private String jdbcDriver;
    @Value("${jdbc.url}")
    private String jdbcUrl;
    @Value("${jdbc.username}")
    private String jdbUserName;
    @Value("${jdbc.password}")
    private String jdbcPassWord;

    /**
     * 生成与spring-dao.xml对应的bean dataSource
     */
    @Bean(name = "dataSource")
    public ComboPooledDataSource createDataSource () throws PropertyVetoException {
        //生成dataSource实列
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        //跟配置文件一样设置一下信息
        //驱动
        dataSource.setDriverClass(jdbcDriver);
        //数据库连接URL
        dataSource.setJdbcUrl(jdbcUrl);
        //数据库连接用户名
        dataSource.setUser(DESUtil.getDecryptString(jdbUserName));
        //数据库连接密码
        dataSource.setPassword(DESUtil.getDecryptString(jdbcPassWord));
        //配置c3p0连接池的私有属性
        //连接池最大线程数
        dataSource.setMaxPoolSize(30);
        //连接池最小连接数
        dataSource.setMinPoolSize(10);
        //关闭连接后不自动commit
        dataSource.setAutoCommitOnClose(false);
        //连接超时时间
        dataSource.setCheckoutTimeout(10000);
        //连接失败重试次数
        dataSource.setAcquireRetryAttempts(5);
        return dataSource;
    }
}
