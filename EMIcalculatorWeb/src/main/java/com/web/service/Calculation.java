package com.web.service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.web.domain.Result;

@Service
public class Calculation
{

	static double emi = 0.0;

	static boolean emiFlag = true;

	public  List<Result> results = new ArrayList<>();
	
	public static List<String> emiRecords = new ArrayList<>();

	public double calculatePrincipal(double loanAmount, double rateOfInPercentage, Double tenure,
			Double numOfInstalments, Model model)
	{
		for (int i = 0; i < numOfInstalments; i++)
		{

			loanAmount = calculateEMI(i, loanAmount, rateOfInPercentage, tenure, numOfInstalments, model);

		}
		return loanAmount;

	}

	public double calculateEMI(int count, double loanAmount, double rateOfInPercentage, Double tenure,
			Double numOfInstalments, Model model)
	{
		double numerator = loanAmount * (rateOfInPercentage / numOfInstalments);
		double deno1 = 1 + (rateOfInPercentage / numOfInstalments);
		double deno2 = 1 / (Math.pow(deno1, tenure));

		double deominator = 1 - deno2;
		if (emiFlag)
		{
			emi = numerator / deominator;
			emiFlag = false;
		}

		double Pn = emi - numerator;
		double Opn = loanAmount - Pn;
		DecimalFormat formatter = new DecimalFormat("0.00");
		DecimalFormat formatter1 = new DecimalFormat("0");

		String v = ("Serial number: " + formatter1.format(count) + ", Loan Amount: " + formatter.format(loanAmount)
				+ ", Interest: " + formatter.format(numerator) + ", Principal: " + formatter.format(Pn) + ", EMI: "
				+ formatter.format(emi));
		emiRecords.add(v);
	
		 formatter.format(loanAmount);
	
		Result result = new Result();
		result.setOutsandingPrincipal(Double.parseDouble(formatter.format(loanAmount)));
		result.setCount(count);
		result.setEmi(Double.parseDouble(formatter.format(emi)));
		result.setInterst(Double.parseDouble(formatter.format(numerator)));
		result.setPrincipal(Double.parseDouble(formatter.format(Pn)));
	
		
		results.add(result);
		
		//model.addAttribute("print",results);
//		System.out.format("%-15s %-15s %-15s %-15s %-15s\n", formatter1.format(count), formatter.format(loanAmount),
//				formatter.format(numerator), formatter.format(Pn), formatter.format(emi));
		return Opn;
	}
}
