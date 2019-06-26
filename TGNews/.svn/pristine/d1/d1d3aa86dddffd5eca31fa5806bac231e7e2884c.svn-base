package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import cn.bdqn.dao.NeiRongDao;
import cn.bdqn.pojo.NeiRong;
import cn.bdqn.service.NeiRongService;
@Service("neiRongService")
public class NeiRongServiceImpl implements NeiRongService {
	@Resource(name="neiRongDao")
	private NeiRongDao neiRongDao;
	public List<NeiRong> getAll() {
		// TODO Auto-generated method stub
		return neiRongDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return neiRongDao.del(id);
	}

	public int add(NeiRong nr) {
		// TODO Auto-generated method stub
		return neiRongDao.add(nr);
	}

	public NeiRong getById(int id) {
		// TODO Auto-generated method stub
		return neiRongDao.getById(id);
	}

	public int upd(NeiRong nr) {
		// TODO Auto-generated method stub
		return neiRongDao.upd(nr);
	}

}
