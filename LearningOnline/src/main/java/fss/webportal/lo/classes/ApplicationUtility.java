package fss.webportal.lo.classes;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class ApplicationUtility {

	public static int requestManualId(int suffix)	{
		StringBuffer manualId=new StringBuffer();
		try{
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(new Date());
			manualId.append(calendar.get(Calendar.MONTH)).append(calendar.get(Calendar.YEAR)).append(suffix);
		}
		catch(Exception exception){ 
			
		}
		return Integer.parseInt(manualId.toString());
	}
	public static int requestRandomNumber(int range) {
	    Random rand = new Random();
	    int randomNum = rand.nextInt(range);
	    return randomNum;
	}

}
