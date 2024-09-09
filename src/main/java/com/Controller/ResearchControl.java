package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ResearchControl {

	@RequestMapping("/home")
	public String show() {
		System.out.println("show");
		return "home";
	}

	@RequestMapping(path="/searching",method=RequestMethod.GET)
	public RedirectView view(@RequestParam("data") String text) {

		String url = "https://www.google.com/search?q=" + text;
		RedirectView rd = new RedirectView();
		rd.setUrl(url);
		return rd;
	}
}
