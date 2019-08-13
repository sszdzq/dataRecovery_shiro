package com.zgzcwy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zgzcwy.dao.UserMapper;
import com.zgzcwy.entity.SysPermission;
import com.zgzcwy.entity.User;
import com.zgzcwy.service.UserService;

import javax.annotation.Resource;

/**
 * 
 * @ClassName:  UserServiceImpl   
 * @Description:  userService实现类
 * @author: Jayden  
 * @date:   2017年9月5日 上午8:54:48   
 *
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
    /**
     * 根据用户名称查询
     */
	@Override
	public User findUserByLoginname(String loginname) throws Exception{
		return userMapper.findUserByLoginname(loginname);
	}
    /**
     * 根据用户id查询权限信息
     * @return 
     */
	@Override
	public List<SysPermission> findPermissionListByUserId(Integer userid) throws Exception {
		return userMapper.findPermissionListByUserId(userid);
        		
	}
}
