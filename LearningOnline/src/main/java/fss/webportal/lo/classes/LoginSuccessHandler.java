
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
	
	public void onAuthenticationSuccess(HttpServletRequest request,	HttpServletResponse response, Authentication authentication) throws IOException,ServletException {
		HttpSession session = request.getSession();
		System.out.println("FIRST");
		if (session != null) {
			System.out.println("SECOND");
			SavedRequest savedReq = (SavedRequest) session.getAttribute("SPRING_SECURITY_SAVED_REQUEST");
			if(savedReq!=null){
				System.out.println("THIRD");
				response.sendRedirect(savedReq.getRedirectUrl());
			}else{
				System.out.println("FOUTH");
				System.out.println("Application Root"+ApplicationUtility.getRequestApplicationRoot());
				response.sendRedirect(ApplicationUtility.getRequestApplicationRoot()+""+UserPrincipal.requestRedirectBasedOnRole());
			}
		}else{
			System.out.println("FIVE");
			response.sendRedirect(ApplicationUtility.getRequestApplicationRoot()+"/111111/preAccessLogin");
		}
	}
}
