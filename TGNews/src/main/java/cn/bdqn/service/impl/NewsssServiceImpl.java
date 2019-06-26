package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.NewsssDao;
import cn.bdqn.pojo.Columnn;
import cn.bdqn.service.NewsssService;
@Service("newsssService")
public class NewsssServiceImpl implements NewsssService {
	@Resource(name="newsssDao")
	private NewsssDao newsssDao;
	public List<Columnn> getAll() {
		// TODO Auto-generated method stub
		return newsssDao.getAll();
	}
	public int add(Columnn columnn) {
		// TODO Auto-generated method stub
		return newsssDao.add(columnn);
	}
	public int del(int id) {
		// TODO Auto-generated method stub
		return newsssDao.del(id);
	}
	public Columnn getById(int id) {
		// TODO Auto-generated method stub
		return newsssDao.getById(id);
	}
	public int upd(Columnn columnn) {
		// TODO Auto-generated method stub
		return newsssDao.upd(columnn);
	}

}
