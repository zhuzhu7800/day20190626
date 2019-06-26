package cn.bdqn.service;

import java.util.List;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.Mechanism;

public interface MechanismService {
	List<Mechanism> getAll();
	int del(int id);
	int add(Mechanism mechanism);
	Mechanism getById(int id);
	int upd(Mechanism mechanism);
}
