package cn.bdqn.service;

import java.util.List;



import cn.bdqn.pojo.NeiRong;

public interface NeiRongService {
	List<NeiRong> getAll();
	int del(int id);
	int add(NeiRong nr);
	NeiRong getById(int id);
	int upd(NeiRong nr);
}
