package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.News;
import cn.bdqn.service.NewswService;

@Controller
@RequestMapping("/newsw")
public class NewswController {
	
	@Resource(name="newswService")
	private NewswService newswService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	public String getAll() {
		List<News> list = newswService.getAll();
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/jxyj";
	}

	@RequestMapping("/add")
	public String add(News news) {
		int res = newswService.add(news);
		if(res>0) {
			return "redirect:../newsw/zhuye";
		}else {
			return "redirect:../newsw/zhuye";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/tiaojian/{id}")
	public String tiaojian(@PathVariable int id){
		if(id==0){
			List<News> list=newswService.getAll();
			return JSON.toJSONString(list);
		}else {
			List<News> list = newswService.getCon(id);
			return JSON.toJSONString(list);
		}
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res = newswService.del(id);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable int id){
		News ns = newswService.selById(id);
		return JSON.toJSONString(ns);
	}
	
	@ResponseBody
	@RequestMapping("/getSelect")
	public String getSelect() {
		List<News> list = newswService.getSelect();
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/updss")
	public String updss(News ns){
		int res = newswService.upd(ns);
		if(res>0) {
			return "redirect:../newsw/zhuye";
		}else {
			return "redirect:../newsw/zhuye";
		}
	}
	
}
