package com.zgzcwy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zgzcwy.entity.SysPermission;
import com.zgzcwy.entity.User;
/**
 * 
 * @ClassName:  UserMapper   
 * @Description: userMapper接口 
 * @author: Jayden  
 * @date:   2017年9月5日 上午8:55:13   
 *
 */
public interface UserMapper {

    /**
     * 根据用户名称查询
     * @param loginname
     * @return
     */
	User findUserByLoginname(@Param("loginname")String loginname);
    /**
     * 根据用户名称查询权限信息
     * @param userid
     * @return
     */
	List<SysPermission> findPermissionListByUserId(@Param("userid")Integer userid);

}
