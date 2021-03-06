package dao;

import java.util.List;

import entity.Merchandise;

public interface MerchandiseDao {
	public List<Merchandise> search();
	public List<Merchandise> searchByCount(int begin,int num);

	public int searchMaxCount();
	public Merchandise searchById(int id);
}
