package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.GuShiDao;
import cn.bdqn.pojo.GuShi;
import cn.bdqn.service.GuShiService;
@Service("guShiService")
public class GuShiServiceImpl implements GuShiService {
	@Resource(name="guShiDao")
	private GuShiDao guShiDao;
	public List<GuShi> getAll() {
		// TODO Auto-generated method stub
		return guShiDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return guShiDao.del(id);
	}

	public int add(GuShi gushi) {
		// TODO Auto-generated method stub
		return guShiDao.add(gushi);
	}

	public GuShi getById(int id) {
		// TODO Auto-generated method stub
		return guShiDao.getById(id);
	}

	public int upd(GuShi gushi) {
		// TODO Auto-generated method stub
		return guShiDao.upd(gushi);
	}

}
