package com.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fileReader.CsvFileReader;
import com.pojo.Student;

@Controller
public class ResultController {
	
	@RequestMapping("/result")
	public String result(HttpServletRequest req, Model m) throws Exception {
		String doc = req.getParameter("doc");
		String sName = req.getParameter("sName");
		String sRoll = req.getParameter("sRoll");
		String sEmail = req.getParameter("sEmail");
		
		ArrayList<Student> students = new CsvFileReader().getData(new Student().getPath()+"/"+doc);
		
		if(sName != null)
			m.addAttribute("a",1);
		if(sRoll != null)
			m.addAttribute("b",1);
		if(sEmail != null)
			m.addAttribute("c",1);
		m.addAttribute("students", students);
		m.addAttribute("doc", doc);
		
		return "resultPage";			//Result Page
	}
}