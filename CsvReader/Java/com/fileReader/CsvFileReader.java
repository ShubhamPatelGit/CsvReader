package com.fileReader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import com.pojo.Student;

public class CsvFileReader {
	
	public ArrayList<String> getFiles(String path) {
		ArrayList<String> allFiles = new ArrayList<String>();
		
		File dir = new File(path);
		try {
			for (File file : dir.listFiles()) {
			    allFiles.add(file.getName());
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return allFiles;
	}
	
	public ArrayList<Student> getData(String path) throws Exception {
		ArrayList<Student> students = new ArrayList<Student>();
		BufferedReader bf = new BufferedReader(new FileReader(path));
		String line = bf.readLine();
		
		while(line != null) {
			String data[]= line.split(",");
			Student s = new Student();
			s.setName(data[0]);
			s.setRoll(data[1]);
			s.setEmail(data[2]);
			students.add(s);
			
			line = bf.readLine();
		}
		bf.close();
		
		return students;
	}

}
