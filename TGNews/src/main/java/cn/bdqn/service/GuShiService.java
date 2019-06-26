package cn.bdqn.service;

import java.util.List;

import cn.bdqn.pojo.GuShi;

public interface GuShiService {
	List<GuShi> getAll();
	int del(int id);
	int add(GuShi gushi);
	GuShi getById(int id);
	int upd(GuShi gushi);
}
