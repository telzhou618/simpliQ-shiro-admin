package com.vacomall.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.vacomall.entity.SysRoleMenu;
import com.vacomall.mapper.SysMenuMapper;
import com.vacomall.mapper.SysRoleMenuMapper;
import com.vacomall.service.ISysRoleMenuService;

/**
 * <p>
 * 角色菜单关联表 服务实现类
 * </p>
 *
 * @author GaoJun.Zhou
 * @since 2017-06-30
 */
@Service
public class SysRoleMenuServiceImpl extends ServiceImpl<SysRoleMenuMapper, SysRoleMenu> implements ISysRoleMenuService {

	@Autowired private SysRoleMenuMapper sysRoleMenuMapper;
	
	@Autowired private SysMenuMapper sysMenuMapper;
	 
	@Override
	public List<Map<String, Object>> selectAuthByRoleId(String id) {
		// TODO Auto-generated method stub
		return sysRoleMenuMapper.selectAuthByRoleId(id);
	}

	@Override
	public Set<String> findMenusByUid(String id) {
		// TODO Auto-generated method stub
		
		List<String> list =  sysMenuMapper.selectResourceByUid(id);
		return new HashSet<>(list);
	}
	
}
