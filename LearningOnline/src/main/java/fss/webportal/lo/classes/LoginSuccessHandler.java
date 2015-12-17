package fss.webportal.lo.classes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.SavedRequest;

public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	@Value("${logout}")
	private String MESSAGE_LOGOUT;
	
	public void onAuthenticationSuccess(HttpServletRequest request,	HttpServletResponse response, Authentication authentication) throws IOException,ServletException {
		HttpSession session = request.getSession();
		//BusinessHeaderInfo.setSellerId(UserController.getCurrentUserId());
		UserPrincipal.requestRedirectBasedOnRole();
		System.out.println("MESSAGE_LOGOUT : "+MESSAGE_LOGOUT);
		SavedRequest savedReq = (SavedRequest) session.getAttribute("SPRING_SECURITY_SAVED_REQUEST");
		String requestedUrl=null;
		if (savedReq == null) {
		    
		}
		else {
			requestedUrl=savedReq.getRedirectUrl();
		}
		response.sendRedirect(UserPrincipal.requestRedirectBasedOnRole());
	}

}
