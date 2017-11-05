package util;

import java.util.ResourceBundle;

public class PropertiesUtil {

	private static ResourceBundle bundle= ResourceBundle.getBundle(Constants.SYSTEM.PROPERTIES_FILE);
	
	public static ResourceBundle getBundle() {
		return bundle;
	}


}