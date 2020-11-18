package fun.afterglow.oes.config.dao;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import javax.sql.DataSource;
import java.io.IOException;


@Configuration
//@MapperScan()
public class SessionFactoryConfiguration {
    //mybatis-config.xml配置文件路径
    private static String mybatisConfigFile;

    @Value("${mybatis_config_file}")
    public void setMybatisConfigFile(String mybatisConfigFile) {
        SessionFactoryConfiguration.mybatisConfigFile = mybatisConfigFile;
    }

    //mybatis mapper文件所在路径
    private static String mapperPath;

    @Value("${mybatis_mapper_path}")
    public void setMapperPath(String mapperPath) {
        SessionFactoryConfiguration.mapperPath = mapperPath;
    }

    //实体类所在的package
    @Value("${mybatis_type_alias_package}")
    private String typeAliasPackage;
    @Autowired
    private DataSource dataSource;

    @Bean(name = "sqlSessionFactory")
    public SqlSessionFactoryBean createSqlSessionFactoryBean() throws IOException {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        //设置mybatis configuration扫描路径
        sqlSessionFactoryBean.setConfigLocation(new ClassPathResource(mybatisConfigFile));
        //添加mapper扫描路径
        PathMatchingResourcePatternResolver pathMatchingResourcePatternResolver = new PathMatchingResourcePatternResolver();
        String packageSearchPath = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX+mapperPath;
        sqlSessionFactoryBean.setMapperLocations(pathMatchingResourcePatternResolver.getResources(packageSearchPath));
        //设置DataSource
        sqlSessionFactoryBean.setDataSource(dataSource);
        //这只typeAlias包扫描路径
        sqlSessionFactoryBean.setTypeAliasesPackage(typeAliasPackage);
        return sqlSessionFactoryBean;
    }
}
