package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.ColumnDao;
import cn.bdqn.dao.ColumnwDao;
import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColumnwService;
import cn.bdqn.service.ColunmService;
@Service("columnwService")
public class ColumnwServiceImpl implements ColumnwService{
	
	@Resource(name="columnwDao")
	private ColumnwDao columnwDao;
	
	public List<Column> getAll() {
		// TODO Auto-generated method stub
		return columnwDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return columnwDao.del(id);
	}

	public int upd(Column column) {
		// TODO Auto-generated method stub
		return columnwDao.upd(column);
	}

	public Column selById(int id) {
		// TODO Auto-generated method stub
		return columnwDao.selById(id);
	}

	public int add(Column column) {
		// TODO Auto-generated method stub
		return columnwDao.add(column);
	}


}
