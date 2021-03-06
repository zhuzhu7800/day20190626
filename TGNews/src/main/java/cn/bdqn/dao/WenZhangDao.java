package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.School;
import cn.bdqn.pojo.WenZhang;

public interface WenZhangDao {
	List<WenZhang> getAll();
	List<WenZhang> mhc(@Param(value="gu_id") int gu_id);
	int del(@Param(value="id")int id);
	int add(WenZhang zhang);
	WenZhang getById(@Param(value="id")int id);
	int upd(WenZhang zhang);
}
