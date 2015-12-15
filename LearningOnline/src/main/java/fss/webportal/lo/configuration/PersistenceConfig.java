package fss.webportal.lo.configuration;


import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages={"fss.webportal.lo.*"})
@PropertySource(value = { "classpath:application.properties"})
@EnableJpaRepositories(basePackages="fss.webportal.lo.repository")
public class PersistenceConfig extends WebMvcConfigurerAdapter{
	
	@Autowired
	private Environment environment;
	private final static String DRIVER_CLASS_NAME="jdbc.driverClassName";
	private final static String JDBC_URL="jdbc.url";
	private final static String JDBC_USERNAME="jdbc.username";
	private final static String JDBC_PASSWORD="jdbc.password";
	private final static String MODEL_PACKAGE="fss.webportal.lo.domain";
	private final static String HIBERNATE_DIALECT="hibernate.dialect";
	private final static String HIBERNATE_SHOWSQL="hibernate.show_sql";
	private final static String HIBERNATE_FORMATSQL="hibernate.format_sql";
	
	private final static String HIBERNATE_CASHE_REGION_FACTORY_CLASS="hibernate.cache.region.factory_class";
	private final static String HIBERNATE_CACHE_PROVIDER_CLASS="hibernate.cache.provider_class";
	private final static String HIBERNATE_CACHE_USE_STRUCTURED_ENTRIES="hibernate.cache.use_structured_entries";
	private final static String HIBERNATE_CACHE_USE__QUERY_CACHE="hibernate.cache.use_query_cache";
	private final static String HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE="hibernate.cache.use_second_level_cache";
	private final static String HIBERNATE_HBM2DLL_AUTO="hibernate.hbm2ddl.auto";
	private final static String XML="org.hibernate.cache.ehcache.configurationResourceName";
	
	private final static String VIEW_PREFIX="/WEB-INF/view/";
	private final static String VIEW_SUFFIX=".jsp";

	@Bean
	public  DataSource dataSource() throws IllegalStateException, PropertyVetoException
	{
		
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		dataSource.setDriverClass(environment.getRequiredProperty(DRIVER_CLASS_NAME));
		dataSource.setJdbcUrl(environment.getRequiredProperty(JDBC_URL));
		dataSource.setUser(environment.getRequiredProperty(JDBC_USERNAME));
		dataSource.setPassword(environment.getRequiredProperty(JDBC_PASSWORD));
		dataSource.setAcquireIncrement(5);
		dataSource.setIdleConnectionTestPeriod(60);
		dataSource.setMaxPoolSize(100);
		dataSource.setMaxStatements(50);
		dataSource.setMinPoolSize(10);
		return dataSource;
	}
	
	@Bean
	public  LocalContainerEntityManagerFactoryBean entityManagerFactory() throws IllegalStateException, PropertyVetoException
	{
		final LocalContainerEntityManagerFactoryBean entityManagerFactoryBean=new LocalContainerEntityManagerFactoryBean();
		entityManagerFactoryBean.setDataSource(dataSource());
		entityManagerFactoryBean.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
		entityManagerFactoryBean.setPackagesToScan(MODEL_PACKAGE);
		entityManagerFactoryBean.setJpaProperties(jpaProperties());
		return entityManagerFactoryBean;
	}

	private Properties jpaProperties() 
	{
		
		 final Properties properties = new Properties();
	     properties.put(HIBERNATE_DIALECT, environment.getRequiredProperty(HIBERNATE_DIALECT));
	     properties.put(HIBERNATE_SHOWSQL, environment.getRequiredProperty(HIBERNATE_SHOWSQL));
	     properties.put(HIBERNATE_FORMATSQL, environment.getRequiredProperty(HIBERNATE_FORMATSQL));
	     
	     properties.put(HIBERNATE_CASHE_REGION_FACTORY_CLASS, environment.getRequiredProperty(HIBERNATE_CASHE_REGION_FACTORY_CLASS));
	     properties.put(HIBERNATE_CACHE_PROVIDER_CLASS, environment.getRequiredProperty(HIBERNATE_CACHE_PROVIDER_CLASS));
	     properties.put(HIBERNATE_CACHE_USE_STRUCTURED_ENTRIES, environment.getRequiredProperty(HIBERNATE_CACHE_USE_STRUCTURED_ENTRIES));
	     properties.put(HIBERNATE_CACHE_USE__QUERY_CACHE, environment.getRequiredProperty(HIBERNATE_CACHE_USE__QUERY_CACHE));
	     properties.put(HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE, environment.getRequiredProperty(HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
	     properties.put(HIBERNATE_HBM2DLL_AUTO, environment.getRequiredProperty(HIBERNATE_HBM2DLL_AUTO));
	     properties.put("hibernate.generate_statistics", environment.getRequiredProperty("hibernate.generate_statistics"));
	     properties.put(XML, environment.getRequiredProperty(XML));
	     return properties; 
	}
	
	@Bean
	public  JpaTransactionManager transactionManager() throws IllegalStateException, PropertyVetoException
	{
		final JpaTransactionManager transactionManager=new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(this.entityManagerFactory().getObject());
		return transactionManager;
	}
	@Bean
	 public UrlBasedViewResolver setupViewResolver() 
	 {
      final UrlBasedViewResolver resolver = new UrlBasedViewResolver();
      resolver.setPrefix(VIEW_PREFIX);
      resolver.setSuffix(VIEW_SUFFIX);
      resolver.setViewClass(JstlView.class);
      resolver.setOrder(1);
      return resolver;
	 }
	 /*@Bean  
	 public ResourceBundleViewResolver resourceBundleViewResolver() {  
		ResourceBundleViewResolver resolver = new ResourceBundleViewResolver();
		resolver.setBasename("fav-views");
		resolver.setOrder(0);
		return resolver;  
	   }*/
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/dynamicData/**").addResourceLocations("/dynamicData/","classpath:/dynamicData/");
	}
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer)
	{
		configurer.enable();
	}
	@Bean(name = "messageSource")
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:errorMessages.properties");
        messageSource.setCacheSeconds(5);
        return messageSource;
    }
	@Override
    public Validator getValidator() {
        LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
        validator.setValidationMessageSource(messageSource());
        return validator;
    }
	@Bean
	public MultipartResolver multipartResolver() {
	    org.springframework.web.multipart.commons.CommonsMultipartResolver multipartResolver = new org.springframework.web.multipart.commons.CommonsMultipartResolver();
	    multipartResolver.setMaxUploadSize(1000000);
	    return multipartResolver;
	}
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {
	    return new PropertySourcesPlaceholderConfigurer();
	}
	
}
