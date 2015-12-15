package fss.webportal.lo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/222200/")
public class AllSecureController {

	@RequestMapping(value="/authenticationManager")
	public String authenticationManager(){
		return "222200/authenticationManager";
	}
	
	@RequestMapping(value="/notification")
	public String notification(){
		return "222200/notification";
	}
	
}
