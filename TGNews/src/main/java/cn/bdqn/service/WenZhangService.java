package cn.bdqn.service;

import java.util.List;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.School;
import cn.bdqn.pojo.WenZhang;

public interface WenZhangService {
	List<WenZhang> getAll();
	List<WenZhang> mhc(int gu_id);
	int del(int id);
	int add(WenZhang zhang);
	WenZhang getById(int id);
	int upd(WenZhang zhang);
}
