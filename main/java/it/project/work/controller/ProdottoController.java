package it.project.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.Prodotto;
import it.project.work.service.ProdottoService;

@Controller
@RequestMapping("/prodotto")
public class ProdottoController {
	@Autowired
 ProdottoService prodService;
	
	@GetMapping
	@RequestMapping("/prodotti")
	public String getPage() {
		
		Prodotto prodotto = new Prodotto();
		prodotto.setPrezzo(2000);
		prodotto.setDescrizione("NUOTO SINCRONIZZATO");
		prodService.addProdotto(prodotto);
		return null;
	}
 
}
