package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Interact;
import cn.bdqn.pojo.News;
import cn.bdqn.service.InteractService;

@Controller
@RequestMapping("/interact")
public class InteractController {
	
	@Resource(name="interactService")
	private  InteractService interactService;
	
	@ResponseBody
	@RequestMapping("/chaxun")
	public String chaxun() {
		List<Interact> list =  interactService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable Integer id) {
		Interact  in = interactService.selById(id);
		return JSON.toJSONString(in);
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res = interactService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/hdjl";
	}
	
	@RequestMapping("/upd")
	public String updss(Interact in){
		int res = interactService.upd(in);
		if(res>0) {
			return "redirect:../interact/zhuye";
		}else {
			return "redirect:../interact/zhuye";
		}
	}
}
