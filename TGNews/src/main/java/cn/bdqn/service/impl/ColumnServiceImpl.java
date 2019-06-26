package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.ColumnDao;
import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColunmService;
@Service("columnService")
public class ColumnServiceImpl implements ColunmService{
	
	@Resource(name="columnDao")
	private ColumnDao columnDao;
	
	public List<Column> getAll() {
		// TODO Auto-generated method stub
		return columnDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return columnDao.del(id);
	}

	public int upd(Column column) {
		// TODO Auto-generated method stub
		return columnDao.upd(column);
	}

	public Column selById(int id) {
		// TODO Auto-generated method stub
		return columnDao.selById(id);
	}

	public int add(Column column) {
		// TODO Auto-generated method stub
		return columnDao.add(column);
	}


}
