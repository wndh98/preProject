package com.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.model.dto.Emp;

import mybatis.factory.MybatisSqlSessionFactory;

public class EmpDao {
	
	SqlSession sqlsession;
	public EmpDao() {
		sqlsession=MybatisSqlSessionFactory.getSqlSessionFactory().openSession(true);
	}
	public List<Emp> findAll(){
		return sqlsession.selectList("emp.findAll");
	}
} 
