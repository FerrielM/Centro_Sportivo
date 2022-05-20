package it.project.work.controller;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.project.work.model.TipologiaAbbonamento;
import it.project.work.service.TipologiaAbbonamentoService;

@Controller
@RequestMapping("/abbonamenti")
public class AbbonamentoController {
	@Autowired
TipologiaAbbonamentoService tpService;
	@GetMapping
	public String getAbbonamenti() {
		return tpService.getAbbonamenti().stream().map(TipologiaAbbonamento::getDescrizione).collect(Collectors.joining(" "));
	}
}
