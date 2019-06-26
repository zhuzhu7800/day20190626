package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.ColumnwDao;
import cn.bdqn.dao.MechanismDao;
import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.Mechanism;
import cn.bdqn.service.MechanismService;
@Service("mechanismService")
public class MechanismServiceImpl implements MechanismService{
	@Resource(name="mechanismDao")
	private MechanismDao mechanismDao;
	public List<Mechanism> getAll() {
		// TODO Auto-generated method stub
		return mechanismDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return mechanismDao.del(id);
	}

	public int add(Mechanism mechanism) {
		// TODO Auto-generated method stub
		return mechanismDao.add(mechanism);
	}

	public Mechanism getById(int id) {
		// TODO Auto-generated method stub
		return mechanismDao.getById(id);
	}

	public int upd(Mechanism mechanism) {
		// TODO Auto-generated method stub
		return mechanismDao.upd(mechanism);
	}

}
