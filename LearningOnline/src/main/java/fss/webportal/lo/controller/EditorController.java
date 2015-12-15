package fss.webportal.lo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/020011/")
public class EditorController {

	@RequestMapping(value="/addCategory")
	public String addCategory(){
		return "020011/addCategory";
	}
	
	@RequestMapping(value="/dashboard")
	public String dashboard(){
		return "020011/dashboard";
	}
	
	@RequestMapping(value="/editorPanel")
	public String editorPanel(){
		return "020011/editorPanel";
	}
	
	@RequestMapping(value="/questionFeed")
	public String questionFeed(){
		return "020011/questionFeed";
	}
	
	@RequestMapping(value="/questionRevisionPenal")
	public String questionRevisionPenal(){
		return "020011/questionRevisionPenal";
	}

}
