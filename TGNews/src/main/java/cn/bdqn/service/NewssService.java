package cn.bdqn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.pojo.Columns;
import cn.bdqn.pojo.News;

public interface NewssService {
	/**
	 * ��ѯȫ������
	 */
	List<Columns> getAll(Integer id);
	/**
	 * ģ����ѯ
	 */
	List<Columns>getMh(Integer column,Integer parentId);
	/**
	 * ��������
	 */
	int add(Columns columns);
	/**
	 * ɾ��
	 */
	int del(int id);
	/**
	 * ����id��ѯ������Ϣ
	 */
	Columns getById(int id);
	/**
	 * �޸�
	 */
	int upd(Columns columns);
}