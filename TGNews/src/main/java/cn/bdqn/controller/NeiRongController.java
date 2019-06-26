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
import cn.bdqn.pojo.NeiRong;
import cn.bdqn.pojo.School;
import cn.bdqn.service.BiaoService;
import cn.bdqn.service.NeiRongService;
import cn.bdqn.service.SchoolService;

@Controller
@RequestMapping("nei")
public class NeiRongController {
	@Resource(name="neiRongService")
	private NeiRongService neiRongService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	private String getAll() {
		List<NeiRong> list=neiRongService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = neiRongService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(NeiRong nr) {
		int res = neiRongService.add(nr);
		if(res>0) {
			return "houjsp/xxzl3";
		}else {
			return "houjsp/xxzl3";
		}
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		NeiRong biao = neiRongService.getById(id);
		return JSON.toJSONString(biao);
	}
	
	@RequestMapping("upd")
	public String upd(NeiRong nr) {
		int res = neiRongService.upd(nr);
		if(res>0) {
			return "houjsp/xxzl3";
		}else {
			return "houjsp/xxzl3";
		}
	}
}
