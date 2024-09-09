package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.Entity.Student;

@Controller
public class FormControl {
	@RequestMapping("/form")
	public String form() {
		System.out.println("Controlling Complex Form");
		return "Form";
	}
	
	//through the @ModelAttribute annotation it will autobind the Student Class Properties.
	@RequestMapping(path="/HandleForm",method=RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student,BindingResult results) {
		//BindingResult is an interface extends Errors..
		if(results.hasErrors()) {
			
			return "Form";
		}
		
		 System.out.println(student);
		 System.out.println(student.getAddress());
		 
		return "success";
	}	
	
	
	
}
