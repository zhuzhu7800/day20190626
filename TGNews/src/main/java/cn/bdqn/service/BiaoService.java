package cn.bdqn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Biao;

public interface BiaoService {
	List<Biao> getAll(Integer id);
	int del(int id);
	Biao getByAddId(Integer id);
	int add(Biao biao);
	Biao getById(int id);
	int upd(Biao biao);
}
