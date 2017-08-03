package com.vacomall.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.vacomall.entity.SysRoleMenu;

import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 * 角色菜单关联表 服务类
 * </p>
 *
 * @author GaoJun.Zhou
 * @since 2017-06-30
 */
public interface ISysRoleMenuService extends IService<SysRoleMenu> {

	/**
	 * 获取当前角色权限
	 * @param id
	 * @return
	 */
	List<Map<String, Object>> selectAuthByRoleId(String id);

	Set<String> findMenusByUid(String id);
	
}
