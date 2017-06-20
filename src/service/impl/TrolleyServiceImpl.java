package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import service.TrolleyService;
import dao.TrolleyDao;
import entity.Merchandise;
import entity.Trolley;

@Service
public class TrolleyServiceImpl implements TrolleyService {

	@Autowired
	TrolleyDao tDao;

	@Override
	public List<Trolley> search(int userId) {
		return tDao.search(userId);
	}

	@Override
	public int add(int id, int count, int userId) {
		return tDao.add(id, count, userId);
	}

	@Override
	public List<Merchandise> show() {
		return tDao.searchAll();
	}

	@Override
	public int delete(int id) {
		return tDao.delete(id);
	}

	@Override
	public Trolley searchByMid(int id) {
		return tDao.searchByMid(id);
	}

	@Override
	public int addByDetail(int count, int merchandise_id) {
		return tDao.addByDetail(count,merchandise_id);
		
	}

	@Override
	public int update(int count, int merchandise_id) {
		return tDao.update(count,merchandise_id);
		
	}

}
