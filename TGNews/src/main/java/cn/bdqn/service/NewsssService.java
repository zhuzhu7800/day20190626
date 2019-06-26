package cn.bdqn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Columnn;

public interface NewsssService {
	/**
	 * 查询全部栏目
	 */
	List<Columnn> getAll();
	/**
	 * 添加栏目
	 */
	int add(Columnn columnn);
	/**
	 * 删除栏目
	 */
	int del(int id);
	/**
	 * 根据id查询文章信息
	 */
	Columnn getById(int id);
	/**
	 * 修改
	 */
	int upd(Columnn columnn);
}
