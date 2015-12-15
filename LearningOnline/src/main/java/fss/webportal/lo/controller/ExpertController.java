package fss.webportal.lo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/002011/")
public class ExpertController {

	@RequestMapping(value="/dashboard")
	public String dashboard(){
		return "002011/dashboard";
	}
	
	@RequestMapping(value="/expertEnquiry")
	public String expertEnquiry(){
		return "002011/expertEnquiry";
	}
	
	@RequestMapping(value="/generateTest")
	public String generateTest(){
		return "002011/generateTest";
	}
	
	
	@RequestMapping(value="/qFeedUpload")
	public String qFeedUpload(){
		return "002011/qFeedUpload";
	}
	
	@RequestMapping(value="/testList")
	public String testList(){
		return "002011/testList";
	}
}
