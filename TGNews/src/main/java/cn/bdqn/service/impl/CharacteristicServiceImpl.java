package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.bdqn.dao.CharacteristicDao;
import cn.bdqn.pojo.Characteristic;
import cn.bdqn.service.CharacteristicService;
@Service("characteristicService")
public class CharacteristicServiceImpl implements CharacteristicService {
	@Resource(name="characteristicDao")
	private CharacteristicDao characteristicDao;
	
	public List<Characteristic> getAll() {
		return characteristicDao.getAll();
	}

	public int add(Characteristic characteristic) {
		// TODO Auto-generated method stub
		return characteristicDao.add(characteristic);
	}

	public int del(int id) {
		// TODO Auto-generated method stub
		return characteristicDao.del(id);
	}

	public Characteristic getById(int id) {
		// TODO Auto-generated method stub
		return characteristicDao.getById(id);
	}

	public int upd(Characteristic characteristic) {
		// TODO Auto-generated method stub
		return characteristicDao.upd(characteristic);
	}

}
