package dao;

import java.util.List;

import entity.Merchandise;

public interface DetailDao {
	public List<Merchandise> search();

	public Merchandise searchById(int id);
}
