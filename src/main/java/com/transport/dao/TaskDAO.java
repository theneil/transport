package com.transport.dao;

import com.transport.object.Task;
import com.transport.object.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class TaskDAO extends BaseDAO{

    private RowMapper<Task> mapper =
            new ClassWrapperFactory().getRowMapper(User.class);
	
	public List<Task> getAllOpenTasks()
	{
		String sql = "Select * from task where currentState <> -1";
		return (List<Task>) template.queryForObject(sql, new MapSqlParameterSource(),
               mapper);
	}
	


}
