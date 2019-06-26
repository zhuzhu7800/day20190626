package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.School;

public interface SchoolDao {
	List<School> getAll();
	List<School> mhc(@Param(value="valueId") int valueId);
	int del(@Param(value="id")int id);
	int add(School school);
	School getById(@Param(value="id")int id);
	int upd(School school);
}
