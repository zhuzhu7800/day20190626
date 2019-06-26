package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.Mechanism;

public interface MechanismDao {
	List<Mechanism> getAll();
	int del(@Param(value="id")int id);
	int add(Mechanism mechanism);
	Mechanism getById(@Param(value="id")int id);
	int upd(Mechanism mechanism);
}
