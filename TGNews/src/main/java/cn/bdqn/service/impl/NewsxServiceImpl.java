package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.NewsxDao;
import cn.bdqn.pojo.News;
import cn.bdqn.service.NewsxService;
@Service("newsxService")
public class NewsxServiceImpl implements NewsxService {
	@Resource(name="newsxDao")
	private NewsxDao newsxDao; 
	public List<News> getAll() {
		// TODO Auto-generated method stub
		return newsxDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return newsxDao.del(id);
	}

	public int add(News news) {
		// TODO Auto-generated method stub
		return newsxDao.add(news);
	}

	public List<News> getCon(int id) {
		// TODO Auto-generated method stub
		return newsxDao.getCon(id);
	}

	public News selById(int id) {
		// TODO Auto-generated method stub
		return newsxDao.selById(id);
	}

	public int upd(News news) {
		// TODO Auto-generated method stub
		return newsxDao.upd(news);
	}

	public List<News> getSelect() {
		// TODO Auto-generated method stub
		return newsxDao.getSelect();
	}

}
