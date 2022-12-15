package com.i8web.Service.Client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.i8web.entity.Client.Category;
import com.i8web.entity.Client.Home;
import com.i8web.model.Client.HomeModel;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private HomeModel homeModel;
	public List<Category> GetDataCategory(){
		return homeModel.GetDataCategory();
	}
	public List<Home> GetDataProductHome1() {
		return homeModel.GetDataProductHome1();
	}
	public List<Home> GetDataProductHome2() {
		return homeModel.GetDataProductHome2();
	}
	public List<Home> GetDataProductNew() {
		return homeModel.GetDataProductNew();
	}
	public List<Home> GetDataProductSale() {
		return homeModel.GetDataProductSale();
	}
	public List<Home> GetSearchData(String key) {
		return homeModel.GetSearchData(key);
	}
	public List<Home> GetDataHome(){
		return homeModel.GetDataHome();
	}
	
}
