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
import cn.bdqn.pojo.GuShi;
import cn.bdqn.pojo.School;
import cn.bdqn.service.BiaoService;
import cn.bdqn.service.GuShiService;
import cn.bdqn.service.SchoolService;

@Controller
@RequestMapping("gushi")
public class GuShiController {
	@Resource(name="guShiService")
	private GuShiService guShiService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	private String getAll() {
		List<GuShi> list=guShiService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = guShiService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(GuShi guShi) {
		int res = guShiService.add(guShi);
		if(res>0) {
			return "houjsp/jgsz2";
		}else {
			return "houjsp/jgsz2";
		}
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		GuShi guShi = guShiService.getById(id);
		return JSON.toJSONString(guShi);
	}
	
	@RequestMapping("upd")
	public String upd(GuShi guShi) {
		int res = guShiService.upd(guShi);
		if(res>0) {
			return "houjsp/jgsz2";
		}else {
			return "houjsp/jgsz2";
		}
	}
}
