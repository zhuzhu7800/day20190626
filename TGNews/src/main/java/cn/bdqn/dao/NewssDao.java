package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Columns;
import cn.bdqn.pojo.News;

public interface NewssDao {
	/**
	 * 查询全部文章
	 */
	List<Columns> getAll(@Param(value="id")Integer id);
	/**
	 * 模糊查询
	 */
	List<Columns>getMh(@Param(value="column")Integer column,@Param(value="parentId")Integer parentId);
	/**
	 * 删除
	 */
	int del(@Param(value="id")int id);
	/**
	 * 添加文章
	 */
	int add(Columns columns);
	/**
	 * 根据id查询文章信息
	 */
	Columns getById(@Param(value="id")int id);
	/**
	 * 修改
	 */
	int upd(Columns columns);
}
