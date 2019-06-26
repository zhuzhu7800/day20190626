package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.NewssDao;
import cn.bdqn.pojo.Columns;
import cn.bdqn.pojo.News;
import cn.bdqn.service.NewssService;
@Service("newssService")
public class NewssServiceImpl implements NewssService {
	
	@Resource(name="newssDao")
	private NewssDao newssDao;
	
	public List<Columns> getAll(Integer id) {
		// TODO Auto-generated method stub
		return newssDao.getAll(id);
	}

	public int add(Columns columns) {
		// TODO Auto-generated method stub
		return newssDao.add(columns);
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return newssDao.del(id);
	}

	public Columns getById(int id) {
		// TODO Auto-generated method stub
		return newssDao.getById(id);
	}

	public int upd(Columns columns) {
		// TODO Auto-generated method stub
		return newssDao.upd(columns);
	}

	public List<Columns> getMh(Integer column,Integer parentId) {
		// TODO Auto-generated method stub
		return newssDao.getMh(column, parentId);
	}

}
