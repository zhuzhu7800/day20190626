package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.WenZhangDao;
import cn.bdqn.pojo.WenZhang;
import cn.bdqn.service.WenZhangService;
@Service("wenZhangService")
public class WenZhangServiceImpl implements WenZhangService {
	@Resource(name="wenZhangDao")
	private WenZhangDao wenZhangDao;
	public List<WenZhang> getAll() {
		// TODO Auto-generated method stub
		return wenZhangDao.getAll();
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return wenZhangDao.del(id);
	}

	public int add(WenZhang zhang) {
		// TODO Auto-generated method stub
		return wenZhangDao.add(zhang);
	}

	public WenZhang getById(int id) {
		// TODO Auto-generated method stub
		return wenZhangDao.getById(id);
	}

	public int upd(WenZhang zhang) {
		// TODO Auto-generated method stub
		return wenZhangDao.upd(zhang);
	}

	public List<WenZhang> mhc(int gu_id) {
		// TODO Auto-generated method stub
		return wenZhangDao.mhc(gu_id);
	}

}
