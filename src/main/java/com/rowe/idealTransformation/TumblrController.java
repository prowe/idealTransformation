package com.rowe.idealTransformation;

import java.util.Map;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tumblr.jumblr.JumblrClient;

@Controller
public class TumblrController implements InitializingBean {
	private static final String BLOG_NAME = "paulkeeblerrowe";
	private static String API_KEY = "Q735l2cPoDwhDCWXMZI9VlmVMSWFCtBgz33oyU1THMTeplLwUX";
	private static String SECRET = "Ph964nYVLTnKXW5RNcT6SgxUAmWdMfYC7V4Ut0lFYfkMnhAtGl";
	private JumblrClient client;

	@RequestMapping("blog.*")
	public void blog(Map<String, Object> model){
		model.put("posts", client.blogPosts(BLOG_NAME));
	}
	
	@Override
	public void afterPropertiesSet() throws Exception {
		client = new JumblrClient(API_KEY, SECRET);
	}
}
