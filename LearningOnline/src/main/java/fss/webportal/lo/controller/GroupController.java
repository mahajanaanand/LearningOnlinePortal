package fss.webportal.lo.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/betaVersion/111121/")
@PreAuthorize("hasAnyRole('ADMIN','EXPERT','STUDENT')")
public class GroupController {

	@RequestMapping(value="/createGroup")
	public String createGroup(){
		return "111121/createGroup";
	}
	
	@RequestMapping(value="/findAvailebleGroup")
	public String findAvailebleGroup(){
		return "111121/findAvailebleGroup";
	}
	
	@RequestMapping(value="/groupHomeFront")
	public String groupHomeFront(){
		return "111121/groupHomeFront";
	}
	
	@RequestMapping(value="/groupSelfFront")
	public String groupSelfFront(){
		return "111121/groupSelfFront";
	}
	
	@RequestMapping(value="/publicGroupsHome")
	public String publicGroupsHome(){
		return "111121/publicGroupsHome";
	}
	
}
