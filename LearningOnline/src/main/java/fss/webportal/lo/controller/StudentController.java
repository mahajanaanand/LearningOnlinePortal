package fss.webportal.lo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/000211/")
public class StudentController {

	@RequestMapping(value="/dashboard")
	public String dashboard(){
		return "000211/dashboard";
	}
	
	@RequestMapping(value="/generateTest")
	public String generateTest(){
		return "000211/generateTest";
	}
	
	@RequestMapping(value="/scoreCard")
	public String scoreCard(){
		return "000211/scoreCard";
	}
	
	@RequestMapping(value="/testList")
	public String testList(){
		return "000211/testList";
	}
	
	@RequestMapping(value="/wrongAns")
	public String wrongAns(){
		return "000211/wrongAns";
	}
}
