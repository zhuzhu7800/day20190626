package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Columnn;
import cn.bdqn.pojo.News;
import cn.bdqn.pojo.Special;
import cn.bdqn.service.NewssService;
import cn.bdqn.service.NewsssService;

@Controller
@RequestMapping("/newsss")
public class NewsssController {
	
	@Resource(name="newsssService")
	private NewsssService newsssService;
	
	@ResponseBody
	@RequestMapping("getAll")
	public String getAll() {
		List<Columnn> list = newsssService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = newsssService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(Columnn columnn) {
		int res = newsssService.add(columnn);
		if(res>0) {
			return "redirect:/newsss/zhuan";
		}else {
			return "redirect:/newsss/zhuan";
		}
	}
	
	@RequestMapping("/zhuan")
	public String zhuan() {
		return "houjsp/ztlm3";
	}
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		Columnn columnn = newsssService.getById(id);
		return JSON.toJSONString(columnn);
	}
	
	@RequestMapping("upd")
	public String upd(Columnn columnn) {
		int res = newsssService.upd(columnn);
		if(res>0) {
			return "redirect:/newsss/zhuan";
		}else {
			return "redirect:/newsss/zhuan";
		}
	}
}
