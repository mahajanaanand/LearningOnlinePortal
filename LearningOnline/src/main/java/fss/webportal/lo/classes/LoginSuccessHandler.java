<<<<<<< HEAD

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
=======
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
		System.out.println("FIRST");
		if (session != null) {
			System.out.println("SESSION IF");
			System.out.println("ACTION LOGIN: "+UserPrincipal.getMenuAction());
			SavedRequest savedReq = (SavedRequest) session.getAttribute("SPRING_SECURITY_SAVED_REQUEST");
			if(savedReq!=null){
				System.out.println("SAVED IF");
				System.out.println("ACTION LOGIN: "+UserPrincipal.getMenuAction());
				response.sendRedirect(savedReq.getRedirectUrl());
			}else{
				System.out.println("SAVED ELSE");
				System.out.println("ACTION LOGIN: "+UserPrincipal.getMenuAction());
				System.out.println("APP ROOT : "+ApplicationUtility.getRequestApplicationRoot());
				response.sendRedirect(ApplicationUtility.getRequestApplicationRoot()+""+UserPrincipal.requestRedirectBasedOnRole());
			}
		}else{
			System.out.println("SESSION ELSE");
			System.out.println("ACTION LOGIN: "+UserPrincipal.getMenuAction());
>>>>>>> refs/remotes/origin/23122015_1_Anand
			response.sendRedirect(ApplicationUtility.getRequestApplicationRoot()+"/111111/preAccessLogin");
		}
	}
}
