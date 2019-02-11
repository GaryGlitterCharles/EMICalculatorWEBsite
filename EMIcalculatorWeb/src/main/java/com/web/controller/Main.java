package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.domain.Fields;
import com.web.service.Calculation;

@Controller
public class Main
{
	@Autowired
	private Calculation calculation;
	
	
	@GetMapping("/")
	public String getValue(Model model)
	{
		model.addAttribute("fields", new Fields());
		return "test";
	}

	@PostMapping("/")
	public String name(@RequestParam("loanAmount") Double loanAmount,
			@RequestParam("rateOfinterest") Double rateOfinterest, @RequestParam("tenure") Double tenure,
			@RequestParam("numberOfInstalment") Double numberOfInstalment,Model model)
	{
		Double rateOfInPercentage = rateOfinterest/100;
		calculation.calculatePrincipal(loanAmount, rateOfInPercentage, tenure, numberOfInstalment,model);
		model.addAttribute("print", calculation.results);
		return "print";
	}
}
