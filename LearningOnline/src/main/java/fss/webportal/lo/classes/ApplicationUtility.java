package fss.webportal.lo.classes;

public class ApplicationUtility {

	private static String requestApplicationRoot;

	public static String getRequestApplicationRoot() {
		return requestApplicationRoot;
	}
	
	public static void setRequestApplicationRoot(String requestApplicationRoot) {
		ApplicationUtility.requestApplicationRoot = requestApplicationRoot;
	}
}
