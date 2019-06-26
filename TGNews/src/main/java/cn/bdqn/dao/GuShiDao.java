package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.GuShi;

public interface GuShiDao {
	List<GuShi> getAll();
	int del(@Param(value="id")int id);
	int add(GuShi gushi);
	GuShi getById(@Param(value="id")int id);
	int upd(GuShi gushi);
}
