package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.InteractDao;
import cn.bdqn.pojo.Interact;
import cn.bdqn.service.InteractService;
@Service("interactService")
public class InteractServiceImpl implements InteractService {
	@Resource(name="interactDao")
	private InteractDao interactDao;
	public List<Interact> getAll() {
		// TODO Auto-generated method stub
		return interactDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return interactDao.del(id);
	}

	public Interact selById(int id) {
		// TODO Auto-generated method stub
		return interactDao.selById(id);
	}

	public int upd(Interact in) {
		// TODO Auto-generated method stub
		return interactDao.upd(in);
	}

	
}
