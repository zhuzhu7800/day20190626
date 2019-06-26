package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.ColumnsDao;
import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColumnsService;
@Service("columnsService")
public class ColumnsServiceImpl implements ColumnsService {

	@Resource(name="columnsDao")
	private ColumnsDao columnsDao;
	public List<Column> getAll() {
		// TODO Auto-generated method stub
		return columnsDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return columnsDao.del(id);
	}

	public int upd(Column column) {
		// TODO Auto-generated method stub
		return columnsDao.upd(column);
	}

	public Column selById(int id) {
		// TODO Auto-generated method stub
		return columnsDao.selById(id);
	}

	public int add(Column column) {
		// TODO Auto-generated method stub
		return columnsDao.add(column);
	}

}
