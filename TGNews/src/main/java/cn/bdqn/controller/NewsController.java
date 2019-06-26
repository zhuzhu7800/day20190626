package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.News;
import cn.bdqn.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Resource(name="newsService")
	private NewsService newsService;
	
	@ResponseBody
	@RequestMapping("/chaxun")
	public String chaxun(){
		List<News> list = newsService.getAll();
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/index";
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res = newsService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("/add")
	public String add(News news) {
		int res = newsService.add(news);
		if(res>0) {
			return "redirect:../news/zhuye";
		}else {
			return "redirect:../news/zhuye";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/tiaojian/{id}")
	public String tiaojian(@PathVariable int id){
		if(id==0){
			List<News> list=newsService.getAll();
			return JSON.toJSONString(list);
		}else {
			List<News> list = newsService.getCon(id);
			return JSON.toJSONString(list);
		}
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable int id){
		News ns = newsService.selById(id);
		return JSON.toJSONString(ns);
	}
	
	@RequestMapping("/updss")
	public String updss(News ns){
		int res = newsService.upd(ns);
		if(res>0) {
			return "redirect:../news/zhuye";
		}else {
			return "redirect:../news/zhuye";
		}
	}
	
	@ResponseBody
	@RequestMapping("/getSelect")
	public String getSelect() {
		List<News> list = newsService.getSelect();
		return JSON.toJSONString(list);
	}
}
