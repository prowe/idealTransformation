package com.rowe.idealTransformation;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class Application extends WebMvcConfigurationSupport {
	
	@Override
	protected void addResourceHandlers(ResourceHandlerRegistry registry) {
		super.addResourceHandlers(registry);
		registry.addResourceHandler("/resources/**")
			.addResourceLocations("/resources/");
		
		registry.addResourceHandler("/recipes/*.jpg")
			.addResourceLocations("/WEB-INF/jsp/recipes/");
	}
	
	@Override
	protected void addViewControllers(ViewControllerRegistry registry) {
		super.addViewControllers(registry);
		registry.addViewController("/").setViewName("index");
		registry.addViewController("**/*.html");
	}
	
	@Override
	protected void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/jsp/", ".jsp");
	}

	@Bean
	public DefaultController defaultController(){
		return new DefaultController();
	}
	@Bean
	public ContactUsController contactUsController(){
		return new ContactUsController();
	}
	@Bean
	public RecipeController recipeController(){
		return new RecipeController();
	}

	@Override
	protected LocalValidatorFactoryBean getValidator() {
		return new LocalValidatorFactoryBean();
	}
	
	
}
