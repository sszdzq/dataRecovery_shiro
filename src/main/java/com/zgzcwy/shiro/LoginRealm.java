package com.zgzcwy.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.zgzcwy.entity.ActiveUser;
import com.zgzcwy.entity.SysPermission;
import com.zgzcwy.entity.User;
import com.zgzcwy.service.UserService;

/**
 * 
 * @ClassName:  LoginRealm   
 * @Description: 自定义realm 
 * @author: Administrator  
 * @date:   2017年9月27日 下午2:50:49   
 *
 */
public class LoginRealm extends AuthorizingRealm{
	@Autowired
	private UserService userService;
	// 设置realm的名称
		@Override
		public void setName(String name) {
			super.setName("loginRealm");
		}
    //用户授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//从 principals获取主身份信息
		//将getPrimaryPrincipal方法返回值转为真实身份类型（在上边的doGetAuthenticationInfo认证通过填充到SimpleAuthenticationInfo中身份类型），
		ActiveUser activeUser =  (ActiveUser) principals.getPrimaryPrincipal();
		//根据身份信息获取权限信息
		//从数据库获取到权限数据
		List<SysPermission> permissionList = null;
		try {
			permissionList=userService.findPermissionListByUserId(activeUser.getUserid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//单独定一个集合对象 
		List<String> permissions = new ArrayList<String>();
		if(permissionList!=null){
		   for(SysPermission sysPermission:permissionList){
		     //将数据库中的权限标签 符放入集合
		     permissions.add(sysPermission.getPercode());
					}
				}
		//查到权限数据，返回授权信息(要包括 上边的permissions)
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		//将上边查询到授权信息填充到simpleAuthorizationInfo对象中
		simpleAuthorizationInfo.addStringPermissions(permissions);

		return simpleAuthorizationInfo;
	}
    //用户认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// token是用户输入的用户名和密码 
				// 第一步从token中取出用户名
				String loginname = (String) token.getPrincipal();

				// 第二步：根据用户输入的loginname从数据库查询
				User user = null;
				try {
					user = userService.findUserByLoginname(loginname);
				} catch (Exception e1) {
					e1.printStackTrace();
				}

				// 如果查询不到返回null
				if(user==null){//
					return null;
				}
				// 从数据库查询到密码
				String password = user.getPassword();
				
				//盐
				String salt = user.getSalt();

				// 如果查询到返回认证信息AuthenticationInfo
				
				//activeUser就是用户身份信息
				ActiveUser activeUser = new ActiveUser();
				
				activeUser.setUserid(user.getUserid());
				activeUser.setLoginname(user.getLoginname());
				//将activeUser设置simpleAuthenticationInfo
				SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
						activeUser, password,ByteSource.Util.bytes(salt), this.getName());
				return simpleAuthenticationInfo;
	}
	    //清除缓存
		public void clearCached() {
			PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
			super.clearCache(principals);
		}

}
