package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MerchandiseDao;

import entity.Merchandise;
import service.ManchandiseService;

@Service
public class ManchandiseServiceImpl implements ManchandiseService {
	@Autowired
	MerchandiseDao mDao;
	
	@Override
	public List<Merchandise> search() {
		return mDao.search();
	}

	@Override
	public List<Merchandise> searchByCount(int begin, int num) {
		return mDao.searchByCount(begin,num);
	}

	@Override
	public int searchMaxCount() {
		return mDao.searchMaxCount();
	}

	@Override
	public Merchandise searchById(int id) {
		return mDao.searchById(id);
	}

	
	
}
