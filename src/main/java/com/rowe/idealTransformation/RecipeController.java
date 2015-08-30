package com.rowe.idealTransformation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;

@Controller
public class RecipeController implements ServletContextAware{

	private ServletContext servletContext;

	@RequestMapping("/recipes/{recipeName}.html")
	public String recipe(@PathVariable("recipeName") String recipeName){
		return "recipes/" + recipeName;
	}
	
	@RequestMapping("/recipes.html")
	public void recipes(Map<String, Object> modelMap){
		
		List<Recipe> recipes = new ArrayList<RecipeController.Recipe>();
		@SuppressWarnings("unchecked")
		Set<String> resourcePaths = servletContext.getResourcePaths("/WEB-INF/jsp/recipes");
		for(String path:resourcePaths){
			if(path.endsWith(".jsp")){
				String fileName = StringUtils.substringBeforeLast(StringUtils.substringAfterLast(path, "/"), ".");
				recipes.add(new Recipe(
					StringUtils.replace(fileName, "_", " "), 
					fileName + ".html", 
					fileName + ".jpg"));
			}
		}
		Collections.sort(recipes);
		modelMap.put("recipes", recipes);
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
	
	public static class Recipe implements Comparable<Recipe>{
		private String title;
		private String path;
		private String img;
		public Recipe(String title, String path, String img) {
			super();
			this.title = title;
			this.path = path;
			this.img = img;
		}
		@Override
		public int compareTo(Recipe o) {
			return title.compareTo(o.title);
		}
		public String getTitle() {
			return title;
		}
		public String getTitleLowerCase(){
			return StringUtils.lowerCase(title);
		}
		public String getPath() {
			return path;
		}
		public String getImg() {
			return img;
		}
	}
}
