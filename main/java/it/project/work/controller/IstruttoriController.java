package it.project.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Istruttore;
import it.project.work.service.IstruttoreService;

@Controller
@RequestMapping("/istruttori")
public class IstruttoriController {
	@Autowired
	IstruttoreService istService;
		
	@GetMapping
	public String getPage(Model model) {
		List<Istruttore> istruttori=istService.checkIstruttori(istService.getIstruttori()) ;
		model.addAttribute(istruttori);
		return "istruttori";
	}
}
