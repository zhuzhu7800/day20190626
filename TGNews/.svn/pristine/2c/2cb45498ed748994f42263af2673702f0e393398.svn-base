package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.NewswDao;
import cn.bdqn.pojo.News;
import cn.bdqn.service.NewswService;
@Service("newswService")
public class NewswServiceImpl implements NewswService {
	@Resource(name="newswDao")
	private NewswDao newswDao;
	public List<News> getAll() {
		// TODO Auto-generated method stub
		return newswDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return newswDao.del(id);
	}

	public int add(News news) {
		// TODO Auto-generated method stub
		return newswDao.add(news);
	}

	public List<News> getCon(int id) {
		// TODO Auto-generated method stub
		return newswDao.getCon(id);
	}

	public News selById(int id) {
		// TODO Auto-generated method stub
		return newswDao.selById(id);
	}

	public int upd(News news) {
		// TODO Auto-generated method stub
		return newswDao.upd(news);
	}

	public List<News> getSelect() {
		// TODO Auto-generated method stub
		return newswDao.getSelect();
	}

}
