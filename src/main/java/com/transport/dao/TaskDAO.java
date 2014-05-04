package com.transport.dao;

import com.transport.object.Task;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class TaskDAO extends BaseDAO{
	
	public List<Task> getAllOpenTasks()
	{
		String sql = "Select * from task where currentState <> -1";
		return (List<Task>) template.queryForObject(sql, new MapSqlParameterSource(), new TaskWraper() );
	}
	
private static final class TaskWraper implements RowMapper<Task> {
		

		@Override
		public Task mapRow(ResultSet rs, int i) throws SQLException {
			Task task = new Task();

			return task;
		}
	}

}
