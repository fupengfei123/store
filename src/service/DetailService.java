package service;

import java.util.List;

import entity.Merchandise;

public interface DetailService {
	public List<Merchandise> search();

	public Merchandise searchById(int id);
}
