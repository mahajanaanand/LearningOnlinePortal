package fss.webportal.lo.controller;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fss.webportal.lo.classes.JSONResponse;
import fss.webportal.lo.domain.MemberInfo;
import fss.webportal.lo.domain.MemberLogin;
import fss.webportal.lo.formWrapper.FormRegistration;
import fss.webportal.lo.service.ApplicationService;


@Controller
@RequestMapping(value="/betaVersion/111111/")
public class ApplicationController{

	/*private final static String UNSUCCESS="UNSUCCESS";
	private final static String SUCCESS="SUCCESS";
	private final static String REQ_GP_REGISTER_TRYONCE="/registerTRYONCE";
	private final static String VIEW_REGISTER_TRYONCE="registerTRYONCE";
	private final static String REDIRECT_403="redirect:/static/403";*/
	
	
	
	@Value("${logout}")
	private String MESSAGE_LOGOUT;
	@Value("${failedLogin}")
	private String FAILED_LOGIN;
	@Value("${sellerRegisterException}")
	private String SELLER_REGISTER_EX;
	@Value("${no_data_found}")
	private String NO_DATA_FOUND;
	
	private final ApplicationService applicationService;
	
	@Autowired	
	public ApplicationController(final ApplicationService applicationService) {super();this.applicationService = applicationService;}
	
	@RequestMapping(value="/redirectHome")
	public ModelAndView redirectHome(){
		
		return new ModelAndView("111111/home","memberInfo",new MemberInfo());
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
	
	
	@RequestMapping(value="/getJsonTest", method= RequestMethod.GET)
	public @ResponseBody JSONResponse getJsonTest(){
		JSONResponse jsonResponse=new JSONResponse(); 
		jsonResponse.setStatus("SUCCESS");
		List<Object> list=new ArrayList<Object>();
		List<String> rowList=new ArrayList<String>();
		rowList.add("BE");
		rowList.add("JAVA");
		rowList.add("jan to dec");
		rowList.add("1");
		list.add(rowList);
		List<String> rowList1=new ArrayList<String>();
		rowList1.add("CA");
		rowList1.add("ACOUNT");
		rowList1.add("aug to sep");
		rowList1.add("0");
		list.add(rowList1);
		
		jsonResponse.setResult(list);
		System.out.println("AJAX SUCCESS");
		return jsonResponse;
	}
	

	@RequestMapping(value = "/preAccessLogin", method = RequestMethod.GET)
	public ModelAndView loginTRYONCE(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,HttpServletRequest request) {		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}
		if (logout != null) {
			model.addObject("msg",MESSAGE_LOGOUT);
		}
		model.addObject("memberLogin",new MemberLogin());
		model.setViewName("111111/preAccessLogin");
		return model;

	}
	@RequestMapping(value="/registerStepOne")
	public ModelAndView registerStepOne( @ModelAttribute("registerStepOne")MemberInfo memberInfo)
	{
		
		    MemberInfo memberInfoDb=applicationService.saveMemberPersonalInfo(memberInfo);
		    FormRegistration formRegistration=new FormRegistration();
		   	formRegistration.setMemberInfo(memberInfoDb);
			return new ModelAndView("111111/memberProfile","formRegistration", formRegistration);	
			
	}
	private String getErrorMessage(HttpServletRequest request, String key) 
	{
		Exception exception = (Exception) request.getSession().getAttribute(key);
		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = FAILED_LOGIN;
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else 	{
			error = FAILED_LOGIN;
		}
		return error;
	}
	/*private String getDataForValidation(final DMSellerRegistration sellerRegistration, final DMSellerLogin sellerLogin, final DMSellerProfile sellerProfile)	{
		String result=UNSUCCESS;
		try{
			sellerLogin.setUsername(sellerProfile.getContactPersonEmail());
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(new Date());
			StringBuffer setPassword=new StringBuffer();
			setPassword.append(calendar.get(Calendar.DATE)).append(calendar.get(Calendar.HOUR_OF_DAY)).append(calendar.get(Calendar.MINUTE)).append(calendar.get(Calendar.SECOND)).append(randInt());
			sellerLogin.setPassword(setPassword.toString());
			result=SUCCESS;
		}
		catch(Exception exception){ result=getStackTrace(exception);}
		return result;
	}*/
	@SuppressWarnings("unused")
	private int randInt() {
	    Random rand = new Random();
	    int randomNum = rand.nextInt(20);
	    return randomNum;
	}

	public static String getStackTrace(final Throwable throwable) 
	{
	     final StringWriter sw = new StringWriter();
	     final PrintWriter pw = new PrintWriter(sw, true);
	     throwable.printStackTrace(pw);
	     return sw.getBuffer().toString();
	}
}
