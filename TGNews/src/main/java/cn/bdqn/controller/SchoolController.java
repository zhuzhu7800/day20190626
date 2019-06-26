package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Characteristic;
import cn.bdqn.pojo.Columns;
import cn.bdqn.pojo.School;

import cn.bdqn.service.SchoolService;

@Controller
@RequestMapping("sch")
public class SchoolController {
	@Resource(name="schoolService")
	private SchoolService schoolService;
	
	/**
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/getAll")
	private String getAll(HttpSession session) {
		List<School> list=schoolService.getAll();
		session.setAttribute("list", list);
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("/mhc/{valueId}")
	private String getById(@PathVariable int valueId) {
		List<School> list = schoolService.mhc(valueId);
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = schoolService.del(id);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("add")
	public String add(School school) {
		int res = schoolService.add(school);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		School sch = schoolService.getById(id);
		return JSON.toJSONString(sch);
	}
	
	@RequestMapping("upd")
	public String upd(School sch) {
		int res = schoolService.upd(sch);
		if(res>0) {
			return "houjsp/xxzl";
		}else {
			return "houjsp/xxzl";
		}
	}
}
