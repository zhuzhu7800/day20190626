package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Characteristic;

public interface CharacteristicDao {
	//查询全部
	List<Characteristic> getAll();
	//添加
	int add(Characteristic characteristic);
	//删除
	int del(@Param(value="id")int id);
	//修改第一步
	Characteristic getById(@Param(value="id")int id);
	//修改第二步
	int upd(Characteristic characteristic);
}	
