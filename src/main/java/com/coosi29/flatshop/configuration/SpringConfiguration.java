package com.coosi29.flatshop.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
@PropertySource(value = "classpath:database.properties")
@EnableTransactionManagement
public class SpringConfiguration {

	@Autowired
	Environment environment;

	@Bean
	public static PropertySourcesPlaceholderConfigurer placeholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(environment.getProperty("driver"));
		dataSource.setUrl(environment.getProperty("url"));
		dataSource.setUsername("root");
		dataSource.setPassword("123456");

		return dataSource;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactoryBean() {
		LocalSessionFactoryBean bean = new LocalSessionFactoryBean();
		bean.setDataSource(dataSource());
		bean.setPackagesToScan("com.coosi29.flatshop.entity");

		Properties hibernateProperties = new Properties();
		hibernateProperties.put("hibernate.dialect", environment.getProperty("hibernate.dialect"));
		hibernateProperties.put("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));

		bean.setHibernateProperties(hibernateProperties);
		return bean;
	}

	@Bean(name = "transactionManager")
	@Autowired
	public HibernateTransactionManager hibernateTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
		hibernateTransactionManager.setSessionFactory(sessionFactory);
		return hibernateTransactionManager;
	}

	@Bean
	public JavaMailSender getJavaMailSender() {
		JavaMailSenderImpl mailSenderImpl = new JavaMailSenderImpl();

		mailSenderImpl.setHost("smtp.gmail.com");
		mailSenderImpl.setPort(587);
		mailSenderImpl.setProtocol("smtp");
		mailSenderImpl.setUsername("coosi29@gmail.com");
		mailSenderImpl.setPassword("aufnorflabhucruk");

		Properties javaMailProperties = new Properties();
		javaMailProperties.put("mail.smtp.starttls.enable", "true");
		javaMailProperties.put("mail.smtp.auth", "true");
		javaMailProperties.put("mail.debug", "true");
		javaMailProperties.put("mail.smtp.host", "smtp.gmail.com");
		javaMailProperties.put("mail.smtp.port", "587");

		mailSenderImpl.setJavaMailProperties(javaMailProperties);

		return mailSenderImpl;
	}
	
	@Bean(name = "multipartResolver")
	public MultipartResolver commomMultipartResolver() {
		CommonsMultipartResolver commonMultipartResolver = new CommonsMultipartResolver();
		commonMultipartResolver.setMaxUploadSize(-1);
		return commonMultipartResolver;
	}

//	@Bean
//	public JdbcTemplate jdbcTemplate() {
//		return new JdbcTemplate(dataSource());
//	}
}
