package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Special;

public interface SpecialDao {
	/**
	 * 查询全部
	 */
	List<Special> getAll();
	/**
	 * 删除
	 */
	int del(@Param(value="id")int id);
	/**
	 * 添加
	 */
	int add(Special special);
	/**
	 * 根据id查询信息
	 */
	Special getById(@Param(value="id")int id);
	/**
	 * 修改
	 */
	int upd(Special special);
}
