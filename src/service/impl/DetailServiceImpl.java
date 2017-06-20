package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DetailDao;

import entity.Merchandise;
import service.DetailService;
@Service
public class DetailServiceImpl implements DetailService {
	@Autowired
	DetailDao detailDao;

	@Override
	public List<Merchandise> search() {
		
		return detailDao.search();
	}

	@Override
	public Merchandise searchById(int id) {
		return detailDao.searchById(id);
	}

}
