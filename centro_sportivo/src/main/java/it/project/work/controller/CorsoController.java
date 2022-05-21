package it.project.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Area;
import it.project.work.model.Corso;
import it.project.work.service.CorsoService;

@Controller
@RequestMapping("/corso")
public class CorsoController {
	@Autowired
	CorsoService userService;
	
	public String creaCorso() {
		Corso c= new Corso();
		c.setDescrizione("trotta");
		c.setNome("cavallo");
		c.setPrezzo(50);
		Area a  =new Area();
		a.setDescrizione("questa è un'area");
		c.setArea(List.of(a));
	   userService.createCorso(c);
		return null;
		
	}

}
