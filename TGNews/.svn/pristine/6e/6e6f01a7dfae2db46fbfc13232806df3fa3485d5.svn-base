package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Columnn;
import cn.bdqn.pojo.News;

public interface NewsssDao {
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
	int del(@Param(value="id")int id);
	/**
	 * 根据id查询文章信息
	 */
	Columnn getById(@Param(value="id")int id);
	/**
	 * 修改
	 */
	int upd(Columnn columnn);
}
