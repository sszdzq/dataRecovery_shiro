package com.zgzcwy.service;

import java.util.List;
import java.util.Map;

import com.zgzcwy.entity.SysPermission;
import com.zgzcwy.entity.User;
import org.springframework.stereotype.Service;

/**
 * 
 * @ClassName:  UserService   
 * @Description: userService接口类 
 * @author: Jayden  
 * @date:   2017年9月5日 上午8:50:40   
 *
 */
@Service
public interface UserService {
    //根据用户名称查询
	User findUserByLoginname(String loginname) throws Exception;
    //根据用户id查询权限信息
	List<SysPermission> findPermissionListByUserId(Integer userid) throws Exception;
}
