package it.project.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import it.project.work.model.Ordine;
import it.project.work.service.OrdineService;
import it.project.work.util.ConvertitoreData;

@Controller
@RequestMapping("/ordini")
public class OrdineController {
	@Autowired
 private OrdineService ordineService;
 
 @GetMapping
 @ResponseBody
	public String getPage() {
	 Ordine ordine  = new Ordine();
	  
	 ordine.setDataAcquisto(ConvertitoreData.formatData("2022-05-15"));
	 ordine.setNomeCliente("Tator o taratuf");
     ordine.setTotaleOrdine(2000);
     ordineService.createOrdini(ordine);
     return null;
		
	}
}
