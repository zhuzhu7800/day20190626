package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Biao;
import cn.bdqn.pojo.Characteristic;
import cn.bdqn.pojo.School;
import cn.bdqn.service.BiaoService;
import cn.bdqn.service.SchoolService;

@Controller
@RequestMapping("biao")
public class BiaoController {
	@Resource(name="biaoService")
	private BiaoService biaoService;
	
	@ResponseBody
	@RequestMapping("/getAll/{id}")
	private String getAll(@PathVariable int id,HttpServletRequest request) {
		List<Biao> list = biaoService.getAll(id);
		request.setAttribute("list", list);
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = biaoService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(Biao biao) {
		int res = biaoService.add(biao);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		Biao biao = biaoService.getById(id);
		return JSON.toJSONString(biao);
	}
	
	@RequestMapping("upd")
	public String upd(Biao biao) {
		int res = biaoService.upd(biao);
		if(res>0) {
			return "houjsp/xxzl2";
		}else {
			return "houjsp/xxzl2";
		}
	}
}
