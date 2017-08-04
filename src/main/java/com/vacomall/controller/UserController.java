package com.vacomall.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.vacomall.bean.Rest;
import com.vacomall.entity.SysUser;
import com.vacomall.service.ISysUserService;
import com.vacomall.util.BaseUtil;

/**
 * 用户控制器
 * @author jameszhou
 *
 */
@Controller
@RequestMapping("/user")
public class UserController extends AdminController{

	@Autowired private ISysUserService sysUserService;
	
	/**
	 * JSON分页数据
	 * @param start
	 * @param size
	 * @param search
	 * @param sort
	 * @param order
	 * @param model
	 * @return
	 */
	@RequestMapping("/json")
	@ResponseBody
	public Map<String, Object> json (
			@RequestParam(value="page",defaultValue="1") Integer page,
			@RequestParam(value="rows",defaultValue="10") Integer size,
			String search,
			String sort,
			String order,
			Model model) {
		
		EntityWrapper<SysUser> ew = new EntityWrapper<SysUser>();
		if(StringUtils.isNotBlank(search)){
			ew.like("userName", search);
		}
		if(StringUtils.isNotBlank(sort)){
			ew.orderBy(sort, (StringUtils.isNotBlank(order) && order.toLowerCase().equals("asc")) ? true : false);
		}
		Page<SysUser> pageData = sysUserService.selectPage(new Page<SysUser>(page, size),ew);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rows", pageData.getRecords());
		map.put("total",pageData.getTotal());
		return map;
	}
	
	/**
	 * 用户列表
	 * @param current
	 * @param size
	 * @param search
	 * @param model
	 * @return
	 */
	/*@RequiresPermissions("listUser")*/
	@RequestMapping("/list")
	public String list (){
		return "user/list";
	}
	
	/**
	 * 新增用户
	 * @return
	 */
	@RequestMapping("/add")
	public String add(){
		return "user/add";
	}
	
	/**
	 * 执行新增用户
	 * @param sysUser
	 * @return
	 */
	@PostMapping("/doAdd")
	public String doAdd(SysUser sysUser){
		sysUser.setCreateTime(new Date());
		sysUser.setUserState(SysUser._1);
		sysUser.setPassword(BaseUtil.md51024Pwd(sysUser.getPassword(), sysUser.getUserName()));
		sysUserService.insert(sysUser);
		return redirectTo("/#user/list.shtml");
	}
	
	/**
	 * 编辑用户
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit")
	public String edit(String id,Model model){
		model.addAttribute("sysUser", sysUserService.selectById(id));
		return "user/edit";
	}
	

	/**
	 * 执行编辑用户
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/doEdit")
	public String edit(SysUser sysUser,Model model){
		
		if(StringUtils.isNotBlank(sysUser.getPassword())){
			sysUser.setPassword(BaseUtil.md51024Pwd(sysUser.getPassword(), sysUser.getUserName()));
		}else{
			sysUser.setPassword(null);
		}
		sysUserService.updateById(sysUser);
		return redirectTo("/#user/list.shtml");
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/del")
	@ResponseBody
	public Rest del(@RequestParam("ids[]") String[] ids){
		if(ArrayUtils.isEmpty(ids)){
			return Rest.failure("客户端传入对象id为空");
		}
		sysUserService.deleteBatchIds(Arrays.asList(ids));
		return Rest.ok();
	}
}
