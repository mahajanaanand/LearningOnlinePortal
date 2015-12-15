package fss.webportal.lo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/111111/")
public class ApplicationController{

	@RequestMapping(value="/redirectHome")
	public String redirectHome(){
		return "111111/home";
	}
	@RequestMapping(value="/redirectCategory")
	public String redirectCategory(){
		return "111111/category";
	}
	@RequestMapping(value="/redirectGroupHome")
	public String redirectGroupHome(){
		return "111121/groupHomePage";
	}
	@RequestMapping(value="/redirectQATerminal")
	public String redirectQATerminal(){
		return "111112/qaHome";
	}
	@RequestMapping(value="/preAccessLogin")
	public String preAccessLogin(){
		return "111111/preAccessLogin";
	}
	@RequestMapping(value="/faqDetail")
	public String faqDetail(){
		return "111111/faqDetail";
	}
	@RequestMapping(value="/faqMain")
	public String faqMain(){
		return "111111/faqMain";
	}
	@RequestMapping(value="/loginHelp")
	public String loginHelp(){
		return "111111/loginHelp";
	}
	@RequestMapping(value="/memberProfile")
	public String memberProfile(){
		return "111111/memberProfile";
	}
}
