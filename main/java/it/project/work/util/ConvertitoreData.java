package it.project.work.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ConvertitoreData {
	public  static Date formatData(String data) {
		
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 Date dataOrdine  =null;

		 try {
		dataOrdine=	 format.parse(data);
		 } catch(Exception e) {
			 e.printStackTrace();
			 return null;
		 }
		 return dataOrdine;
		 
	}
}
