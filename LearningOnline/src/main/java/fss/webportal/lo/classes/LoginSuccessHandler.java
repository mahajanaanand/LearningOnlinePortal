package fss.webportal.lo.classes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.SavedRequest;



public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	public void onAuthenticationSuccess(HttpServletRequest request,	HttpServletResponse response, Authentication authentication) throws IOException,ServletException {
		HttpSession session = request.getSession();
		//BusinessHeaderInfo.setSellerId(UserController.getCurrentUserId());
		SavedRequest savedReq = (SavedRequest) session.getAttribute("SPRING_SECURITY_SAVED_REQUEST");
		String requestedUrl=null;
		if (savedReq == null) {
		    requestedUrl="/sellerProtection/1000OES_dashboard";
		}
		else {
			requestedUrl=savedReq.getRedirectUrl();
		}
		response.sendRedirect("/SellerPortal/requestHeaderData?requestedUrl="+requestedUrl);
	}

}
