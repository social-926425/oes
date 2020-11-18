package fun.afterglow.oes.config.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

import javax.sql.DataSource;

/**
 * 对spring-service里面的transactionMmnager
 * 继承TransactionManagementConfiguration是因为开启annotation-drive
 */
@Configuration
/**
 * 首先使用注解@EnableTransactionManagement 开启事务支持后
 * 在service方法上添加@Transaction即可
 */
@EnableTransactionManagement
public class TransactionManagementConfiguration implements TransactionManagementConfigurer {
    @Autowired
    //注入DataSourceConfiguration里面的dataSource,通过crateDataSource()获取
    private DataSource dataSource;

    /**
     * 关于事务管理,需要返回PlatformTransactionManager
     * @return
     */
    @Override
    public TransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(dataSource);
    }
}
