package cn.bdqn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Characteristic;

public interface CharacteristicService {
	//鏌ヨ
	List<Characteristic> getAll();
	//添加
	int add(Characteristic characteristic);
	//删除
	int del(int id);
	//修改第一步
	Characteristic getById(int id);
	//修改第二步
	int upd(Characteristic characteristic);
}
