package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.SchoolDao;
import cn.bdqn.pojo.School;
import cn.bdqn.service.SchoolService;
@Service("schoolService")
public class SchoolServiceImpl implements SchoolService {
	@Resource(name="schoolDao")
	private SchoolDao schoolDao;

	public List<School> getAll() {
		// TODO Auto-generated method stub
		return schoolDao.getAll();
	}

	public List<School> mhc(int valueId) {
		// TODO Auto-generated method stub
		return schoolDao.mhc(valueId);
	}
	
	public int del(int id) {
		// TODO Auto-generated method stub
		return schoolDao.del(id);
	}

	public int add(School school) {
		// TODO Auto-generated method stub
		return schoolDao.add(school);
	}

	public School getById(int id) {
		// TODO Auto-generated method stub
		return schoolDao.getById(id);
	}

	public int upd(School school) {
		// TODO Auto-generated method stub
		return schoolDao.upd(school);
	}
	
}
