package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.model.User;
import org.apache.ibatis.annotations.Mapper;

/**
    * @author Administrator
    * @description 针对表【user(用户)】的数据库操作Mapper
    * @createDate 2022-08-21 17:55:34
    * @Entity generator.domain.User
    */
@Mapper
 public interface UserMapper extends BaseMapper<User> {


 }

