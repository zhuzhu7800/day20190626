package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.SpecialDao;
import cn.bdqn.pojo.Special;
import cn.bdqn.service.SpecialService;
@Service("specialService")
public class SpecialServiceImpl implements SpecialService{
	@Resource(name="specialDao")
	private SpecialDao specialDao;
	public List<Special> getAll() {
		// TODO Auto-generated method stub
		return specialDao.getAll();
	}
	public int del(int id) {
		// TODO Auto-generated method stub
		return specialDao.del(id);
	}
	public int add(Special special) {
		// TODO Auto-generated method stub
		return specialDao.add(special);
	}
	public Special getById(int id) {
		// TODO Auto-generated method stub
		return specialDao.getById(id);
	}
	public int upd(Special special) {
		// TODO Auto-generated method stub
		return specialDao.upd(special);
	}
	
}
