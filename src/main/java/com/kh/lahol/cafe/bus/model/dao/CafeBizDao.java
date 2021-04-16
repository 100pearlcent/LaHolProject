package com.kh.lahol.cafe.bus.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.kh.lahol.cafe.bus.model.vo.Cafe;
import com.kh.lahol.cafe.bus.model.vo.Caphoto;
import com.kh.lahol.cafe.bus.model.vo.Coffee;

public interface CafeBizDao {
	// 카페 정보 insert
	public int insertCafeInfo(Cafe c);
	
	public List<Cafe> selectCafeList(String Id);

	public Cafe selectCafeInfo(String caCode);

	public int updateCafeInfo(Cafe c);

	public List<Coffee> selectCoffeeList(String caCode);

	public Cafe caWriteSelect(String Id);

	public int insertCoffee(Coffee co);

	public Coffee selectCoffeeInfo(String cfNo);

	public int updateCoffeInfo(Coffee co);

	public int coffeeDelete(String cfNo);

	public int cafeDelete(String caCode);

	//public int insetCafeInfoPhoto(ArrayList<Caphoto> photoList);
	
	

}
