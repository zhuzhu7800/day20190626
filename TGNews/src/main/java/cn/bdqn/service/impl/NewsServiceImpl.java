package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.NewsDao;
import cn.bdqn.pojo.News;
import cn.bdqn.service.NewsService;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

	@Resource(name="newsDao")
	private NewsDao newsDao;
	public List<News> getAll() {
		// TODO Auto-generated method stub
		return newsDao.getAll();
	}
	
	public int del(int id) {
		// TODO Auto-generated method stub
		return newsDao.del(id);
	}

	public int add(News news) {
		// TODO Auto-generated method stub
		return newsDao.add(news);
	}

	public List<News> getCon(int id) {
		// TODO Auto-generated method stub
		return newsDao.getCon(id);
	}

	public News selById(int id) {
		// TODO Auto-generated method stub
		return newsDao.selById(id);
	}

	public int upd(News news) {
		// TODO Auto-generated method stub
		return newsDao.upd(news);
	}

	public List<News> getSelect() {
		// TODO Auto-generated method stub
		return newsDao.getSelect();
	}

	

}
