package com.transport.dao;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.util.StringUtils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by Neil on 2014-05-04.
 */
public class ClassWrapperFactory {


    public RowMapper getRowMapper(Class clazz)
    {
        return generateNewRowMapper(clazz) ;
    }

    private RowMapper generateNewRowMapper(Class clazz){
        return new GenericRowMapper(clazz);
    }

    private class GenericRowMapper<T> implements RowMapper<T>{

        Field[] fields ;
        Class clazz;
        public GenericRowMapper(Class clazz)
        {
            fields = clazz.getDeclaredFields();
            this.clazz = clazz;
        }

        @Override
        public T mapRow(ResultSet rs, int rowNum) throws SQLException {
            T bean = null;
            try {
                bean = (T) clazz.newInstance();
                for(Field field:fields){
                    String methodName = "set" + StringUtils.capitalize(field.getName());
                    Method method;
                    if(field.getName().endsWith("Time")){
                        method = clazz.getMethod(methodName, Date.class);
                        method.invoke(bean,rs.getDate(field.getName()));
                    }else if(field.getName().endsWith("Id") || field.getName().endsWith("id")){
                        method = clazz.getMethod(methodName, Long.class);
                        method.invoke(bean,rs.getLong(field.getName()));
                    }else{
                        method = clazz.getMethod(methodName, String.class);
                        method.invoke(bean, rs.getString(field.getName()));
                    }
                }
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            return bean;
        }

    }
}
