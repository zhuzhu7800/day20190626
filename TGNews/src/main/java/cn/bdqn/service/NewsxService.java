package cn.bdqn.service;

import java.util.List;

import cn.bdqn.pojo.News;

public interface NewsxService {
	//查询
	List<News> getAll();
	
	//删除
	int del(int id);
	  
	//增加
	int add(News news);
	
	//条件
	List<News> getCon(int id);
	
	//id查
	News selById(int id);
	
	//修改
	int upd(News news);
	
	//xiala
	List<News> getSelect();
}
