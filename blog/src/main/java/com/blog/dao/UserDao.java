package com.blog.dao;

import com.blog.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDao {
    @Select("select * from blog.t_user where username = #{username} and password = #{password}")
    User queryByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
