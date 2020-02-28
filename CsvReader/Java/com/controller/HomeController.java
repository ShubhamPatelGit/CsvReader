package com.controller;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fileReader.CsvFileReader;
import com.pojo.Student;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showPage(Model m) {
		ArrayList<String> allFiles = new CsvFileReader().getFiles(new Student().getPath());
		m.addAttribute("allFiles", allFiles);
		
		return "index";				//Home Page name
	}
}