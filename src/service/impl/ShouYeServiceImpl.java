package service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ShouYeDao;

import entity.Merchandise;
import service.ShouYeService;
@Service
public class ShouYeServiceImpl implements ShouYeService {
	@Autowired
	ShouYeDao sDao;

	@Override
	public List<Merchandise> search() {
		return sDao.search();
	}

}
