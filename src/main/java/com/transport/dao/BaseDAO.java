package com.transport.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDAO {

	protected NamedParameterJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource)
	{
		template = new NamedParameterJdbcTemplate(dataSource);
	}

}
