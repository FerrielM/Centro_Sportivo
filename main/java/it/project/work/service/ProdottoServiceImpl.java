package it.project.work.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.project.work.dao.ProdottoDao;
import it.project.work.model.Prodotto;
@Service
public class ProdottoServiceImpl implements ProdottoService {
  @Autowired
	private ProdottoDao prodDao;
	@Override
	@Transactional
	public void addProdotto(Prodotto prodotto) {
     		prodDao.addProdotto(prodotto);
	}

	@Override
	@Transactional

	public void updateProdotto(Prodotto prodotto) {
     prodDao.updateProdotto(prodotto);		
	}

	@Override
	@Transactional

	public void deleteProdotto(Prodotto prodotto) {
    prodDao.deleteProdotto(prodotto);		
	}

	@Override
	public Prodotto getProdottoById(int id) {
		return prodDao.getProdottoById(id);
	}

	@Override
	public List<Prodotto> getProdotti() {
		return prodDao.getProdotti();
	}

	@Override
	public List<Prodotto> getCorsi() {
		return getProdottoSpecifico(2);
	}

	@Override
	public List<Prodotto> getAbbonamenti() {
		 return getProdottoSpecifico(1);
	}
	private List<Prodotto>getProdottoSpecifico(int id){
	return	 prodDao.getProdotti().stream().filter(x->x.getCat().getId_cat()==id).collect(Collectors.toList());
	}

	@Override
	public Prodotto checkProdotto(Prodotto prodotto) {
	Prodotto p = prodotto;
	if(p.getDescrizione()==null)
		p.setDescrizione("");
	if(p.getImg()==null)
		p.setImg("");
	 return p;
	}
}
