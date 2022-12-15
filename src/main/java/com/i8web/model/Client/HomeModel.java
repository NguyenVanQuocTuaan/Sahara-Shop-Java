package com.i8web.model.Client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.i8web.entity.Client.MapperHome;
import com.i8web.entity.Client.MapperProducts;
import com.i8web.entity.Client.Category;
import com.i8web.entity.Client.Home;
import com.i8web.entity.Client.MapperCategory;
import com.i8web.entity.Client.Home;

@Repository
public class HomeModel {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Category> GetDataCategory() {
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}
	
	public List<Home> GetDataProductHome1() {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM products WHERE product_id = 1";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
	
	public List<Home> GetDataProductHome2() {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM products WHERE product_id = 2";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
	
	public List<Home> GetDataProductNew() {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM products WHERE ghimNew = 1";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
	
	public List<Home> GetDataProductSale() {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM products WHERE ghimSale = 1";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
	
	public List<Home> GetSearchData(String key) {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM products WHERE name LIKE '%" + key + "%'";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
	public List<Home> GetDataHome() {
		List<Home> list = new ArrayList<Home>();
		String sql = "SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperHome());
		return list;
	}
}
