package cn.bdqn.dao;

import java.util.List;

import cn.bdqn.pojo.Column;

public interface ColumnwDao {
	List<Column> getAll();
	int del(int id);
	int upd(Column column);
	Column selById(int id);
	int add(Column column);
}
