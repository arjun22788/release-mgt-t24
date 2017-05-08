package com.app.release;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

public class T24DevHelper {
	//static String devLocation = "E:\\My projects\\bootstrap-login-forms";

	public static List<File> listFiles(String directoryName) {
		File directory = new File(directoryName);

		List<File> resultList = new ArrayList<File>();

		// get all the files from a directory
		File[] fList = directory.listFiles();
		resultList.addAll(Arrays.asList(fList));
		for (File file : fList) {
			if (file.isFile()) {
				// System.out.println(file.getAbsolutePath());
			} else if (file.isDirectory()) {
				resultList.addAll(listFiles(file.getAbsolutePath()));
			}
		}
		// System.out.println(fList);
		return resultList;
	}

	public static String getPropertyFromFile(String key) {
		Properties prop = new Properties();
		InputStream input = null;

		try {
			input = new FileInputStream("application.properties");
			prop.load(input);
		} catch (Exception e) {

		}
		System.out.println(prop.getProperty(key));
		return (String) prop.getProperty(key);
	}
}
