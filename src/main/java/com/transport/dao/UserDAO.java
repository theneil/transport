package com.transport.dao;

import com.transport.object.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO extends BaseDAO{
		
	public User getUser(String username)
	{
		User user;
		try
		{
			String sql = "select * from user where username = :username";
			SqlParameterSource params = new MapSqlParameterSource("username", username);
            ClassWrapperFactory factory = new ClassWrapperFactory();
            RowMapper<User> mapper = factory.getRowMapper(User.class);
			user = template.queryForObject(sql, params, mapper);
		}catch (Exception e)
		{
			user = new User();
            e.printStackTrace();
		}
		return user;
	}

}
