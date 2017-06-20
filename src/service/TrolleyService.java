package service;

import java.util.List;

import entity.Merchandise;
import entity.Trolley;

public interface TrolleyService {
	
	public List<Trolley> search(int userId);
	public int add(int id,int count,int userId);
	public List<Merchandise> show();
	public int delete(int id);
	
	public Trolley searchByMid(int id);
	public int addByDetail(int count, int merchandise_id);
	public int update(int count, int merchandise_id);
}
