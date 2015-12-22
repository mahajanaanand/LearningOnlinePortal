package fss.webportal.lo.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping(value="/betaVersion/111112/")
@PreAuthorize("hasAnyRole('ADMIN','EXPERT','STUDENT')")
public class QATerminalController {

	@RequestMapping(value="/askAQuestion")
	public String askAQuestion(){
		return "111112/askAQuestion";
	}
	
	@RequestMapping(value="/qaHome")
	public String qaHome(){
		return "111112/qaHome";
	}
	
	@RequestMapping(value="/questionDetail")
	public String questionDetail(){
		return "111112/questionDetail";
	}
	
	@RequestMapping(value="/unansweredQuestion")
	public String unansweredQuestion(){
		return "111112/unansweredQuestion";
	}
}
