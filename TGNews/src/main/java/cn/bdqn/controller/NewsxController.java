package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.News;
import cn.bdqn.service.NewsxService;

@Controller
@RequestMapping("/newsx")
public class NewsxController {
	@Resource(name="newsxService")
	private NewsxService newsxService;
	
	
	@ResponseBody
	@RequestMapping("/chaxun")
	public String chaxun(){
		List<News> list = newsxService.getAll();
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/xxgk";
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res = newsxService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("/add")
	public String add(News news) {
		int res = newsxService.add(news);
		if(res>0) {
			return "redirect:../newsx/zhuye";
		}else {
			return "redirect:../newsx/zhuye";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/tiaojian/{id}")
	public String tiaojian(@PathVariable int id){
		if(id==0){
			List<News> list=newsxService.getAll();
			return JSON.toJSONString(list);
		}else {
			List<News> list = newsxService.getCon(id);
			return JSON.toJSONString(list);
		}
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable int id){
		News ns = newsxService.selById(id);
		return JSON.toJSONString(ns);
	}
	
	@RequestMapping("/updss")
	public String updss(News ns){
		int res = newsxService.upd(ns);
		if(res>0) {
			return "redirect:../newsx/zhuye";
		}else {
			return "redirect:../newsx/zhuye";
		}
	}
	
	@ResponseBody
	@RequestMapping("/getSelect")
	public String getSelect() {
		List<News> list = newsxService.getSelect();
		return JSON.toJSONString(list);
	}
}
