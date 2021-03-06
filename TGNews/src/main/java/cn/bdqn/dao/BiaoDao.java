package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Biao;

public interface BiaoDao {
	List<Biao> getAll(@Param(value="id")Integer id);
	int del(@Param(value="id")int id);
	Biao getByAddId(@Param(value="id")Integer id);
	int add(Biao biao);
	Biao getById(@Param(value="id")int id);
	int upd(Biao biao);
}
