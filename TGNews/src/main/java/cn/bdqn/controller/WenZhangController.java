package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.Characteristic;
import cn.bdqn.pojo.School;
import cn.bdqn.pojo.WenZhang;
import cn.bdqn.service.BiaoService;
import cn.bdqn.service.SchoolService;
import cn.bdqn.service.WenZhangService;

@Controller
@RequestMapping("wen")
public class WenZhangController {
	@Resource(name="wenZhangService")
	private WenZhangService wenZhangService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	private String getAll() {
		List<WenZhang> list=wenZhangService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = wenZhangService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(WenZhang wenZhang) {
		int res = wenZhangService.add(wenZhang);
		if(res>0) {
			return "houjsp/jgsz3";
		}else {
			return "houjsp/jgsz3";
		}
	}
	@ResponseBody
	@RequestMapping("/mhc/{gu_id}")
	private String getById(@PathVariable int gu_id) {
		List<WenZhang> list = wenZhangService.mhc(gu_id);
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		WenZhang wenZhang = wenZhangService.getById(id);
		return JSON.toJSONString(wenZhang);
	}
	
	@RequestMapping("upd")
	public String upd(WenZhang wenZhang) {
		int res = wenZhangService.upd(wenZhang);
		if(res>0) {
			return "houjsp/jgsz3";
		}else {
			return "houjsp/jgsz3";
		}
	}
}
