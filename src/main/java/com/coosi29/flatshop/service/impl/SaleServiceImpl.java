package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.SaleDao;
import com.coosi29.flatshop.entity.Sale;
import com.coosi29.flatshop.model.SaleDTO;
import com.coosi29.flatshop.service.SaleService;

@Service
@Transactional
public class SaleServiceImpl implements SaleService {

	@Autowired
	private SaleDao saleDao;
	
	@Override
	public List<SaleDTO> findAll() {
		List<Sale> sales = saleDao.findAll();
		List<SaleDTO> saleDTOs = new ArrayList<>();
		for (Sale sale : sales) {
			SaleDTO saleDTO = new SaleDTO();
			saleDTO.setSaleId(sale.getSaleId());
			saleDTO.setSalePercent(sale.getSalePercent());
			saleDTOs.add(saleDTO);
		}
		return saleDTOs;
	}

}
