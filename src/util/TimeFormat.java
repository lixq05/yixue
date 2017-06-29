package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeFormat {
	public static void main(String[] args) throws ParseException {    
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:m:s");    
//        Date date = format.parse("2017-05-04 9:52:35");   
//        Date date1  = new Date();
//        System.out.print(date1);
        System.out.println(getFriendlytime(new Date()));    
    }    

	public static String getFriendlytime(Date d){ 
    	SimpleDateFormat sdf = (SimpleDateFormat) DateFormat.getDateTimeInstance();    
        long delta = (new Date().getTime()-d.getTime())/1000; 
        if(delta<=0)return sdf.format(d);
        if(delta/(60*60*24*365) > 0) return delta/(60*60*24*365) +"年前";  
        if(delta/(60*60*24*30) > 0) return delta/(60*60*24*30) +"个月前";  
        if(delta/(60*60*24*7) > 0)return delta/(60*60*24*7) +"周前";  
        if(delta/(60*60*24) > 0) return delta/(60*60*24) +"天前";  
        if(delta/(60*60) > 0)return delta/(60*60) +"小时前";  
        if(delta/(60) > 0)return delta/(60) +"分钟前";  
        return "刚刚";  
	
    }  
}
