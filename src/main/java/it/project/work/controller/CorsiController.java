package it.project.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.project.work.model.Prodotto;
import it.project.work.service.ProdottoService;

@Controller
@RequestMapping("/corsi")
public class CorsiController {
	
	@Autowired
	private ProdottoService prodService;
	
	@GetMapping
	public String getPage(Model model) {
		
		model.addAttribute("corsi");
		
		List<Prodotto> corsi;
		
		corsi = prodService.getCorsi();
		
		for(int i = 0; i < corsi.size();i++) {
			
			corsi.set(i,prodService.checkProdotto(corsi.get(i))); 
			
			
		}
		
		model.addAttribute("corsi", corsi);
		
		return "corsi";
		
	}
	
	@GetMapping("/viewcorso")
	public String viewCorso(@RequestParam("id") String id, Model model) {
		
		Prodotto p = prodService.getCorsi()
				.stream()
				.filter(x -> x.getId_prodotto()==Integer.valueOf(id)).findAny().get();
		
		model.addAttribute("corso", p);
		
		
		return "corso";
		
		
	}

}
